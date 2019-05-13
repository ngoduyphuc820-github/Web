package ndp.Controller;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ndp.Entity.Account;

@Controller
public class DangNhapController {

	@Autowired
	SessionFactory sessionFactory;

	@GetMapping("/login/")

	public String DangNhap() {

		return "login";
	}

	@RequestMapping(path = "login/", method = RequestMethod.POST)
	@Transactional
	public String XuLyDangNhap(@RequestParam String username, @RequestParam String password, ModelMap modelMap) {

		Session session = sessionFactory.getCurrentSession();
		String sql = "From ACCOUNT";
		System.out.println("Call Database");
		List<Account> list = session.createQuery(sql).getResultList();
		for (Account account : list) {
			if (account.getUsername().equals(username) && account.getPassword().equals(password)) {
				System.out.println("GetRequest: " + username + ", " + password);
				System.out.println("Hibernate-ThanhCong: " + account.getUsername() + ", " + account.getPassword());
				System.out.println("---------------------------------");
				return "redirect:/";
			} else {
				System.out.println("GetRequest: " + username + ", " + password);
				System.out.println("Hibernate: " + account.getUsername() + ", " + account.getPassword());
				System.out.println("---------------------------------");
			}
		}
		System.out.println("-----------Login false------------");
		String error = "Username or Password is Valid";
		modelMap.addAttribute("error", error);
		return "login";
	}
}
