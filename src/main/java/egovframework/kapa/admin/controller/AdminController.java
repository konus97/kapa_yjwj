package egovframework.kapa.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {


	/*
	 * member
	 */
	
	
	@GetMapping("/user.do")
	public String appraiserJoin(Model model) {
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "admin/user";
	}
	

}
