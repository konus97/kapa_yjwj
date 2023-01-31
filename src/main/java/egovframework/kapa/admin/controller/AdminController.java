package egovframework.kapa.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.kapa.admin.domain.AdminVO;
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

	@RequestMapping(value = "/edit.do", method = RequestMethod.GET)
	public String editUser(Model model, @RequestParam("seqNo") int seqNo) {
			
		AdminVO admin = new AdminVO();
		int type = adminService.getUserTypeBySeqNo(seqNo);
		
		if (type == 1) {	// 사업시행자
			admin = adminService.getImplementerBySeqNo(seqNo);
		}
		
		else if (type == 2) {	// 감정평가사
			admin = adminService.getAppraiserBySeqNo(seqNo);
		}
		else {
			admin = adminService.getUserBySeqNo(seqNo);	
		}
		
		
		//current page
		model.addAttribute("currentPage", "manage");
		model.addAttribute("adminVO", admin);
		
		return "admin/user_edit";
	}

}
