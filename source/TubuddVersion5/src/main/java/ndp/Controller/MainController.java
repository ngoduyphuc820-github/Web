package ndp.Controller;

import java.util.List;

import ndp.Entity.Place;
import ndp.Entity.Time;
import ndp.Entity.Tour;
import ndp.Entity.TourGuide;
import ndp.Entity.Tourist;
import ndp.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import ndp.Entity.Account;
import ndp.Entity.BookTour;

@Controller
public class MainController {
	 
	 @RequestMapping({ "/", "/home", "/index" })
	 public String home(Model model) {
	     return "index";
	 }
	 
	 @RequestMapping(value = "/register")
		public String register(Model model) {
			Account acc = new Account();
			model.addAttribute("account", acc);
			return "login/page-register";
		}
	 @RequestMapping(value = "/user")
	 public ModelAndView userProfile() {
		 ModelAndView modelAV = new ModelAndView("user-interface/user");
		 modelAV.addObject("user", new User());
		 modelAV.addObject("tourist", new Tourist());
		 modelAV.addObject("tourGuide", new TourGuide());
		 return modelAV;
	 }
	 @RequestMapping(value = "/tourist")
	 public ModelAndView touristProfile() {
		 ModelAndView modelAV = new ModelAndView("user-interface/tourist");
		 modelAV.addObject("user", new User());
		 modelAV.addObject("tourist", new Tourist());
		 return modelAV;
	 }
	 @RequestMapping(value = "/tourguide")
	 public ModelAndView tourguideProfile() {
		 ModelAndView modelAV = new ModelAndView("user-interface/tourguide");
		 modelAV.addObject("user", new User());
		 modelAV.addObject("tourGuide", new TourGuide());
		 return modelAV;
	 }
	 
	 @RequestMapping(value = "/post-tour")
	 public ModelAndView displayPost() {
		 ModelAndView modelAV = new ModelAndView("user-interface/post-tour");
		 modelAV.addObject("tour", new Tour());
		 return modelAV;
	 }
	 
	 @RequestMapping(value = "/book-tour")
	 public ModelAndView displayBookTour() {
		 ModelAndView modelAV = new ModelAndView("user-interface/book-tour");
		 modelAV.addObject("bookTour", new BookTour());
		 modelAV.addObject("tour", new Tour());
		 modelAV.addObject("user", new User());
		 modelAV.addObject("time", new Time());
		 return modelAV;
	 }
}
