package egovframework.kapa.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import egovframework.kapa.admin.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	AdminService adminService;

	@RequestMapping(value = "/user.do", method = RequestMethod.GET)
	public String user(Model model) {
				
		//current page
		model.addAttribute("currentPage", "manage");
		
		return "admin/user";
	}

	@RequestMapping(value = "/user_add.do", method = RequestMethod.GET)
	public String user_add(Model model) {
				
		//current page
		model.addAttribute("currentPage", "manage");
		
		return "admin/user_add";
	}

	@RequestMapping(value = "/law.do", method = RequestMethod.GET)
	public String lawList(Model model) {
				
		//current page
		model.addAttribute("currentPage", "law");
		
		return "admin/law";
	}

	@RequestMapping(value = "/addLaw.do", method = RequestMethod.GET)
	public String addLaw(Model model) {
				
		//current page
		model.addAttribute("currentPage", "addLaw");
		
		return "admin/law_write";
	}

}
