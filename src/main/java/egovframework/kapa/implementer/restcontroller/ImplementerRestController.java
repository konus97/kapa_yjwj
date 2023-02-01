package egovframework.kapa.implementer.restcontroller;


import java.util.ArrayList;
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

import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.service.ImplementerService;

@RestController
@RequestMapping("/api/implementer")
public class ImplementerRestController {

	
	@Autowired
	ImplementerService implementerService;
	
	@Autowired
	DecisionService	decisionService;
	
	/*
	 * application List
	 */
	@RequestMapping(value = "/application/list", method = RequestMethod.GET)
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
            int listCnt = implementerService.getImplementerCnt(search);
            
            search.pageInfo(pageNum, rowItem, listCnt);
            
           
            //값 넣기
            List<ApplicationList> pagingResult = implementerService.getImplementerList(search);
            List<ApplicationDTO> formatterList = implementerService.getImplementerListFormatter(pagingResult);
            System.out.println("LIST!" + formatterList);
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
	 * application List Search
	 */
	@RequestMapping(value = "/application/searchlist", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getApplicationListSearch(@RequestParam Map<Object, Object> paramMap) {
		Map<String, Object> resultFinal = new HashMap<String, Object>();
        System.out.println("LTIS 입력정보 조회 SEARCH PARAM :::" + paramMap);
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
		search.setCheckvalue(paramMap.get("checkvalue").toString());
		
		System.out.println("search ::: "+search);
        //페이징 설정
        int pageNum=1;
        int rowItem=10;

        try {
        
            //페이징 계산
            pageNum = Integer.parseInt(paramMap.get("cpage").toString());
            int listCnt = implementerService.getImplementerCnt(search);
            
            search.pageInfo(pageNum, rowItem, listCnt);
            
           
            // 검색 결과
            List<ApplicationList> pagingResult = implementerService.getImplementerList(search);
            List<ApplicationDTO> formatterList = implementerService.getImplementerListFormatter(pagingResult);
            
            //재결 진행 상황 체크할 경우
            if(!search.getCheckvalue().equals("") || search.getCheckvalue() == null) {
            	
            	String[] checkValue = search.getCheckvalue().split(",");       
            	System.out.println(checkValue);
            	List<ApplicationDTO> formatterList2 = new ArrayList<ApplicationDTO>();
            	
            	for(int i=0;i<checkValue.length;i++) {
            	for(int k=0; k<formatterList.size(); k++) {
            		if(Integer.parseInt(checkValue[i]) == formatterList.get(k).getDecisionState()) {
            			formatterList2.add(formatterList.get(k));	
            		}
            	
            		}
            	}
            	
            	pageNum = Integer.parseInt(paramMap.get("cpage").toString());
                int listCnt2 = formatterList2.size();
                
                search.pageInfo(pageNum, rowItem, listCnt2);
            	
            	resultFinal.put("list", formatterList2);
                resultFinal.put("totalPage", search.getPageCnt());
                resultFinal.put("allCount", listCnt2);
            }else {
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
	
	/*
	 * application List
	 */
	@RequestMapping(value = "/opinion/list", method = RequestMethod.GET)
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
            int listCnt = implementerService.getOpinionCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
            
            //값 넣기
            List<Decision> pagingResult = implementerService.getOpinionList(search);
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
	 * 재결 접수
	 */
	@RequestMapping(value = "/decision", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity decisionSave(@RequestBody String data) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);
		
		
        try {
        	System.out.println("saveStart!");
        	implementerService.saveDecision(data);
        	System.out.println("saveEnd!");
            resultFinal.put("msg", "Complete");
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
		System.out.println("return1111");
        return ResponseEntity.ok(resultFinal);
	}
	
	@RequestMapping(value = "/opinion", method = RequestMethod.POST,produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity opinionComplete(@RequestBody String data) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		JSONObject json = new JSONObject(data);
		
		try {
			implementerService.completeOpinion(data);
			implementerService.insertRegister(data);
            resultFinal.put("msg", "Complete");
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
		System.out.println("return1111");
		  return ResponseEntity.ok(resultFinal);
        
	
	}
	
	//재결의견작성 완료 - 필지
	@RequestMapping(value = "/opinion/landview", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity opinionLandview(@RequestBody Long decisionId) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
		
		resultFinal.put("list", decisionService.getDecisionOpinionList(decisionId));
		System.out.println("===================================================");
		System.out.println(decisionService.getDecisionOpinionList(decisionId));
		System.out.println("===================================================");
		
		  return ResponseEntity.ok(resultFinal);
        
	
	}
	
	
	
	@RequestMapping(value = "/target", method = RequestMethod.POST)
	public void targetSave(Decision_Target target) {
		implementerService.saveTarget(target);
	}
	
	
	/*
	 * info land List
	 */
	@RequestMapping(value = "/info/land", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLandInfo(@RequestParam("masterId") int masterId) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

        try {
        
            //값 넣기
            List<ApplicationLand> landList = implementerService.getLandInfo(masterId);
            List<ApplicationLandDTO> formatterList = implementerService.getLandListFormatter(landList);
            
            resultFinal.put("list", formatterList);
  
        }catch (Exception e){

            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
        
        return resultFinal;

	}
	
	
	/*
	 * info Goods List
	 */
	@RequestMapping(value = "/info/goods", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getGoodsInfo(@RequestParam("masterId") int masterId) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

        try {
        
            //값 넣기
            List<ApplicationLand> landList = implementerService.getGoodsInfo(masterId);
            List<ApplicationGoodsDTO> formatterList = implementerService.getGoodsListFormatter(landList);
            
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
