package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.AccountDAO;
import model.Account;

@Controller
public class Login {
	@Autowired
	static AccountDAO accountDAO;

	@RequestMapping(value = "/submitRegister", method = RequestMethod.POST)
	public String submitRegister(@ModelAttribute("account") Account acc) {
		int numReturn = accountDAO.registry(acc);
		if (numReturn == 1)
			return "index";
		else
			return "error";
	}
}
