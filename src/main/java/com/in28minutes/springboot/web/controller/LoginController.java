package com.in28minutes.springboot.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.in28minutes.springboot.web.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {

	@Autowired
	LoginService loginService;
	
	@RequestMapping("/")
	public String redirect() {
		return "redirect:/login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginForm(@RequestParam(name = "errorMessage", required = false) String errorMessage, ModelMap model) {
		model.put("errorMessage",errorMessage);
		return "login";
	}
	
	@RequestMapping(value = "/welcome", method = RequestMethod.POST)
	public String login(@RequestParam String name,@RequestParam String password ,  ModelMap model) {
		
		boolean isValidUser = loginService.validateUser(name, password);
		
		if(!isValidUser) {
			
			return "redirect:/login?errorMessage=Invalid Credentials!!!";
		}
		
		model.put("name", name);
		return "welcome";
	}
	
}
