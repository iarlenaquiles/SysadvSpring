package com.uniadv.controller;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;

public class ErroController implements ErrorController {

	@Override
	@RequestMapping("/error")
	public String getErrorPath() {
		return "error/generic_error";
	}

}
