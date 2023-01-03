package egovframework.kapa.member.restcontroller;


import java.security.Principal;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.member.service.LoginService;

@RestController
@RequestMapping("/api")
public class LoginRestController {


	@Autowired
	LoginService loginService;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity tempLogin(@RequestBody String data,HttpServletRequest req) {
		
		Map<String, Object> resultFinal = new HashMap<String, Object>();
		
        try {
        	System.out.println("로그인!");
     
        	String msg = loginService.tempLogin(data,req);
        	
    		
            resultFinal.put("msg", msg);
        }catch (Exception e){
            System.out.println("\n\ne.getMessage()\n"+e.getMessage());
            System.out.println("\n\ne.toString()\n"+e.toString());
            System.out.println("\n\ne.printStackTrace()");
            e.printStackTrace();
        }
		System.out.println("return1111");
        return ResponseEntity.ok(resultFinal);
	}
	


	
}
