package com.uniadv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.uniadv.model.Processo;
import com.uniadv.repository.ProcessoRepository;

@Controller
public class ProcessoController {
	
	@Autowired
	private ProcessoRepository processoRepository;

	@GetMapping("/processos")
	public String listaProcessos(Model model){
		Iterable<Processo> lista = processoRepository.findAll();
		model.addAttribute("processos", lista);
		return "lista-processos";
	}
}
