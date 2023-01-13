package egovframework.kapa.main.contoller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String indexPage(HttpServletRequest req) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String id = auth.getName();
		Object principal = auth.getPrincipal();
		System.out.println(id);
		System.out.println(principal);
		
		//req.getSession().setAttribute("loginId", principal);
		return "main";
	}
	
	@GetMapping("/main.do")
	public String mainPage() {
		return "main";
	}
	@GetMapping("/main")
	
	public String mainPage2() {
		return "main";
	}
	
}
