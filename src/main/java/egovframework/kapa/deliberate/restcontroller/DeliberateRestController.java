package egovframework.kapa.deliberate.restcontroller;


import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.deliberate.dto.DeliberateDTO;
import egovframework.kapa.deliberate.dto.DeliberateDetailDTO;
import egovframework.kapa.deliberate.service.DeliberateService;
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Search;

@RestController
@RequestMapping("/api/deliberate")
public class DeliberateRestController {

	
	@Autowired
	DeliberateService deliberateService;
	
	
	/*
	 * application List
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getApplicationList(@RequestParam("cpage") String cpage) {
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {
            pageNum = Integer.parseInt(cpage);
            System.out.println("getApplicationList::::::"+pageNum);
 
            //페이징 계산
            int listCnt = deliberateService.getDeliberateDateCnt(search);
           // int listCnt = deliberateService.getDeliberateListCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision_Date> pagingResult = deliberateService.getDeliberateDateList(search);
			List<DeliberateDTO> formatterList = deliberateService.getDeliberateListFormatter(pagingResult); 
            
			System.out.println(formatterList.size());
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
	@RequestMapping(value = "/agenda/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getApplicationList(@RequestParam("viewSeq") Long viewSeq) {
		System.out.println("ggdgdggd");
		Map<String, Object> resultFinal = new HashMap<String, Object>();

        try {
  
            //값 넣기
            List<Decision_AgendaDate> pagingResult = deliberateService.getDeliberateDecisionList(viewSeq);
			List<DeliberateDetailDTO> formatterList = deliberateService.getDeliberateDetialListFormatter(pagingResult); 
            
            resultFinal.put("list", formatterList);

        }catch (Exception e){

            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}

	
	
	
}
