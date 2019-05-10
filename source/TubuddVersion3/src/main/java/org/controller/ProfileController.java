package org.controller;

import java.util.Random;

import org.dao.ProfileDAO;
import org.model.TourGuide;
import org.model.Tourist;
import org.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {

	@Autowired
	ProfileDAO profileDAO;
	
	@RequestMapping(value="/saveTourist", method = RequestMethod.POST)
	public ModelAndView saveTourist(@ModelAttribute("user") User user, 
			@ModelAttribute("tourist") Tourist tourist) {
		ModelAndView modelAV;
		//random codeUser
		Random r = new Random();
		int i = (int) r.nextInt(500);
		user.setCodeUser("TOURIST" + i);
		int number = profileDAO.saveTourist(user,tourist);//access DB
		if(number ==1) {
			 modelAV = new ModelAndView("redirect:/index");
		}else {
			 modelAV = new ModelAndView("user-interface/user");
		}
		return modelAV;
	}
	
	@RequestMapping(value="/saveTourGuide", method = RequestMethod.POST)
	public ModelAndView saveTourGuide(@ModelAttribute("user") User user, 
			@ModelAttribute("tourGuide") TourGuide tourGuide) {
		ModelAndView modelAV;
		//random codeUser
		Random r = new Random();
		int i = (int) r.nextInt(500);
		user.setCodeUser("TOURGUIDE" + i);
		int number = profileDAO.saveTourGuide(user,tourGuide);//access DB
		if(number ==1) {
			 modelAV = new ModelAndView("redirect:/index");
		}else {
			 modelAV = new ModelAndView("user-interface/user");
		}
		return modelAV;
	}
}
