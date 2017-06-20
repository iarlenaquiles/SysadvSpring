package com.uniadv.controller;

import static com.uniadv.util.ConfigurationConstants.AUTENTICADO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.uniadv.model.Usuario;
import com.uniadv.service.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@PreAuthorize(AUTENTICADO)
	@GetMapping("/detalhes")
	public String detalheUsuario(Authentication auth, Model model) {
		Usuario usuario = usuarioService.buscarPorEmail(auth.getName());
		model.addAttribute("usuario", usuario);
		return "";
	}

}
