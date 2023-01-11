package egovframework.kapa.board.restcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.board.domain.BoardList;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.board.service.BoardContentService;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationList;

@RestController
@RequestMapping("/api/board")
public class BoardRestController {

	@Autowired
	BoardContentService boardContentService;

	/*
	 * board write
	 */
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public Map<String,Object> saveContent(BoardVO write) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	    	 boardContentService.save(write);
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
	 * board update
	 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public Map<String,Object> updateContent(BoardVO update) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	    	 boardContentService.update(update);
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
	 * board delete
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Map<String,Object> deleteContent(BoardVO write) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
	    	 boardContentService.delete(write);
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
	 * board List
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getBoardContentList(@RequestParam("cpage") String cpage,@RequestParam("boardSeq") int boardSeq) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();
		
        //page cpage
        int pageNum=1;
        int rowItem=10;
        
        try {
            pageNum = Integer.parseInt(cpage);
            search.setBoardSeq(boardSeq);
            System.out.println("getBoardContentList::::::"+boardSeq);
 
            //페이징 계산
            int listCnt = boardContentService.getBoardContentCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
        
            
            System.out.println("getBoardContentList::::::"+listCnt);
            
            //값 넣기
            List<BoardList> pagingResult = boardContentService.getBoardContentList(search);
   
            resultFinal.put("list", pagingResult);
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

	// 공지사항 검색기능
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getSearchBoardContentList(@RequestParam Map<Object, Object> paramMap) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

		Search search = new Search();

		String searchType = paramMap.get("searchType").toString();
		String searchKeyword = paramMap.get("searchKeyword").toString();
		String cpage = paramMap.get("cpage").toString();
		int boardSeq = Integer.parseInt(paramMap.get("boardSeq").toString());
		
        //page cpage
        int pageNum=1;
        int rowItem=10;

    	if(searchKeyword != "" && searchKeyword != null){
    		if (searchType == "제목") searchType = "search_title";
    		else					 searchType = "search_content";
    		
    		search.setSearchType(searchType);
    		search.setKeyword(searchKeyword);
    	}
        
        try {
            pageNum = Integer.parseInt(cpage);
            search.setBoardSeq(boardSeq);
            System.out.println("getBoardContentList::::::"+boardSeq);
 
            //페이징 계산
            int listCnt = boardContentService.getBoardContentCnt(search);
            search.pageInfo(pageNum, rowItem, listCnt);
        
            
            System.out.println("getBoardContentList::::::"+listCnt);
            
            //값 넣기
            List<BoardList> pagingResult = boardContentService.getBoardContentList(search);
   
            resultFinal.put("list", pagingResult);
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
