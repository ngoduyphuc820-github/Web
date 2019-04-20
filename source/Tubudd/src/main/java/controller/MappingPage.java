package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Account;

@Controller
public class MappingPage {
	
	@RequestMapping(value = {"/","/index"}, method = RequestMethod.GET)
	public String viewIndex() {
		return "index";
	}
	
	@RequestMapping(value = "/about")
	public String viewAbout() {
		return "user-interface/about";
	}
	
	@RequestMapping(value = "/register")
	public String register(Model model) {
		model.addAttribute("account", new Account());
		return "login/page-register";
	}
	
	@RequestMapping(value = "/error")
	public String error(Model model) {
		return "error";
	}
}
