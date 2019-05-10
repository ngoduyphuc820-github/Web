package org.controller;

import java.util.List;

import org.dao.DepartmentDAO;
import org.model.Department;
import org.model.TourGuide;
import org.model.Tourist;
import org.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.model.Account;

@Controller
public class MainController {
	 @Autowired
	 private DepartmentDAO departmentDAO;
	 
	 @RequestMapping({ "/", "/home", "/index" })
	 public String home(Model model) {
	     return "index";
	 }
	 
	 @RequestMapping({ "/deptList" })
	 public String deptList(Model model) {
//	     departmentDAO.createDepartment("Dept Name", "Dept Location");
	 
	     List<Department> list = departmentDAO.listDepartment();
	     for (Department dept : list) {
	         System.out.println("Dept No " + dept.getDeptNo());
	     }
	     model.addAttribute("departments", list);
	     return "deptList";
	 }
	 
	 @RequestMapping("/addDepart")
	 public String viewAddPage(Model model) {
		 model.addAttribute("dept", new Department());
		 return "addDepart";
	 }
	 
	 @RequestMapping("/add")
	 public String addDept(@ModelAttribute("dept") Department dept, Model model) {
		 departmentDAO.createDepartment(dept.getDeptName(), dept.getLocation());
		 return "redirect:/deptList";
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
}
