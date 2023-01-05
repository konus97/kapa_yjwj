package egovframework.kapa.cities.restcontroller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.cities.service.CitiesService;
import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cities;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.service.ImplementerService;

@RestController
@RequestMapping("/api/cities")
public class CitiesRestController {

	
	@Autowired
	CitiesService citiesService;
	
	@Autowired
	DecisionService decisionService;
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public Map<String, Object> citiesSave(Decision_Cities cities) throws Exception {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
		try {
			citiesService.completeCities(cities);
			resultFinal.put("msg", "Complete");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return resultFinal;
		
	}
	
	/*
	 * city application List
	 */
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getCitiesAnnouncementList(@RequestParam Map<Object, Object> paramMap) {
        System.out.println("열람공고 조회 SEARCH PARAM :::" + paramMap);

		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		search.setStartDate(paramMap.get("startDate").toString());
		search.setEndDate(paramMap.get("endDate").toString());
		search.setNumOrname(paramMap.get("numOrname").toString());
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

        try {
            pageNum = Integer.parseInt(paramMap.get("cpage").toString());
            System.out.println("getApplicationList::::::"+pageNum);
 
            //페이징 계산
            int listCnt = citiesService.getCitiesAnnouncementrCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision> pagingResult = citiesService.getCitiesAnnouncementList(search);
            List<AnnouncementDTO> formatterList = decisionService.getDecisionAnnouncementFormatter(pagingResult);
            System.out.println(formatterList);
            
            if(!search.getNumOrname().equals("") || search.getNumOrname() == null){
            	List<AnnouncementDTO> formatterList2 = new ArrayList<AnnouncementDTO>();
            	for(int i=0; i<formatterList.size(); i++) {
            		if(formatterList.get(i).getCaseNo().contains(search.getNumOrname())) {
            			formatterList2.add(formatterList.get(i));
            		}
            	} //formatterList2에 검색조건 담김
                int listCnt2 = formatterList2.size();
                search.pageInfo(pageNum, rowItem, listCnt2);

                resultFinal.put("list", formatterList2);
                resultFinal.put("totalPage", search.getPageCnt());
                resultFinal.put("allCount", listCnt2);
            }else { //사건번호 검색은 아닌 경우
                resultFinal.put("list", formatterList);
                resultFinal.put("totalPage", search.getPageCnt());
                resultFinal.put("allCount", listCnt);
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
