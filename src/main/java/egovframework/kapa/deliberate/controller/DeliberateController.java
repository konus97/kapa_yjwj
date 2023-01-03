package egovframework.kapa.deliberate.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.deliberate.dto.DeliberateDTO;
import egovframework.kapa.deliberate.dto.DeliberateDetailDTO;
import egovframework.kapa.deliberate.dto.DeliberateViewDTO;
import egovframework.kapa.deliberate.service.DeliberateService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.service.ImplementerService;

@Controller
@RequestMapping("/deliberate")
public class DeliberateController {

	
	@Autowired
	ImplementerService implementerService;

	@Autowired
	DecisionService decisionService;
	
	@Autowired
	DeliberateService deliberateService;
	
	/*
	 * deliberate list
	 */
	
	
	@GetMapping("/agenda.do")
	public String deliberateAgenda(Model model) {
		
		//current page
		model.addAttribute("currentPage", "agenda");
		
		return "deliberate/list";
	}
	
	
	/*
	 * deliberate view
	 */
	
	@GetMapping("/agenda/view.do")
	public String deliberateAgendaView(HttpServletRequest request,Model model) {
		
		System.out.println("여기도도독");
		Long selectDate =  Long.parseLong(request.getParameter("selectDate"));   
		
		
        //값 넣기
        List<Decision_AgendaDate> pagingResult = deliberateService.getDeliberateDecisionList(selectDate);
       
    	List<DeliberateViewDTO> formatterList = deliberateService.getDeliberateViewFormatter(pagingResult); 

    	
    	Long decisionId = pagingResult.get(0).getDecisionId();
    	Decision decison = decisionService.getDecisionView(decisionId);
    	int masterId = decison.getMasterID();
        List<Decision> csltList = implementerService.getLtisCslt(masterId);
		model.addAttribute("csltList", csltList);
		
    	model.addAttribute("formatterList", formatterList);
        
        //current page
		model.addAttribute("currentPage", "agenda");
		

		
		return "deliberate/view";
	}
	
	
	@GetMapping("/agenda/detail.do")
	public String deliberateAgendaDetail(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    
		//current page
		model.addAttribute("currentPage", "agenda");
		
		DeliberateViewDTO formatter = deliberateService.getDeliberateViewInfoFormatter(decisionId); 

    	model.addAttribute("formatter", formatter);
    	
		return "deliberate/detail";
	}

	
}
