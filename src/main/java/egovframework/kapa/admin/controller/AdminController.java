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
	public String user() {
				
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "admin/user";
	}

	@RequestMapping(value = "/user_add.do", method = RequestMethod.GET)
	public String user_add() {
				
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "admin/user_add";
	}
	

}
