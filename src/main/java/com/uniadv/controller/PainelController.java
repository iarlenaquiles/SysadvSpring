package com.uniadv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PainelController {

	@RequestMapping("/")
	public String home() {
		return "painel";
	}
}
