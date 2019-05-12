package ndp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DangNhapController {

	@GetMapping("login/")
	public String DangNhap() {

		return "login";
	}

	@RequestMapping(path = "login/", method = RequestMethod.POST)
	public String XuLyDangNhap(@RequestParam String username, @RequestParam String password, ModelMap modelMap) {

		String name = "ngoduyphuc820@gmail.com";
		String pass = "0903366318Phuc";

		if (name.equals(username) && pass.equals(password)) {
			return "redirect:/";
		} else {
			modelMap.addAttribute("error", "Username or password is incorect");
			return "login";
		}
	}
}
