package com.uniadv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uniadv.model.User;
import com.uniadv.service.SecurityService;
import com.uniadv.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@RequestMapping(value = "/registro", method = RequestMethod.GET)
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registro";
	}

	@RequestMapping(value = "/registro", method = RequestMethod.POST)
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {

		if (bindingResult.hasErrors()) {
			return "registro";
		}

		userService.save(userForm);

		securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/registro";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@RequestMapping("/usuarios")
	public String listaUsuarios() {
		return "lista-usuarios";
	}

	@RequestMapping("/403")
	@ResponseBody
	public String erro() {
		return "erro";
	}

}
