package egovframework.kapa.admin.restcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.admin.service.AdminService;
import egovframework.kapa.domain.Search;
import egovframework.kapa.domain.User;
import egovframework.kapa.member.service.JoinService;

@RestController
@RequestMapping("/api/admin")
public class AdminRestController {

	@Autowired
	AdminService adminService;
	
	@Autowired
	JoinService joinService;

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
	public Map<String,Object> deleteUser(@RequestParam("seqNo") int seqNo) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();

	    try {
			AdminVO admin = new AdminVO();
			admin.setSeqNo(seqNo);
			adminService.deleteUser(admin);
			
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
	public Map<String, Object> getUserList(@RequestParam("cpage") String cpage, @RequestParam("name") String name,
										   @RequestParam("dept") String dept, @RequestParam("email") String email	) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		AdminVO admin = new AdminVO();
		admin.setUserName(name);
		admin.setDept(dept);
		admin.setEmail(email);
		
        //page cpage
        int pageNum=1;
        int rowItem=10;
        try {
        	
            pageNum = Integer.parseInt(cpage);
            int listCnt = adminService.getUserCnt(admin);

            admin.pageInfo(pageNum, rowItem, listCnt);

            //값 넣기
    		List<AdminVO> result = adminService.getUserList(admin);
                		
            resultFinal.put("list", result);
            resultFinal.put("allCount", listCnt);
            resultFinal.put("totalPage", admin.getPageCnt());

        }catch (Exception e){
            e.printStackTrace();
        }
        
        return resultFinal;

	}

	// 유저 추가
	@RequestMapping(value = "/add.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity addUserList(@RequestBody String data) throws Exception {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
        try {
    		joinService.addUser_admin(data);    		
        } catch (Exception e){
            e.printStackTrace();
        }
        
        return ResponseEntity.ok(resultFinal);

	}	

	// 유저 추가
	@RequestMapping(value = "/edit.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity editUser(@RequestBody String data) throws Exception {

		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
        try {
    		adminService.editUser_admin(data);    		
        } catch (Exception e){
            e.printStackTrace();
        }

        return ResponseEntity.ok(resultFinal);

	}	

}
