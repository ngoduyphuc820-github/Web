package org.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import org.dao.AccountDAO;
import org.model.Account;
import org.model.TourGuide;
import org.model.Tourist;
import org.model.User;

@Controller
@SessionAttributes("sessionAccount")
public class LoginController {

	@Autowired
	private AccountDAO accountDAO;

	@RequestMapping(value = "/submitRegister")
	@ResponseBody
	public ModelAndView submitRegister(@Valid @ModelAttribute("account") Account acc, BindingResult result) {
		ModelAndView modelAndView;
		//
		if (result.hasErrors()) {
			modelAndView = new ModelAndView("login/page-register");
		} else {
//			check account is available
			boolean checkAvailable = accountDAO.checkAvailable(acc);
			if (!checkAvailable) {
				acc.setState(1);
				accountDAO.registry(acc); //save in DB
				// lay ra account vua dk
				Account currentAccount = accountDAO.getAccount(acc.getUsername(), acc.getPassword());
				modelAndView = new ModelAndView("user-interface/user"); // set profile
				modelAndView.addObject("currentAccount", currentAccount);
				modelAndView.addObject("sessionAccount", currentAccount); //gan session = account
				
				modelAndView.addObject("user", new User());
				modelAndView.addObject("tourist", new Tourist());
				modelAndView.addObject("tourGuide", new TourGuide());
				
			} else {
				modelAndView = new ModelAndView("login/page-register");
				modelAndView.addObject("available", "Username or Password is available. Enter again.");
			}
		}
		return modelAndView;
	}

	public void getListAccount() {
	}

	public static void main(String[] args) {
		new LoginController().accountDAO.registry(new Account("thach6@gmail.com", "thach66666"));
	}
}
