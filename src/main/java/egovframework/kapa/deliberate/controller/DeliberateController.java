package egovframework.kapa.deliberate.controller;

import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.deliberate.dto.DeliberateViewDTO;
import egovframework.kapa.deliberate.service.DeliberateService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Opinion;
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
    	Decision decision = decisionService.getDecisionView(decisionId);
    	Long landCnt = decision.getLandCnt();
			Long landArea = decision.getLandArea();
			Long landPrice = decision.getLandPrice();
			Long objCnt = decision.getObjCnt();
			Long objPrice = decision.getObjPrice();
			Long goodwillCnt = decision.getGoodwillCnt();
			Long goodwillPrice = decision.getGoodwillPrice();

			DecimalFormat dc = new DecimalFormat("###,###,###,###.##");
		    String landCntStr = dc.format(landCnt);
  		    String landAreaStr = dc.format(landArea);
      		String landPriceStr = dc.format(landPrice);
      		String objCntStr = dc.format(objCnt);
      		String objPriceStr = dc.format(objPrice);
      		String goodwillCntStr = dc.format(goodwillCnt);
      		String goodwillPriceStr = dc.format(goodwillPrice);

      		 model.addAttribute("landCnt", landCntStr);
     		model.addAttribute("landArea", landAreaStr);
     		model.addAttribute("landPrice", landPriceStr);
     		model.addAttribute("objCnt", objCntStr);
     		model.addAttribute("objPrice", objPriceStr);
     		model.addAttribute("goodwillCnt", goodwillCntStr);
     		model.addAttribute("goodwillPrice", goodwillPriceStr);

    	int masterId = decision.getMasterID();
        List<Decision> csltList = implementerService.getLtisCslt(masterId);
		model.addAttribute("csltList", csltList);
		
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
	    List<Decision_Opinion> opinionList = decisionService.getDecisionOpinionList(decisionId);
        model.addAttribute("opinionList", opinionList);
		//current page
		model.addAttribute("currentPage", "agenda");
		
		DeliberateViewDTO formatter = deliberateService.getDeliberateViewInfoFormatter(decisionId); 

    	model.addAttribute("formatter", formatter);
    	
		return "deliberate/detail";
	}
	
	@GetMapping("/agenda/pdfview.do")
	public String deliberatePdfView(HttpServletRequest request,Model model) {
	
		return "deliberate/pdfview";
	}
	
	}
	

