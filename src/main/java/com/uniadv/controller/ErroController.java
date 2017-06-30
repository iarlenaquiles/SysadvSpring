package com.uniadv.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErroController implements ErrorController {
	@RequestMapping(value = "/error")
	public String renderErrorPage(HttpServletRequest httpRequest, Model model) {

		String errorMsg = "";
		int httpErrorCode = getErrorCode(httpRequest);

		switch (httpErrorCode) {
		case 400: {
			errorMsg = "Código Http de erro: 400. Bad Request";
			break;
		}
		case 401: {
			errorMsg = "Código Http de erro: 401. Unauthorized";
			break;
		}
		case 404: {
			errorMsg = "Código Http de erro: 404. Resource not found";
			break;
		}
		case 500: {
			errorMsg = "Código Http de erro: 500. Internal Server Error";
			break;
		}
		}
		model.addAttribute("erro", errorMsg);
		return "error";
	}

	private int getErrorCode(HttpServletRequest httpRequest) {
		return (Integer) httpRequest.getAttribute("javax.servlet.error.status_code");
	}

	@Override
	public String getErrorPath() {
		return "";
	}
}
