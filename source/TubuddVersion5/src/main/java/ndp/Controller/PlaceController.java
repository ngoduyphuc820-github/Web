package ndp.Controller;

import java.util.List;

import ndp.Dao.PlaceDAO;
import ndp.Entity.Town;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlaceController {

	@Autowired
	PlaceDAO placeDAO;
	
	/* 
	@RequestMapping(name = "/chooseTown")
	@ResponseBody
	public ModelAndView chooseTown(@RequestParam int idCity) {
		System.out.println("a");
		ModelAndView modelAV = new ModelAndView("user-interface/user");
		List<Town> list = placeDAO.listTownWithCity(idCity);
		modelAV.addObject("listTown", list);
		System.out.println("c");
		return modelAV;
	}
	*/
}
