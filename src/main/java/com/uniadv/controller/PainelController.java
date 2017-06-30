package com.uniadv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.uniadv.repository.ClienteRepository;
import com.uniadv.repository.ProcessoRepository;

@Controller
public class PainelController {
	@Autowired
	ClienteRepository clienteRepository;
	
	@Autowired
	ProcessoRepository processoRepository;

	@RequestMapping("/")
	public String home(Model model) {
		model.addAttribute("qtd_cliente", clienteRepository.count());
		model.addAttribute("qtd_processo", processoRepository.count());
		return "painel";
	}
}
