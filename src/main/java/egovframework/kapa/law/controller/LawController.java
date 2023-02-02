package egovframework.kapa.law.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.kapa.law.domain.LawVO;
import egovframework.kapa.law.service.LawService;

@Controller
@RequestMapping("/law")
public class LawController {
	// not use yet
	@Autowired
	LawService lawService;
	
	@RequestMapping(value = "/aalaw.do", method = RequestMethod.GET)
	public String lawList(Model model) {
				
		//current page
		model.addAttribute("currentPage", "law");
		
		return "admin/law";
	}

	@RequestMapping(value = "/view.do", method = RequestMethod.GET)
	public String viewLaw(Model model, @RequestParam("viewSeq") int seq_no) {
		
		LawVO law = lawService.getViewLaw(seq_no);
		//current page
		model.addAttribute("currentPage", "viewLaw");
		model.addAttribute("law", law);
		
		return "admin/law_write";
	}

	@RequestMapping(value = "/view_board.do", method = RequestMethod.GET)	// 토지수용제도안내 - 관련법령 - 상세보기페이지
	public String viewBoardLaw(Model model, @RequestParam("viewSeq") int seq_no) {
		
		LawVO law = lawService.getViewLaw(seq_no);
		//current page
		model.addAttribute("currentPage", "viewLaw");
		model.addAttribute("law", law);
		
		return "land/relevant/viewLaw";
	}

}
