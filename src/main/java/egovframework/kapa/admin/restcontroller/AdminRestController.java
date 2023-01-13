package egovframework.kapa.admin.restcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.admin.service.AdminService;
import egovframework.kapa.board.domain.BoardList;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.domain.Search;

@RestController
@RequestMapping("/api/admin")
public class AdminRestController {

	@Autowired
	AdminService adminService;

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
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
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
	
	
	/*
	 * List
	 */
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getUserList() {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
        try {
            //값 넣기
    		List<AdminVO> result = adminService.getAllUser();
    		System.out.println(result);
    		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    		System.out.println(auth);
   
            resultFinal.put("list", result);
            resultFinal.put("allCount", result.size());
            System.out.println(result.size());

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}

	
}
