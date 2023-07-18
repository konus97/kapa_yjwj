package egovframework.kapa.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/member")
public class MemberController {


	/*
	 * member
	 */
	
	//감정평가사
	@GetMapping("/appraiser/join.do")
	public String appraiserJoin(Model model) {
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "member/appraiser";
	}
	
	// 사업시행자 
	@GetMapping("/implementer/join.do")
	public String implementerJoin(Model model, @RequestParam(required=false) String caseNo) {
		
		if(caseNo != null) {
			model.addAttribute("caseNo",caseNo);
		}
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "member/implementer";
	}
	
	//시군구
	@GetMapping("/cities/join.do")
	public String citiesJoin(Model model) {
		
		//current page
//		model.addAttribute("currentPage", "acceptance");
		
		return "member/cities";
	}
	
	//재결관
	@GetMapping("/decision/join.do")
	public String decisionJoin(Model model, @RequestParam(required=false) String caseNo) {
		
		if(caseNo != null) {
			model.addAttribute("caseNo",caseNo);
		}
		return "member/decision";
	}
	
	//마이페이지
	@GetMapping("/mypage.do")
	public String implementerMypage(Model model) {
		
		return "member/mypage";
	}
	
	//마이페이지-내사건보기
	@GetMapping("/mypage/mycase.do")
	public String myCase(Model model) {
		
		return "member/mycase";
	}

	
}
