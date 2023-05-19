package egovframework.kapa.deliberate.controller;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Consult;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.implementer.service.ImplementerService;
import egovframework.kapa.util.PDFConverter;

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
		
		Long selectDate =  Long.parseLong(request.getParameter("selectDate"));   
		
		
        //값 넣기
        List<Decision_AgendaDate> pagingResult = deliberateService.getDeliberateDecisionList(selectDate); //심의날짜에 따른 심의안건 친구들
       
    	List<DeliberateViewDTO> formatterList = deliberateService.getDeliberateViewFormatter(pagingResult); 
    	
    	List<Long> decisionIdList = new ArrayList<>();
    	
    	
    	for(int i=0; i<pagingResult.size(); i++) {
    		decisionIdList.add(i, pagingResult.get(i).getDecisionId());
    	}
        
	    List<Decision_Opinion> opinionList = decisionService.getDeliberateOpinionList(decisionIdList);
	    List<Decision_Opinion> typeListOld = decisionService.getDeliberateOpinionTypeList(decisionIdList);
	    List<Decision_Opinion> registerFileList = decisionService.getDeliberateRegisterStepFile(decisionIdList);
	    model.addAttribute("registerFileList", registerFileList);
        model.addAttribute("opinionList", opinionList);
        List<Decision_Opinion> typeList = new ArrayList<>();
        String getTypeStr = "";
        
        for(Decision_Opinion item : typeListOld) {
        	Decision_Opinion op = new Decision_Opinion();
        	op.setDecisionId(item.getDecisionId());
        	op.setOpinionText(item.getOpinionText());
        	op.setRelatedLaws2(item.getRelatedLaws2());
        	op.setReviewOpinion(item.getReviewOpinion());
        	op.setOpinionType(item.getOpinionType());
        	
        	 int getType = item.getOpinionType();
         	 
    		 for(int i=0 ; i<ItemData.values().length ; i++) {
    			 
    	   		 int code = ItemData.values()[i].getCode();
    	   		 
    	   		 if(code==getType) {
    	   			getTypeStr = ItemData.values()[i].getKrName();
    	   			break;
    	   		 }
            }
    		op.setGetTypeStr(getTypeStr);
    	
       	
        	typeList.add(op);
		 
        }
        System.out.println("=======================★=========================");
        System.out.println(typeList);
        System.out.println("=================================================");
        
        model.addAttribute("typeList", typeList);
    	

    	Long decisionId = pagingResult.get(0).getDecisionId();

		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    
    	Decision decision = decisionService.getDecisionView(pagingResult.get(0).getDecisionId());
    	
    	
    	
    	//List<Decision_Opinion> opinionList = decisionService.getDecisionOpinionList(decisionId);
    	//model.addAttribute("opinionList", opinionList);
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
		
		
    	model.addAttribute("formatterList", formatterList);
        
        //current page
		model.addAttribute("currentPage", "agenda");
		
		/*
		 * com.aspose.html.HTMLDocument document = new
		 * com.aspose.html.HTMLDocument("view.jsp"); try { // ImageSaveOptions 초기화
		 * System.out.println("gdgd"); com.aspose.html.saving.ImageSaveOptions options =
		 * new com.aspose.html.saving.ImageSaveOptions(com.aspose.html.rendering.image.
		 * ImageFormat.Jpeg);
		 * 
		 * // HTML을 변환하여 JPG 이미지 출력
		 * com.aspose.html.converters.Converter.convertHTML(document, options,
		 * "output.jpg"); } finally { if (document != null) { document.dispose(); } }
		 */
		
		return "deliberate/view";
	}
	
	
	@GetMapping("/agenda/detail.do")
	public String deliberateAgendaDetail(HttpServletRequest request,Model model) {

		
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    List<Decision_Opinion> opinionList = decisionService.getDecisionOpinionList(decisionId);
	    List<Decision_Opinion> typeListOld = decisionService.getOpinionTypeList(decisionId);
	    List<Decision_Opinion> registerFileList = decisionService.getRegisterStepFile(decisionId);
	    model.addAttribute("registerFileList", registerFileList);
        model.addAttribute("opinionList", opinionList);
        List<Decision_Opinion> typeList = new ArrayList<>();
        String getTypeStr = "";
        
        for(Decision_Opinion item : typeListOld) {
        	Decision_Opinion op = new Decision_Opinion();
        	op.setDecisionId(item.getDecisionId());
        	op.setOpinionText(item.getOpinionText());
        	op.setRelatedLaws2(item.getRelatedLaws2());
        	op.setReviewOpinion(item.getReviewOpinion());
        	op.setOpinionType(item.getOpinionType());
        	
        	
        	
        	 int getType = item.getOpinionType();
         	 
    		 for(int i=0 ; i<ItemData.values().length ; i++) {
    			 
    	   		 int code = ItemData.values()[i].getCode();
    	   		 
    	   		 if(code==getType) {
    	   			getTypeStr = ItemData.values()[i].getKrName();
    	   			break;
    	   		 }
            }
    		op.setGetTypeStr(getTypeStr);
    	
       	
        	typeList.add(op);
		 
        }
        System.out.println("=======================★=========================");
        System.out.println(typeList);
        System.out.println("=================================================");

          
         
        
        model.addAttribute("typeList", typeList);
		
//		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		Decision decision = decisionService.getDecisionView(decisionId);
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
//	    List<Decision_Opinion> opinionList = decisionService.getDecisionOpinionList(decisionId);
//        model.addAttribute("opinionList", opinionList);
		//current page
		model.addAttribute("currentPage", "agenda");
		
		DeliberateViewDTO formatter = deliberateService.getDeliberateViewInfoFormatter(decisionId); 
		
    	model.addAttribute("formatter", formatter);
		
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
    	
    	
		return "deliberate/detail";
	}
	
	@GetMapping("/agenda/pdfview.do")
	public String deliberatePdfView(HttpServletRequest request,Model model) throws Exception {
	
		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
	    List<Decision_Opinion> opinionList = decisionService.getDecisionOpinionList(decisionId);
	    List<Decision_Opinion> typeListOld = decisionService.getOpinionTypeList(decisionId);
	    List<Decision_Opinion> registerFileList = decisionService.getRegisterStepFile(decisionId);
	    Decision_Date deliberateDate = deliberateService.getDeliberateSelectDate(decisionId);
	    model.addAttribute("registerFileList", registerFileList);
	    model.addAttribute("opinionList", opinionList);
	    
	    String consultationDate = deliberateDate.getConsultationDate().toString();
	    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    Date consulDate = simpleDateFormat.parse(consultationDate);
	    simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd");
	    String consultDateFormat = simpleDateFormat.format(consulDate);
	    model.addAttribute("consultDateFormat", consultDateFormat);
	    
	    
        
        List<Decision_Opinion> typeList = new ArrayList<>();
        String getTypeStr = "";
        
        for(Decision_Opinion item : typeListOld) {
        	Decision_Opinion op = new Decision_Opinion();
        	op.setDecisionId(item.getDecisionId());
        	op.setOpinionText(item.getOpinionText());
        	op.setRelatedLaws2(item.getRelatedLaws2());
        	op.setReviewOpinion(item.getReviewOpinion());
        	op.setOpinionType(item.getOpinionType());
        	
        	
        	 int getType = item.getOpinionType();
         	 
    		 for(int i=0 ; i<ItemData.values().length ; i++) {
    			 
    	   		 int code = ItemData.values()[i].getCode();
    	   		 
    	   		 if(code==getType) {
    	   			getTypeStr = ItemData.values()[i].getKrName();
    	   			break;
    	   		 }
            }
    		op.setGetTypeStr(getTypeStr);
    	
       	
        	typeList.add(op);
		 
        }
        System.out.println("=======================★=========================");
        System.out.println(typeList);
        System.out.println("=================================================");

          
         
        
        model.addAttribute("typeList", typeList);
		
//		Long decisionId = Long.parseLong(request.getParameter("decisionId"));
		Decision decision = decisionService.getDecisionView(decisionId);
		System.out.println(decisionId); 
	    model.addAttribute("decisionId", decisionId);
//	    List<Decision_Opinion> opinionList = decisionService.getDecisionOpinionList(decisionId);
//        model.addAttribute("opinionList", opinionList);
		//current page
		model.addAttribute("currentPage", "agenda");
		
		DeliberateViewDTO formatter = deliberateService.getDeliberateViewInfoFormatter(decisionId); 
		Decision_Notice decisionNotice = decisionService.getDecisionNoticeView(decisionId);
		DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String EndDate = decisionNotice.getRequestEndDate().format(format);
    	model.addAttribute("formatter", formatter);
		
    	int masterId = decision.getMasterID();
        List<Decision> csltList = implementerService.getLtisCslt(masterId);
        List<Decision_Consult> consultList = decisionService.getConsultList(masterId);
        List<Decision_ConsultationDate> consultationDates =  decisionService.getConsultationDate(decisionId);
        List<String> landOwnerCount = decisionService.getLandOwnerCount(masterId);
        List<String> objectsOwnerCount = decisionService.getObjectsOwnerCount(masterId);
        
        List<String> ownerList = new ArrayList<>();
        ownerList.addAll(landOwnerCount);
        ownerList.addAll(objectsOwnerCount);
        String landOwnerCountOne = "";
        		if(!landOwnerCount.isEmpty()) {
        			landOwnerCountOne = landOwnerCount.get(0);
        		}else {
        			landOwnerCountOne = "";
        		}
        Set<String> set = new HashSet<String>(ownerList);
		List<String> ownerDistinctList =new ArrayList<String>(set);
        int opinionCount = decisionService.getOpinionCount(decisionId);
        
        
		model.addAttribute("csltList", csltList);
        model.addAttribute("consultList", consultList);
        model.addAttribute("consultationDates", consultationDates);
        model.addAttribute("ownerCount", ownerDistinctList.size());
        model.addAttribute("ownerName", landOwnerCountOne);
        model.addAttribute("opinionCount", opinionCount);
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
  		
  		String businessOperator = "";
  		String governor = "";
  		String landowner = "";
  		if(decision.getBusinessOperator() != null) {
  		businessOperator = decision.getBusinessOperator();
  		}
  		if(decision.getGovernor() != null) {
  		governor = decision.getGovernor();
  		}
  		if(decision.getLandowner() != null) {
  		landowner = decision.getLandowner();
  		}
  				
  		//List<String> pdfWriter = new ArrayList<String>();
		  List<List<String>> jpgFiles = new ArrayList<List<String>>();
		  
		  for (int i=0; i<registerFileList.size(); i++) {
		  if(registerFileList.get(i).getFileNameExtension().equalsIgnoreCase("pdf"))
		  {
			  // pdf -> jpg 변환작업 
		  PDFConverter pdfconvert = new PDFConverter(); 
		  String fname = registerFileList.get(i).getFileNameChange();
		  //String pdf_writer = registerFileList.get(i).getOwnrNm();
		 // pdfWriter.add(pdf_writer);
		  
		  // 파일명 // 로컬
		  //String localPath =request.getServletContext().getRealPath(File.separator)+ "file"+File.separator + "download"+"\\";
		  //jpgFiles.add(pdfconvert.ConvertPdf2Jpg(localPath, fname, masterId, i)); 
		  //서버 
		  String serverPath = registerFileList.get(i).getFileFolder();
		  jpgFiles.add(pdfconvert.ConvertPdf2Jpg(serverPath, fname, masterId, i)); 
		  } 
		  }
		 
			  
		 
  		 
  		 model.addAttribute("landCnt", landCntStr);
 		 model.addAttribute("landArea", landAreaStr);
 		 model.addAttribute("landPrice", landPriceStr);
 		 model.addAttribute("objCnt", objCntStr);
 		 model.addAttribute("objPrice", objPriceStr);
 		 model.addAttribute("goodwillCnt", goodwillCntStr);
 		 model.addAttribute("goodwillPrice", goodwillPriceStr);
 		 model.addAttribute("businessOperator", businessOperator);
 		 model.addAttribute("landowner", landowner);
 		 model.addAttribute("governor", governor);
 		 model.addAttribute("jpgFiles", jpgFiles);
 		 model.addAttribute("EndDate", EndDate);
 		 model.addAttribute("consultationDatesSize", consultationDates.size());
 		 //model.addAttribute("pdfWriter", pdfWriter);
		return "deliberate/pdfview";
	}
	
	@GetMapping("/agenda/ebookPopup.do")
	public String ebookPopup(HttpServletRequest request,Model model) {
		
		return "deliberate/ebookPopup";
	}
	
	
	
	
	

	}
	

