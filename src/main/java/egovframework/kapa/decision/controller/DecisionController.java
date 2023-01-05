package egovframework.kapa.decision.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.decision.Const.ItemData;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.deliberate.dto.DeliberateViewDTO;
import egovframework.kapa.deliberate.service.DeliberateService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Decision_File;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.file.domain.DecisionFileVO;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.implementer.Const.DecisonState;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.domain.OwnerInfo;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.dto.OwnerInfoDTO;
import egovframework.kapa.implementer.service.ImplementerService;
import egovframework.kapa.util.StrUtil;

@Controller
@RequestMapping("/decision")
public class DecisionController {

	@Autowired
	DecisionService decisionService;
	
	@Autowired
	ImplementerService implementerService;

	@Autowired
	DeliberateService deliberateService;
	
	/*
	 * agenda
	 */
	
	@GetMapping("/agenda.do")
	public String agendaList(Model model) {
		
		//current page
		model.addAttribute("currentPage", "agenda");
		
		return "decision/agenda/list";
	}
	
	@GetMapping("/agenda/view.do")
	public String agendaDetail(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    
		//current page
		model.addAttribute("currentPage", "agenda");
		
		Decision decison = decisionService.getDecisionView(decisionId);
		model.addAttribute("groupEstablishedDate", decison.getGroupEstablishedDate());
  		
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
        
        //공통된 소유자 수 검색
        List<OwnerInfo> ownerList = implementerService.getOnwerInfoList(masterId);
        List<OwnerInfoDTO> formatterOwnerList = implementerService.getOwnerListFormatter(masterId,ownerList);
        
        model.addAttribute("ownerList", formatterOwnerList);
        System.out.println(ownerList);
        
		return "decision/agenda/view";
	}
	
	@GetMapping("/agenda/write.do")
	public String agendaWrite(Model model) {
		
		//current page
		model.addAttribute("currentPage", "agenda");
		return "decision/agenda/write";
	}
	
	@GetMapping("/register.do")
	public String agendaRegisterList(Model model) {
		
		//current page
		model.addAttribute("currentPage", "register");
		return "decision/register/list";
	}
	
	@GetMapping("/register/step1.do")
	public String agendaStep1(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    
		//current page
		model.addAttribute("currentPage", "register");
		
		Decision decison = decisionService.getDecisionView(decisionId);
		model.addAttribute("groupEstablishedDate", decison.getGroupEstablishedDate());
  		
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        model.addAttribute("masterId", masterId);
        
        List<Decision> csltList = implementerService.getLtisCslt(masterId);
      		model.addAttribute("csltList", csltList); 
      		
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
		ApplicationDTO applicationDTO = implementerService.makeImplementerViewFormatter(applicationVo);
        model.addAttribute("avo", applicationDTO);
        
        if(decisionId!=0L) {
      	
        	try {
        		
        		List<Decision_Date> dateList = decisionService.getDateList();
        		model.addAttribute("dateList", dateList);
        		
      			List<Decision_Cityplan> cityPlans = decisionService.getCityPlan(decisionId);
      			List<Decision_ConsultationDate> consultationDates =  decisionService.getConsultationDate(decisionId);
      			List<Decision_Target> targets = decisionService.getTarget(decisionId);
      			Decision decision = decisionService.getDecisionView(decisionId);
      			
      			model.addAttribute("groupEstablishedDate", decision.getGroupEstablishedDate());
      		
      	        Decision_Notice decisionNotice = decisionService.getDecisionNoticeView(decisionId);
      	        model.addAttribute("decisionNotice", decisionNotice);     	        
      	        
      			//합계 통계

      			Long amountA = decision.getAmountA();
      			Long amountB = decision.getAmountB();
      			Long amountC = decision.getAmountC();
      			Long landCnt = decision.getLandCnt();
      			Long landArea = decision.getLandArea();
      			Long landPrice = decision.getLandPrice();
      			Long objCnt = decision.getObjCnt();
      			Long objPrice = decision.getObjPrice();
      			Long goodwillCnt = decision.getGoodwillCnt();
      			Long goodwillPrice = decision.getGoodwillPrice();
      			
      			double average = (amountA+amountB+amountC)/3;
      			
      			DecimalFormat dc = new DecimalFormat("###,###,###,###.##");
      		    String amountAstr = dc.format(amountA);
      		    String amountBstr = dc.format(amountB);
      		    String amountCstr = dc.format(amountC);
      		  String landCntStr = dc.format(landCnt);
    		    String landAreaStr = dc.format(landArea);
        		String landPriceStr = dc.format(landPrice);
        		String objCntStr = dc.format(objCnt);
        		String objPriceStr = dc.format(objPrice);
        		String goodwillCntStr = dc.format(goodwillCnt);
        		String goodwillPriceStr = dc.format(goodwillPrice);
        		
      		    
      		    model.addAttribute("amountA", amountAstr);
      		    model.addAttribute("amountB", amountBstr);
      		    model.addAttribute("amountC", amountCstr);
      		  model.addAttribute("landCnt", landCntStr);
      		model.addAttribute("landArea", landAreaStr);
      		model.addAttribute("landPrice", landPriceStr);
      		model.addAttribute("objCnt", objCntStr);
      		model.addAttribute("objPrice", objPriceStr);
      		model.addAttribute("goodwillCnt", goodwillCntStr);
      		model.addAttribute("goodwillPrice", goodwillPriceStr);
      		    
      		    System.out.println(amountAstr);
      		    System.out.println(amountBstr);
      		    System.out.println(amountCstr);
      			    
      			model.addAttribute("averageAmount", dc.format(average));
      						
      			System.out.println(average);
      			
      			System.out.println("조회");
      			System.out.println(cityPlans);
      			System.out.println(consultationDates);
      			System.out.println(targets);	
      			model.addAttribute("avo", applicationDTO);
      			model.addAttribute("cityPlans", cityPlans);
      			model.addAttribute("consultationDates", consultationDates);
      			model.addAttribute("targets", targets);
      			model.addAttribute("decision", decision);
      		}catch (Exception e) {
      			e.printStackTrace();
      		}
      		
      		//
        	
        }
        
		return "decision/register/step1";
	}
	
