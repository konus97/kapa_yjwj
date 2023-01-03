package egovframework.kapa.appraiser.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.service.ImplementerService;
import egovframework.kapa.util.StrUtil;

@Controller
@RequestMapping("/appraiser")
public class AppraiserController {

	@Autowired
	ImplementerService implementerService;
	
	@Autowired
	DecisionService decisionService;
	
	/*
	 * index
	 */
	@GetMapping("/")
	public String appraiserIndex(Model model) {
		return "redirect:appraiser/application.do";
	}
	
	
	/*
	 * application
	 */
	@GetMapping("/application.do")
	public String applicationPage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "application");
		
		return "appraiser/application/list";
	}
	
	
	/*
	 * application view
	 */
	@GetMapping("/application/view.do")
	public String decisionPage(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    
		//current page
		model.addAttribute("currentPage", "opinion");
		
	    Decision decison = decisionService.getDecisionView(decisionId);
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        model.addAttribute("masterId", masterId);
        
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
		ApplicationDTO applicationDTO = implementerService.makeImplementerViewFormatter(applicationVo);
        model.addAttribute("avo", applicationDTO);
		
        //필지 수
        int landCount = implementerService.getApplicationLandCount(masterId);
        model.addAttribute("landCount", landCount);
        
        //면적
        int totalAreaAmot = 0;
        
        //종전금액합계
        int totalCost = 0;
        String totalHitsStr = "";
        
        if(landCount>0) {
            //값 넣기
            List<ApplicationLand> landList = implementerService.getLandInfo(masterId);
            
            for(ApplicationLand applicationLand:landList) {
              int area_amot = applicationLand.getArea_amot();
              int bef_unit_cost = applicationLand.getBef_unit_cost();
              
              totalAreaAmot+=area_amot;
              
              totalCost+=bef_unit_cost;
            }
            
        }
        model.addAttribute("totalAreaAmot", totalAreaAmot);
        
        //필지 소유자 수
        int landRightCount = implementerService.getApplicationLandRightCount(masterId);
        model.addAttribute("landRightCount", landRightCount);
 
        //지장물 수
        int objectCount = implementerService.getApplicationObjectCount(masterId);
        model.addAttribute("objectCount", objectCount);
        
        if(objectCount>0) {
            //값 넣기
            List<ApplicationLand> goodsList = implementerService.getGoodsInfo(masterId);
            
            for(ApplicationLand applicationLand:goodsList) {      
              int bef_unit_cost = applicationLand.getBef_unit_cost();                       
              totalCost+=bef_unit_cost;
            }
            
        }
        
        //지장물 소유자 수
        int objectRightCount = implementerService.getApplicationObjectRightCount(masterId);
        model.addAttribute("objectRightCount", objectRightCount);
        
        if(totalCost>0) {
        	totalHitsStr = Integer.toString(totalCost);
        	totalHitsStr = StrUtil.convertToDecimalFormat(totalHitsStr);
        }
        
        model.addAttribute("totalCost", totalHitsStr);
        
        //필지 정보
        List<ApplicationLand> landList = implementerService.getLandInfo(masterId);
        List<ApplicationLandDTO> formatterLandList = implementerService.getLandListFormatter(landList);
        model.addAttribute("landList", formatterLandList);
        
        //지장물 정보
        List<ApplicationLand> goodList = implementerService.getGoodsInfo(masterId);
        List<ApplicationGoodsDTO> formatterGoodsList = implementerService.getGoodsListFormatter(goodList);
        model.addAttribute("goodList", formatterGoodsList);
		
        return "appraiser/application/view";
	}
	
	
	/*
	 * agenda
	 */
	@GetMapping("/agenda.do")
	public String agendaPage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "agenda");
		
		return "appraiser/agenda/list";
	}
	
	
	
}
