package egovframework.kapa.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {


	/*
	 * member
	 */
	
	
	@GetMapping("/appraiser/join.do")
	public String appraiserJoin(Model model) {
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "member/appraiser";
	}
	

	@GetMapping("/implementer/join.do")
	public String implementerJoin(Model model) {
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "member/implementer";
	}
	
	@GetMapping("/cities/join.do")
	public String citiesJoin(Model model) {
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "member/cities";
	}
	
	

	
}
