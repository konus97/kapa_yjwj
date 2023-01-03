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
	@RequestMapping(value = "/application/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getOpinionList(@RequestParam("cpage") String cpage) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {
            pageNum = Integer.parseInt(cpage);
            System.out.println("getOpinionList::::::"+pageNum);
 
            //페이징 계산
            int listCnt = appraiserService.getApplicationCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision> pagingResult = appraiserService.getApplicationList(search);
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
}
