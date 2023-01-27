package egovframework.kapa.law.restcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.domain.Search;
import egovframework.kapa.law.domain.LawVO;
import egovframework.kapa.law.service.LawService;

@RestController
@RequestMapping("/api/law")
public class LawRestController {

	@Autowired
	LawService lawService;
	

	/*
	 * write
	 */
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public Map<String,Object> save() {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	         resultFinal.put("msg", "Complete");
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }

	   return resultFinal;
	}
	
	/*
	 * update
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Map<String,Object> updateContent() {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	         resultFinal.put("msg", "Complete");
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }

	   return resultFinal;
	}
	
	/*
	 * delete
	 */
	@RequestMapping(value = "/delete.do", method = RequestMethod.POST)
	public Map<String,Object> deleteContent() {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	         resultFinal.put("msg", "Complete");
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }

	   return resultFinal;
	}
	

	@RequestMapping(value = "/lawList.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLawList(Model model, @RequestParam("cpage") String cpage) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;
        try {

            pageNum = Integer.parseInt(cpage);
            int listCnt = lawService.getAllLawCnt();

            search.pageInfo(pageNum, rowItem, listCnt);

            //값 넣기
    		List<LawVO> result = lawService.getLawList(search);
                		
    		model.addAttribute("lawList", result);
    		
            resultFinal.put("list", result);
            resultFinal.put("allCount", listCnt);
            resultFinal.put("totalPage", search.getPageCnt());

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}



	// 법령
	@RequestMapping(value = "/addLaw.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity addLaw(Model model, @RequestBody String data) throws Exception {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
						
        try {
        	lawService.addLaw(data);
    		
        } catch (Exception e){
            e.printStackTrace();
        }

        resultFinal.put("message", "success");
        return ResponseEntity.ok(resultFinal);

	}	
	

	@RequestMapping(value = "/selectLaw.do", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getSelectLawList(Model model, @RequestParam(value="list[]") List<String> list) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
        try {
            //값 넣기
    		List<LawVO> result = lawService.getSelectLawList(list);
            System.out.println(result);
            
    		model.addAttribute("lawList", result);
    		
            resultFinal.put("list", result);

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}
}
