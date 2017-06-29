package com.uniadv.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.uniadv.model.User;
import com.uniadv.service.SecurityService;
import com.uniadv.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	// Vai para tela de adição do usuario
	@GetMapping("/usuarios/add")
	public String insereForm(Model model) {
		model.addAttribute("usuario", new User());
		model.addAttribute("acao", "/usuarios");
		return "inserir-usuario";
	}

	// Salvar usuário no banco
	@PostMapping("/usuarios")
	public String addUsuario(@Valid User usuario, BindingResult result, Model model, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			model.addAttribute("usuario", usuario);
			model.addAttribute("acao", "/usuarios");
			if (usuario.getId() == null) {
				return "inserir-usuario";
			} else {
				return "editar-usuario";
			}
		}

		if (usuario.getId() == null) {
			userService.save(usuario);
			securityService.autologin(usuario.getUsername(), usuario.getPasswordConfirm());
			redirect.addFlashAttribute("mensagem", "Usuário inserido com sucesso!");
		} else {
			userService.save(usuario);
			redirect.addFlashAttribute("mensagem", "Usuário atualizado com sucesso!");
		}
		return "redirect:/usuarios";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Usuário ou senha estão inváligos.");

		if (logout != null)
			model.addAttribute("message", "Deslogou");

		return "login";
	}

	@RequestMapping("/usuarios")
	public String listaUsuarios(Model model) {
		Iterable<User> lista = userService.getLista();
		model.addAttribute("usuarios", lista);
		return "lista-usuarios";
	}

	@RequestMapping("/403")
	@ResponseBody
	public String erro() {
		return "erro";
	}

}
