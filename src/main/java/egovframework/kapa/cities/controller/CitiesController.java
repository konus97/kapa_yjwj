package egovframework.kapa.cities.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.service.ImplementerService;

@Controller
@RequestMapping("/cities")
public class CitiesController {

	@Autowired
	DecisionService decisionService;
	
	@Autowired
	ImplementerService implementerService;
	
	/*
	 * cities
	 */
	@GetMapping("/announcement.do")
	public String citiesList(Model model) {
		
		//current page
		model.addAttribute("currentPage", "acceptance");
		
		return "cities/list";
	}
	
	@GetMapping("/announcement/view.do")
	public String citiesViewPage(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
        model.addAttribute("decisionId", decisionId);
        
        Decision decison = decisionService.getDecisionView(decisionId);
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
        model.addAttribute("avo", applicationVo);
        
        Decision_Notice decisionNotice = decisionService.getDecisionNoticeView(decisionId);
        model.addAttribute("decisionNotice", decisionNotice);
        
        
        
		return "cities/write";
	}
	
	
	@GetMapping("/announcement/write.do")
	public String citiesWritePage(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
        model.addAttribute("decisionId", decisionId);
        
        Decision decison = decisionService.getDecisionView(decisionId);
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
        model.addAttribute("avo", applicationVo);
        
        Decision_Notice decisionNotice = decisionService.getDecisionNoticeView(decisionId);
        model.addAttribute("decisionNotice", decisionNotice);
        
        
        
		return "cities/write";
	}
	
	
	


	
}
