
package egovframework.kapa.decision.restcontroller;


import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.decision.dto.FormMeetingSearch;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.dto.FormMeetingEvent;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.service.ImplementerService;

@RestController
@RequestMapping("/api/decision")
public class DecisionRestController {
 
	
	@Autowired
	DecisionService decisionService;

	@Autowired
	ImplementerService implementerService;
	
	@RequestMapping(value = "",  method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> decisionSave(@RequestBody String data) throws Exception {
		System.out.println("저장되나요");
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
		JSONObject json = new JSONObject(data);
		
		try {
			decisionService.saveDecision(data);	
			resultFinal.put("msg", "Complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultFinal;
		
	}
	
	@RequestMapping(value = "/agenda",  method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> agendaSave(@RequestBody String data) throws Exception {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);
		
		try {
			decisionService.saveAgenda(data);	
			resultFinal.put("msg", "Complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultFinal;
		
	}
	
	@RequestMapping(value = "/register/step1",  method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> registerStep1(@RequestBody String data) throws Exception {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);
		
		try {
			decisionService.registerStep1(data);	
			resultFinal.put("msg", "Complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultFinal;
		
	}
	
	/*
	 * board write
	 */
	@RequestMapping(value = "/register/step2",  method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String,Object> registerStep2(@RequestBody String data) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	    	 decisionService.registerStep2(data);
	    	 
	    	 String msg = decisionService.registerStep3(data);
	    	 
	         resultFinal.put("msg", msg);
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }

	   return resultFinal;
	}
	
	@RequestMapping(value = "/register/step3",  method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> registerStep3(@RequestBody String data) throws Exception {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);
		
		try {
			decisionService.updateStep3(data);	
			resultFinal.put("msg", "Complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultFinal;
		
	}
	
	@RequestMapping(value = "/meetings/insert",  method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public Map<String, Object> meetingsInsert(@RequestBody String data) throws Exception {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);
		
		try {
			int check = decisionService.meetingsInsert(data);
			resultFinal.put("check", check);
			resultFinal.put("msg", "Complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultFinal;
		
	}

	
	/*
	 * application List
	 */
	@RequestMapping(value = "/announcement/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getDecisionAnnouncementList(@RequestParam("cpage") String cpage) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {
            pageNum = Integer.parseInt(cpage);
            System.out.println("getApplicationList::::::"+pageNum);
 
            //페이징 계산
            int listCnt = decisionService.getDecisionAnnouncementCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision> pagingResult = decisionService.getDecisionAnnouncementList(search);
            List<AnnouncementDTO> formatterList = decisionService.getDecisionAnnouncementFormatter(pagingResult);
            
            resultFinal.put("list", formatterList);
            resultFinal.put("totalPage", search.getPageCnt());
            resultFinal.put("allCount", listCnt);

        }catch (Exception e){
            pageNum=1;

            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}


	
	/*
	 * opinion List
	 */
	@RequestMapping(value = "/agenda/opinion/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getDecisionOpinionList(@RequestParam("decisionId") Long decisionId) {

		Map<String, Object> resultFinal = new HashMap<String, Object>();

        try {
           
            //값 넣기
            List<Decision_Opinion> pagingResult = decisionService.getDecisionOpinionList(decisionId);
            resultFinal.put("list", pagingResult);

        }catch (Exception e){


            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
	
	/*
	 * opinion item List
	 */
	@RequestMapping(value = "/agenda/opinion/item", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getDecisionOpinionItemList(@RequestParam("viewSeq") Long viewSeq) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

        try {       
            //값 넣기
            List<Decision_Opinion_Item> pagingResult = decisionService.getDecisionOpinionItemList(viewSeq);
            resultFinal.put("list", pagingResult);

        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}

	/*
	 * opinion item List
	 */
	@RequestMapping(value = "/agenda/opinion/info", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getDecisionOpinionInfo(@RequestParam("viewSeq") Long viewSeq) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

        try {
           
            //값 넣기
        	Decision_Opinion pagingResult = decisionService.getDecisionOpinionInfo(viewSeq);
            resultFinal.put("list", pagingResult);

        }catch (Exception e){


            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
	
	
	/*
	 * agenda List
	 */
	@RequestMapping(value = "/agenda/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getDecisionAgendaList(@RequestParam("cpage") String cpage) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {
            pageNum = Integer.parseInt(cpage);
            System.out.println("getApplicationList::::::"+pageNum);
 
            //페이징 계산
            int listCnt = decisionService.getDecisionAgendaCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision> pagingResult = decisionService.getDecisionAgendaList(search);
            List<AnnouncementDTO> formatterList = implementerService.getOpinionFormatter(pagingResult);
            
            resultFinal.put("list", formatterList);
            resultFinal.put("totalPage", search.getPageCnt());
            resultFinal.put("allCount", listCnt);

        }catch (Exception e){
            pageNum=1;

            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
	
	/*
	 * agenda List
	 */
	@RequestMapping(value = "/register/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getAgendaRegisterList(@RequestParam("cpage") String cpage) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {
            pageNum = Integer.parseInt(cpage);
            System.out.println("getApplicationList::::::"+pageNum);
 
            //페이징 계산
            int listCnt = decisionService.getAgendaRegisterCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision> pagingResult = decisionService.getAgendaRegisterList(search);
            	
            
         
            List<AnnouncementDTO> formatterList = implementerService.getOpinionFormatter(pagingResult);
            
            resultFinal.put("list", formatterList);
            resultFinal.put("totalPage", search.getPageCnt());
            resultFinal.put("allCount", listCnt);

        }catch (Exception e){
            pageNum=1;

            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
	
	/*
	 * application List
	 */
	@RequestMapping(
			value = "/meetings/list",
			produces = MediaType.APPLICATION_JSON_VALUE
	)
	public Map<String, Object> getMeetingsDateList(@RequestBody FormMeetingSearch form) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
				System.out.println("심의일정 start");
        try {

        	System.out.println(form);
        	
        	
    		List<Decision_Date> meetingList = decisionService.selectCaseMeetings(form.getStart(), form.getEnd());
    		Map<String, Integer> allMeetingCounts = new HashMap<>();
    		Map<String, Integer> myMeetingCounts = new HashMap<>();
    		System.out.println("test:" + meetingList);
    		for (Decision_Date meeting : meetingList) {
    		
    		    LocalDate getDate = meeting.getConsultationDate();
    			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    			String formattedString = getDate.format(formatter);
    			
    			String key = formattedString;
    			int count = 0;
    			
    			allMeetingCounts.put(key, count);
    		
    		}
    		System.out.println("test2 :::::" + allMeetingCounts);
    		List<FormMeetingEvent> meetingCountEventList = new ArrayList<>();
    		
    		for (int i=0; i<meetingList.size(); i++) {
    			
    		}
    		
    		allMeetingCounts.forEach((k, v) -> {
    			FormMeetingEvent event = new FormMeetingEvent();
    			int count = decisionService.getCountSamedaysMeetings(k);
    			//event.setTitle("전문검증단(" + v + "건)");
    			event.setTitle("전문검증단(" + count + "건)");
    			event.setDate(k);
    			event.setType("count");
    			meetingCountEventList.add(event);
    		});

    		List<FormMeetingEvent> myMeetingEventList = new ArrayList<>();
			/*
			 * myMeetingCounts.forEach((k, v) -> { FormMeetingEvent event = new
			 * FormMeetingEvent(); event.setTitle("내 일정(" + v + "건)"); event.setDate(k);
			 * event.setType("my"); myMeetingEventList.add(event); });
			 */

    		resultFinal.put("myMeetingEventList", myMeetingEventList);
    		resultFinal.put("meetingCountEventList", meetingCountEventList);
    	
        }catch (Exception e){
  
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
	

}
