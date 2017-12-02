package com.sysadv.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sysadv.model.Contato;
import com.sysadv.service.ContatoService;

@Controller
public class ContatoController {

	@Autowired
	private ContatoService contatoRepository;

	@PostMapping("/contatos")
	public String addContato(@Valid Contato contato, BindingResult result, Model model, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			model.addAttribute("contato", contato);
			model.addAttribute("acao", "/contatos");
			return "contato";
		}

		if (contato.getIdMongo() == null) {
			contatoRepository.save(contato);
			redirect.addFlashAttribute("mensagem", "Mensagem enviada com sucesso!");
		}

		return "redirect:/sysadv/contato";
	}

	@RequestMapping("/contatos")
	public String viewContatos(Model model) {
		List<Contato> lista = contatoRepository.getLista();
		model.addAttribute("contatos", lista);
		return "lista-contatos";
	}

	// Deletar contato
	@GetMapping("/contatos/{id}/delete")
	public String deleteContato(@PathVariable Integer id, RedirectAttributes redirect) {
		//Contato contato = new Contato(id);
		//contatoRepository.delete(contato);
		redirect.addFlashAttribute("mensagem", "Contato removido com sucesso!");
		return "redirect:/contatos";
	}

	@RequestMapping("/qtdContatos")
	public @ResponseBody Long qtdContatos() {
		//return contatoRepository.count();
		return null;
	}
}
