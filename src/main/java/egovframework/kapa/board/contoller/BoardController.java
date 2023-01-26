package egovframework.kapa.board.contoller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.board.service.BoardContentService;
import egovframework.kapa.security.mapper.UserMapper;
import egovframework.kapa.security.service.UserVO;


@Controller
@RequestMapping("/board")
public class BoardController {

	
	@Autowired
	BoardContentService boardContentService;

	@Autowired
	UserMapper userMapper;
	/*
	 * notice - 공지사항
	 */

	@GetMapping("/notice.do")
	public String noticeList(Model model, HttpServletRequest req) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();		
		String id = auth.getName();
		UserVO user = new UserVO();
		int exist = userMapper.getUserExist(id);
		if (exist != 0) {
			user = userMapper.getUserById(id);
			req.getSession().setAttribute("userName", user.getName());
			req.getSession().setAttribute("userId", user.getUsername());
		}
		
		
		//boardSeq
		model.addAttribute("boardSeq", "1");
		
		//current page
		model.addAttribute("currentPage", "notice");
		
		
		return "board/notice/list";
	}
	
	@GetMapping("/notice/view.do")
	public String noticeView(HttpServletRequest request,Model model) {
		
		int viewSeq = Integer.parseInt(request.getParameter("viewSeq"));
		System.out.println(viewSeq); 
        model.addAttribute("viewSeq", viewSeq);
        
        BoardVO boardVO = boardContentService.getViewContent(viewSeq);
        model.addAttribute("bvo", boardVO);
        
		//boardSeq
		model.addAttribute("boardSeq", "1");
		
		//current page
		model.addAttribute("currentPage", "notice");
		model.addAttribute("currentPageTitle", "공지사항");
		
		return "board/common/view";
	}
	
	@GetMapping("/notice/write.do")
	public String noticeWriteView(Model model) {
		
		//boardSeq
		model.addAttribute("boardSeq", "1");
		
		//current page
		model.addAttribute("currentPage", "notice");
		model.addAttribute("currentPageTitle", "공지사항");
		
	
		return "board/common/write";
	}
	
	
	@GetMapping("/notice/edit.do")
	public String noticeEdit(HttpServletRequest request,Model model) {
		
		int viewSeq = Integer.parseInt(request.getParameter("viewSeq"));
		System.out.println(viewSeq); 
        model.addAttribute("viewSeq", viewSeq);
        
        BoardVO boardVO = boardContentService.getViewContent(viewSeq);
        model.addAttribute("bvo", boardVO);
        
		//boardSeq
		model.addAttribute("boardSeq", "1");
		
		//current page
		model.addAttribute("currentPage", "notice");
		model.addAttribute("currentPageTitle", "공지사항");
		
		return "board/common/edit";
	}
	
	
	/*
	 * inquiry - 묻고 답하기.
	 */
	@GetMapping("/inquiry.do")
	public String inquiryList(Model model) {
		
		//boardSeq
		model.addAttribute("boardSeq", "2");
		
		//current page
		model.addAttribute("currentPage", "inquiry");

		return "board/inquiry/list";
	}
	
	@GetMapping("/inquiry/view.do")
	public String inquiryView(HttpServletRequest request,Model model) {
		
		int viewSeq = Integer.parseInt(request.getParameter("viewSeq"));
		System.out.println(viewSeq); 
        model.addAttribute("viewSeq", viewSeq);
        
        BoardVO boardVO = boardContentService.getViewContent(viewSeq);
        model.addAttribute("bvo", boardVO);
        
		//boardSeq
		model.addAttribute("boardSeq", "2");
		
		//current page
		model.addAttribute("currentPage", "inquiry");
		model.addAttribute("currentPageTitle", "묻고답하기");
		
		return "board/common/view";
	}
	
	
	@GetMapping("/inquiry/edit.do")
	public String inquiryEdit(HttpServletRequest request,Model model) {
		
		int viewSeq = Integer.parseInt(request.getParameter("viewSeq"));
		System.out.println(viewSeq); 
        model.addAttribute("viewSeq", viewSeq);
        
        BoardVO boardVO = boardContentService.getViewContent(viewSeq);
        model.addAttribute("bvo", boardVO);
        
		//boardSeq
		model.addAttribute("boardSeq", "2");
		
		//current page
		model.addAttribute("currentPage", "inquiry");
		model.addAttribute("currentPageTitle", "묻고답하기");
		
		return "board/common/edit";
	}

	@GetMapping("/inquiry/write.do")
	public String inquiryWrite(Model model) {
		
		//boardSeq
		model.addAttribute("boardSeq", "2");
		
		//current page
		model.addAttribute("currentPage", "inquiry");
		model.addAttribute("currentPageTitle", "묻고답하기");
		
		return "board/common/write";
	}
	

	
	/*
	 * inquiryLaw - 법률 질의
	 */
	@GetMapping("/inquiryLaw.do")
	public String inquiryLawList(Model model) {
		
		//boardSeq
		model.addAttribute("boardSeq", "3");
		
		//current page
		model.addAttribute("currentPage", "inquiryLaw");
		
		return "board/inquiryLaw/list";
	}
	
	@GetMapping("/inquiryLaw/view.do")
	public String inquiryLawView(HttpServletRequest request,Model model) {
		
		int viewSeq = Integer.parseInt(request.getParameter("viewSeq"));
		System.out.println(viewSeq); 
        model.addAttribute("viewSeq", viewSeq);
        
        BoardVO boardVO = boardContentService.getViewContent(viewSeq);
        model.addAttribute("bvo", boardVO);
        
		//boardSeq
		model.addAttribute("boardSeq", "3");
		
		//current page
		model.addAttribute("currentPage", "inquiryLaw");
		model.addAttribute("currentPageTitle", "법률질의");
		
		return "board/common/view";
	}
	
	@GetMapping("/inquiryLaw/edit.do")
	public String inquiryLawEdit(HttpServletRequest request,Model model) {
		
		int viewSeq = Integer.parseInt(request.getParameter("viewSeq"));
		System.out.println(viewSeq); 
        model.addAttribute("viewSeq", viewSeq);
        
        BoardVO boardVO = boardContentService.getViewContent(viewSeq);
        model.addAttribute("bvo", boardVO);
        
		//boardSeq
		model.addAttribute("boardSeq", "3");
		
		//current page
		model.addAttribute("currentPage", "inquiryLaw");
		model.addAttribute("currentPageTitle", "법률질의");
		
		return "board/common/edit";
	}

	@GetMapping("/inquiryLaw/write.do")
	public String inquiryLawWrite(Model model) {
		
		//boardSeq
		model.addAttribute("boardSeq", "3");
		
		//current page
		model.addAttribute("currentPage", "inquiryLaw");
		model.addAttribute("currentPageTitle", "법률질의");
		
		return "board/common/write";
	}
	
	
	
	
}
