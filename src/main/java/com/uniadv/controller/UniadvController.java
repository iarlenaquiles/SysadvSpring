package com.uniadv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UniadvController {

	@RequestMapping("/uniadv")
	public String uniadv(){
		return "uniadv";
	}
	
	@RequestMapping("/uniadv/sobre")
	public String sobre(){
		return "sobre";
	}
}
