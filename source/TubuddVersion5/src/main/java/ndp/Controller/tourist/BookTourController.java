package ndp.Controller.tourist;

import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import ndp.Dao.ProfileDAO;
import ndp.Dao.TourDAO;
import ndp.Entity.BookTour;
import ndp.Entity.Time;
import ndp.Entity.Tour;
import ndp.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes(value = "booktourSSID")
public class BookTourController {

	@Autowired
	TourDAO tourDAO;
	
	@Autowired
	ProfileDAO profileDAO;
	
	@RequestMapping(value = "/confirmBookTour")
	public ModelAndView confirm(@ModelAttribute("bookTour") BookTour bookTour, @ModelAttribute("user")User user,
				@ModelAttribute("time") Time time, @ModelAttribute("tour") Tour tour,BindingResult result) {
		ModelAndView modelAV ;
		if(result.hasErrors()) {
			modelAV = new ModelAndView("redirect:/user-interface/book-tour");
		}else {
			modelAV = new ModelAndView("user-interface/confirm-book-tour");
			//cho nay sau nay if else ... co login
			user.setIdAccount(1);
			user.setIdRole(4);
			user.setCodeUser("USER"+ randomNum());
			//bookTour.setIdTourist(idTourist);// chua set
//			bookTour.setIdTour(tour.getIdTour());// chua set
//			bookTour.setCost(tour.getPrice());// chua set
			bookTour.setIdTourist(1);
			bookTour.setIdTour(16);
			bookTour.setCost(500);
			modelAV.addObject("bookTour", bookTour);
			modelAV.addObject("tour",tour);
			modelAV.addObject("user", user);
			modelAV.addObject("time", time);
			
			modelAV.addObject("booktourSSID",tour.getIdTour());
		}
		return modelAV;
	}
	
	

	@RequestMapping(value = "/bookTour")
	public ModelAndView bookTour(@ModelAttribute("bookTour") BookTour bookTour,
				@ModelAttribute("time") Time time, @ModelAttribute("user") User user) {
		System.out.println(bookTour.toString());
		System.out.println(user.toString());
		ModelAndView modelAV;
		//save user guest;
		profileDAO.saveUser(user);
		//save booktour , time
		int number = tourDAO.bookTour(bookTour,time);
		if(number == 1) {
			modelAV = new ModelAndView("redirect:/index");//sau nay se quay ve trang list
			modelAV.addObject("bookSuccess", "Book Tour success");
		}else {
			modelAV = new ModelAndView("redirect:/user-interface/book-tour");//sau nay se quay ve trang list
		}
		
		return modelAV;
	}
	
	private int randomNum() {
		Random r = new Random();
		int i = r.nextInt(500);
		return i;
	}
}
