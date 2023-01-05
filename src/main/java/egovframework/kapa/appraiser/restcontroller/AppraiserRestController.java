package egovframework.kapa.appraiser.restcontroller;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.appraiser.service.AppraiserService;
import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.service.ImplementerService;

@RestController
@RequestMapping("/api/appraiser")
public class AppraiserRestController {


	@Autowired
	AppraiserService appraiserService;
	
	@Autowired
	ImplementerService implementerService;
	
	/*
	 * Appraiser
	 */

	@RequestMapping(value = "/opinion", method = RequestMethod.POST)
	public void AppraiserSave(@RequestBody String param) throws ParseException {
		appraiserService.saveOpinion(param);
	}
	
	/*
	 * application List 데이터 검색 안됌 
	 */
	@RequestMapping(value = "/application/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getOpinionList(@RequestParam Map<Object, Object> paramMap) {
		Map<String, Object> resultFinal = new HashMap<String, Object>();
       // System.out.println("재결신청 조회 SEARCH PARAM :::" + paramMap);
	
		//검색 조건값 정의
		Search search = new Search();
		//검색 조건값 세팅
		
		search.setNumOrname(paramMap.get("numOrname").toString());
		search.setStartDate(paramMap.get("startDate").toString());
		search.setEndDate(paramMap.get("endDate").toString());
		search.setSubject(paramMap.get("subject").toString());
		search.setCode(paramMap.get("code").toString());
		search.setPart(paramMap.get("part").toString());
		search.setName(paramMap.get("name").toString());
		
		
		


        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {

            pageNum = Integer.parseInt(paramMap.get("cpage").toString());

            //페이징 계산
            int listCnt = appraiserService.getApplicationCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);

            // 검색 결과
            List<Decision> pagingResult = appraiserService.getApplicationList(search);
            List<AnnouncementDTO> formatterList = implementerService.getOpinionFormatter(pagingResult);
            
            
            //날짜 비교
    		LocalDate start = LocalDate.parse(search.getStartDate());
    		LocalDate end = LocalDate.parse(search.getStartDate());
    		
    		//검색 결과 담을 리스트 선언
        	List<AnnouncementDTO> formatterList2 = new ArrayList<AnnouncementDTO>();
    		
    		//	변환된 데이터의 날짜.before(end) && 변환된 데이터의 날짜.after(start) 검색 true
    		for(int i=0; i<formatterList.size(); i++) {
    			
    		 if(LocalDate.parse(formatterList.get(i).getRecvDt()).isBefore(end) && LocalDate.parse(formatterList.get(i).getRecvDt()).isAfter(start)) {
    			 
    			 formatterList2.add(formatterList.get(i));
    		}
    		
    		}
    		//사건번호 검색 & 검색된 데이터 리스트
    		List<AnnouncementDTO> formatterList3 = new ArrayList<AnnouncementDTO>();
    		if(!search.getNumOrname().equals("") && search.getNumOrname() == null) { 
    		 for(int j=0; j<formatterList2.size(); j++) {
    			 //사건번호 검색 조건 필터링
    			if( formatterList2.get(j).getCaseNo().contains(search.getNumOrname())) {
    				formatterList3.add(formatterList2.get(j));
    			}
    		 }
    			
		    }
    		
           
    		if(!search.getNumOrname().equals("") && search.getNumOrname() == null) {  //검색 조건 있을 시
            resultFinal.put("list", formatterList3);
            
            int listCnt2 = formatterList3.size();
            search.pageInfo(pageNum, rowItem, listCnt2);
            resultFinal.put("totalPage", search.getPageCnt());
            resultFinal.put("allCount", listCnt2);
    		}else {
    		//검색 조건 없을 시
    		int listCnt2 = formatterList3.size();
            search.pageInfo(pageNum, rowItem, listCnt2);
                
    		resultFinal.put("list", formatterList2);
            resultFinal.put("totalPage", search.getPageCnt());
            resultFinal.put("allCount", listCnt2);	
    		}
        }catch (Exception e){
            pageNum=1;

            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
}
