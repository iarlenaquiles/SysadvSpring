package com.sysadv.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sysadv.model.Contato;
import com.sysadv.model.Departamento;
import com.sysadv.service.DepartamentoService;

@Controller
public class SysadvController {

	@Autowired
	private DepartamentoService departamentoRepository;
	
	@RequestMapping("/sysadv")
	public String uniadv(){
		return "sysadv";
	}
	
	@RequestMapping("/sysadv/sobre")
	public String sobre(){
		return "sobre";
	}
	
	@RequestMapping("/sysadv/contato")
	public String contato(Model model){
		List<Departamento> depts = departamentoRepository.getLista();
		model.addAttribute("contato", new Contato());
		model.addAttribute("acao", "/contatos");
		model.addAttribute("departamentos", depts);
		return "contato";
	}
}
 