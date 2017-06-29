package com.uniadv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PainelController {
	
	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("qtd_processo", 10);
		model.addAttribute("qtd_cliente", 10);
		return "painel";
	}
}
