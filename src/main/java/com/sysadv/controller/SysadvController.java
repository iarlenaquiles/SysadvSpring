package com.sysadv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
 