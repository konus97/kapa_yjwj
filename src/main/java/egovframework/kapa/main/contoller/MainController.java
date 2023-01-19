package egovframework.kapa.main.contoller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import egovframework.kapa.security.mapper.UserMapper;
import egovframework.kapa.security.service.UserVO;

@Controller
public class MainController {
	
	@Autowired
	UserMapper userMapper;

	@GetMapping("/")
	public String indexPage(HttpServletRequest req, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		//String chk = (String)session.getAttribute("loginChk");
		//String id = "";
		
		String id = auth.getName();
		UserVO user = new UserVO();
		int exist = userMapper.getUserExist(id);
		if (exist == 1) {
			user = userMapper.getUserById(id);
			req.getSession().setAttribute("userName", user.getName());
			req.getSession().setAttribute("userId", user.getUsername());
		}
		//userMapper.getUserById(userName)
		//userMapper.getUserById(id);
		
		String name = user.getName();
		
		//session.setAttribute("userName", user.getName());
		//req.getSession().setAttribute("userName", user.getName());
		//req.getSession().setAttribute("userId", user.getUsername());
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
