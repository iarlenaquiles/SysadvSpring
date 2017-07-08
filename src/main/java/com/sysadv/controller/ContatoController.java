package com.sysadv.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sysadv.model.Contato;
import com.sysadv.repository.ContatoRepository;

@Controller
public class ContatoController {

	@Autowired
	private ContatoRepository contatoRepository;

	@PostMapping("/contatos")
	public String addContato(@Valid Contato contato, BindingResult result, Model model, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			model.addAttribute("contato", contato);
			model.addAttribute("acao", "/contatos");
			return "contato";
		}

		if (contato.getId() == null) {
			contatoRepository.save(contato);
			redirect.addFlashAttribute("mensagem", "Mensagem enviada com sucesso!");
		}
		
		return "redirect:/sysadv/contato";
	}
}
