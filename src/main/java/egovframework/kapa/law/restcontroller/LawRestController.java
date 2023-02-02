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
	@RequestMapping(value = "/editLaw.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity editLaw(Model model, @RequestBody String data) throws Exception {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
						
        try {
        	lawService.updateLaw(data);
    		
        } catch (Exception e){
            e.printStackTrace();
        }

        resultFinal.put("message", "success");
        return ResponseEntity.ok(resultFinal);

	}	
	
	/*
	 * delete
	 */
	@RequestMapping(value = "/deleteLaw.do", method = RequestMethod.POST)
	public Map<String,Object> deleteContent(@RequestParam("seq_no") int seq_no) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
        	lawService.deleteLaw(seq_no);
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

		LawVO law = new LawVO();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;
        try {

            pageNum = Integer.parseInt(cpage);
            int listCnt = lawService.getLawCnt(law);

            law.pageInfo(pageNum, rowItem, listCnt);

            //값 넣기
    		List<LawVO> result = lawService.getLawList(law);
                		
    		model.addAttribute("lawList", result);
    		
            resultFinal.put("list", result);
            resultFinal.put("allCount", listCnt);
            resultFinal.put("totalPage", law.getPageCnt());

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;
	}


	@RequestMapping(value = "/lawListPopup.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLawListPopup(Model model, @RequestParam("cpage") String cpage, @RequestParam("title") String title, 
											                @RequestParam("article") String article, @RequestParam("paragraph") String paragraph) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		LawVO law = new LawVO();
		law.setTitle(title);
		law.setArticle(article);
		law.setParagraph(paragraph);
		
        //page cpage
        int pageNum=1;
        int rowItem=10;
        try {

            pageNum = Integer.parseInt(cpage);
            int listCnt = lawService.getLawCnt(law);

            law.pageInfo(pageNum, rowItem, listCnt);

            //값 넣기
    		List<LawVO> result = lawService.getLawList(law);
                		
    		model.addAttribute("lawList", result);
    		
            resultFinal.put("list", result);
            resultFinal.put("allCount", listCnt);
            resultFinal.put("totalPage", law.getPageCnt());

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;
	}

	
	@RequestMapping(value = "/search.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getSearchLawList(Model model, @RequestParam("cpage") String cpage, @RequestParam("search") String search) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		LawVO law = new LawVO();
		law.setSearch(search);
		
        //page cpage
        int pageNum=1;
        int rowItem=10;
        try {

            pageNum = Integer.parseInt(cpage);
            int listCnt = lawService.getLawCnt(law);

            law.pageInfo(pageNum, rowItem, listCnt);

            //값 넣기
    		List<LawVO> result = lawService.getLawList(law);
                		
    		model.addAttribute("lawList", result);
    		
            resultFinal.put("list", result);
            resultFinal.put("allCount", listCnt);
            resultFinal.put("totalPage", law.getPageCnt());

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

	@RequestMapping(value = "/lawTitle.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLawTitle() {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
        try {
            //값 넣기
        	List<LawVO> result = lawService.getLawTitles();
            System.out.println(result);
            
            resultFinal.put("list", result);

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}

	@RequestMapping(value = "/lawArticles.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLawArticles( @RequestParam("title") String title) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
        try {
            //값 넣기
        	List<LawVO> result = lawService.getLawArticles(title);
            System.out.println(result);
            
            resultFinal.put("list", result);

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}

	@RequestMapping(value = "/lawParagraph.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getLawParagraph(@RequestParam("title") String title,  @RequestParam("article") String article) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
        try {
            //값 넣기
        	LawVO search = new LawVO();
        	search.setTitle(title);
        	search.setArticle(article);
        	List<LawVO> result = lawService.getLawParagraph(search);
            System.out.println(result);
            
            resultFinal.put("list", result);

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}
}
