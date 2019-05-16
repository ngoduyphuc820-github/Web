package ndp.Controller.tourguide;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.servlet.http.HttpSession;

import ndp.Dao.TourDAO;
import ndp.Entity.Place;
import ndp.Entity.Time;
import ndp.Entity.Tour;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManagePostTourController {

	@Autowired
	TourDAO tourDAO;

	private static final String UPLOAD_DIRECTORY = "D:\\eclipse-workspace\\TubuddVersion3\\src\\main\\webapp\\WEB-INF\\images\\videos";

	@RequestMapping(value = "/postTour", method = RequestMethod.POST)
	public ModelAndView postTour(@ModelAttribute("tour") Tour tour, BindingResult result,
			@RequestParam CommonsMultipartFile file, HttpSession session) {
		ModelAndView modelAV;
		Random r = new Random();
		int i = (int) r.nextInt(500);
		tour.setCodeTour("TOUR" + i);

		tour.setVideo(uploadVideo(file, session));// set video link
		int number = tourDAO.postTour(tour);// access DB
		if (number == 1) {
			modelAV = new ModelAndView("redirect:/index");
		} else {
			modelAV = new ModelAndView("user-interface/post-tour");
			modelAV.addObject("tour", new Tour());
		}

		return modelAV;
	}

	private String uploadVideo(CommonsMultipartFile file, HttpSession session)  {
		String fileName;
		String path;
		try {

			path = session.getServletContext().getRealPath("/");

			fileName = file.getOriginalFilename();

			byte bar[] = file.getBytes();
			BufferedOutputStream bos = new BufferedOutputStream(
					new FileOutputStream(UPLOAD_DIRECTORY + "\\" + fileName));
			bos.write(bar);
			bos.flush();
			bos.close();
			System.out.println(UPLOAD_DIRECTORY + "\\" + fileName);
			return fileName;
		} catch (IOException fe) {
			System.out.println(fe.getMessage());
			return null;
		}
	}

}
