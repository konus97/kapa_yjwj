package egovframework.kapa.appraiser.restcontroller;


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
	 * application List
	 */
	@RequestMapping(value = "/application/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getOpinionList(@RequestParam Map<Object, Object> paramMap) {
		Map<String, Object> resultFinal = new HashMap<String, Object>();
       // System.out.println("재결신청 조회 SEARCH PARAM :::" + paramMap);
		//검색 조건값 정의
		Search search = new Search();
		//검색 조건값 세팅
		/*
		 * search.setNumOrname(paramMap.get("numOrname").toString());
		 * search.setStartDate(paramMap.get("startDate").toString());
		 * search.setEndDate(paramMap.get("endDate").toString());
		 * search.setSubject(paramMap.get("subject").toString());
		 * search.setCode(paramMap.get("code").toString());
		 * search.setPart(paramMap.get("part").toString());
		 * search.setName(paramMap.get("name").toString());
		 * search.setCheckvalue(paramMap.get("checkvalue").toString());
		 */


        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {

         //   pageNum = Integer.parseInt(paramMap.get("cpage").toString());

            //페이징 계산
            int listCnt = appraiserService.getApplicationCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);

            // 검색 결과
            List<Decision> pagingResult = appraiserService.getApplicationList(search);

            System.out.println(pagingResult);
            List<AnnouncementDTO> formatterList = implementerService.getOpinionFormatter(pagingResult);
            
            System.out.println("formatterList :::" + formatterList);
            
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
}
