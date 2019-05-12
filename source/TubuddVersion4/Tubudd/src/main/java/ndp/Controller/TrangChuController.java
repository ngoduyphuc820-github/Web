package ndp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TrangChuController {
	
	@RequestMapping("/")
	@ResponseBody
	public String TrangChu() {
		return "trangchu";
	}

}