	@GetMapping("/register/step2.do")
	public String agendaStep2(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    
		//current page
		model.addAttribute("currentPage", "register");
		
		List<Decision_Opinion> opinionList = decisionService.getOpinionList(decisionId);
		System.out.println(opinionList);
		
		Decision_Opinion insertNew = new Decision_Opinion();
		
		for(Decision_Opinion opinion : opinionList) {
			
			if(opinion.getCompletionCheck()==null||opinion.getCompletionCheck()==0) {
				insertNew=opinion;
			}
			
		}
		
		 //공고 상태
      	 int getType = insertNew.getType();
      	 String getTypeStr = "";
		
		 for(int i=0 ; i<ItemData.values().length ; i++) {
			 
	   		 int code = ItemData.values()[i].getCode();
	   		 
	   		 if(code==getType) {
	   			getTypeStr = ItemData.values()[i].getKrName();
	   			break;
	   		 }
        }
		 
		model.addAttribute("getType",getType);
		model.addAttribute("getTypeStr",getTypeStr);
		
		model.addAttribute("seqNo",insertNew.getSeqNo());
		
		System.out.println(getTypeStr);
		 
		System.out.println(insertNew);
		
		return "decision/register/step2";
	}
	
	@GetMapping("/register/step3.do")
	public String agendaStep3(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
		
	    model.addAttribute("decisionId", decisionId);
	    try {
	    	Decision decision = decisionService.getDecisionView(decisionId);
	    	
	    	int masterId = decision.getMasterID();
	    	List<Decision> csltList = implementerService.getLtisCslt(masterId);
			model.addAttribute("csltList", csltList);
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
		    
			    
						
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		//current page
		model.addAttribute("currentPage", "register");
		
		
		
		DeliberateViewDTO formatter = deliberateService.getDeliberateViewInfoFormatter(decisionId); 

    	model.addAttribute("formatter", formatter);
		return "decision/register/step3";
	}

	/*
	 * announcement
	 */
	
	
	@GetMapping("/announcement.do")
	public String announcementList(Model model) {
		
		//current page
		model.addAttribute("currentPage", "announcement");
		
		return "decision/announcement/list";
	}
	
	@GetMapping("/announcement/view.do")
	public String announcementDetail(HttpServletRequest request,Model model) {
		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
        model.addAttribute("decisionId", decisionId);
        
        Decision decison = decisionService.getDecisionView(decisionId);
        
        //버튼 활성화 체크 start
        boolean docCheck = false;
        
        if(decison.getDecisionState()==2) {
        	docCheck=true;
        }
        model.addAttribute("docCheck", docCheck);
        //버튼 활성화 체크 end
        
        int masterId = decison.getMasterID();
        List<Decision> csltList = implementerService.getLtisCslt(masterId);
		model.addAttribute("csltList", csltList);
       
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
		try {
			ApplicationDTO applicationDTO = implementerService.makeImplementerViewFormatter(applicationVo);
			
			List<Decision_Cityplan> cityPlans = decisionService.getCityPlan(decisionId);
			List<Decision_ConsultationDate> consultationDates =  decisionService.getConsultationDate(decisionId);
			List<Decision_Target> targets = decisionService.getTarget(decisionId);
			Decision decision = decisionService.getDecisionView(decisionId);
			List<Decision_File> decisionFiles = decisionService.getDecisionFileList(Long.valueOf(decision.getMasterID()));
			List<DecisionFileVO> fileList = new ArrayList();
			for (int i=0; i<decisionFiles.size(); i++) {
				FileVO file = decisionService.getFileByDeicisionFileSeq(decisionFiles.get(i).getFileSeq());	
				DecisionFileVO fileVO = new DecisionFileVO();
				fileVO.setFileDescription(decisionFiles.get(i).getFileDescription());
				fileVO.setSeqNo(decisionFiles.get(i).getFileSeq());
				fileVO.setFileType(decisionFiles.get(i).getFileType());
				fileVO.setFileNameOri(file.getFileNameOri());
				fileList.add(fileVO);
			}	
			
			System.out.println("fileLength!");
			System.out.println(decisionFiles.size());
			System.out.println(decisionFiles);
			//합계 통계
			Long amountA = decision.getAmountA();
			Long amountB = decision.getAmountB();
			Long amountC = decision.getAmountC();
			Long landCnt = decision.getLandCnt();
  			Long landArea = decision.getLandArea();
  			Long landPrice = decision.getLandPrice();
  			Long objCnt = decision.getObjCnt();
  			Long objPrice = decision.getObjPrice();
  			Long goodwillCnt = decision.getGoodwillCnt();
  			Long goodwillPrice = decision.getGoodwillPrice();
			double average = (amountA+amountB+amountC)/3;
			
			DecimalFormat dc = new DecimalFormat("###,###,###,###.##");
		    String amountAstr = dc.format(amountA);
		    String amountBstr = dc.format(amountB);
		    String amountCstr = dc.format(amountC);
		    String landCntStr = dc.format(landCnt);
  		    String landAreaStr = dc.format(landArea);
      		String landPriceStr = dc.format(landPrice);
      		String objCntStr = dc.format(objCnt);
      		String objPriceStr = dc.format(objPrice);
      		String goodwillCntStr = dc.format(goodwillCnt);
      		String goodwillPriceStr = dc.format(goodwillPrice);
      		
      		
		    model.addAttribute("amountA", amountAstr);
		    model.addAttribute("amountB", amountBstr);
		    model.addAttribute("amountC", amountCstr);
		    model.addAttribute("landCnt", landCntStr);
    		model.addAttribute("landArea", landAreaStr);
    		model.addAttribute("landPrice", landPriceStr);
    		model.addAttribute("objCnt", objCntStr);
    		model.addAttribute("objPrice", objPriceStr);
    		model.addAttribute("goodwillCnt", goodwillCntStr);
    		model.addAttribute("goodwillPrice", goodwillPriceStr);
		    
		    System.out.println(amountAstr);
		    System.out.println(amountBstr);
		    System.out.println(amountCstr);
			    
			model.addAttribute("averageAmount", dc.format(average));
						
			System.out.println(average);
			
			System.out.println("조회");
			System.out.println(cityPlans);
			System.out.println(consultationDates);
			
			model.addAttribute("avo", applicationDTO);
			model.addAttribute("cityPlans", cityPlans);
			model.addAttribute("consultationDates", consultationDates);
			model.addAttribute("targets", targets);
			model.addAttribute("decision", decision);
			model.addAttribute("decisionFiles", fileList);
		}catch (Exception e) {
			e.printStackTrace();
		}
        
        //필지 수
        int landCount = implementerService.getApplicationLandCount(masterId);
        model.addAttribute("landCount", landCount);
        
        //필지 소유자 수
        int landRightCount = implementerService.getApplicationLandRightCount(masterId);
        model.addAttribute("landRightCount", landRightCount);
 
        //지장물 수
        int objectCount = implementerService.getApplicationObjectCount(masterId);
        model.addAttribute("objectCount", objectCount);
        
        //지장물 소유자 수
        int objectRightCount = implementerService.getApplicationObjectRightCount(masterId);
        model.addAttribute("objectRightCount", objectRightCount);
        
		//current page
		model.addAttribute("currentPage", "announcement");
		
		return "decision/announcement/view";
	}
	
	@GetMapping("/announcement/write.do")
	public String announcementWrite(HttpServletRequest request,Model model) {
        
        Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
        model.addAttribute("decisionId", decisionId);
        
        Decision decison = decisionService.getDecisionView(decisionId);
        System.out.println(decison);
        
        int masterId = decison.getMasterID();
        
		ApplicationList applicationVo = implementerService.getApplicationView(masterId);
        model.addAttribute("avo", applicationVo);        
        
		//current page
		model.addAttribute("currentPage", "announcement");
		
		return "decision/announcement/write";
	}
	
	

	/*
	 * schedule
	 */
	
	@GetMapping("/schedule.do")
	public String scheduleList(Model model) {
		
		//current page
		model.addAttribute("currentPage", "schedule");
		
		return "decision/schedule/list";
	}
	
	

	
	

	
}
