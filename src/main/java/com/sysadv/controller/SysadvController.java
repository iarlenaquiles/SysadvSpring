package com.sysadv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sysadv.model.Contato;

@Controller
public class SysadvController {

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
		model.addAttribute("contato", new Contato());
		model.addAttribute("acao", "/contatos");
		return "contato";
	}
}
 