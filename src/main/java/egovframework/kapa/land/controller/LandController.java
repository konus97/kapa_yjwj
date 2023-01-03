package egovframework.kapa.land.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/land")
public class LandController {
	
	/*
	 * acceptance
	 */

	@GetMapping("/acceptanceDecision.do")
	public String acceptancePage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "acceptance");
		
		return "land/acceptance/view";
	}
	
	/*
	 * committee
	 */
	
	@GetMapping("/committee.do")
	public String committeePage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "committee");
		
		return "land/committee/view";
	}
	
	/*
	 * compensation
	 */
	
	@GetMapping("/compensation.do")
	public String compensationPage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "compensation");
		
		return "land/compensation/view";
	}
	
	@GetMapping("/compensation02.do")
	public String compensationPage02(Model model) {
		
		//current page
		model.addAttribute("currentPage", "compensation");
		
		return "land/compensation/view2";
	}
	
	/*
	 * procedure
	 */
	
	@GetMapping("/procedure.do")
	public String procedurePage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "procedure");
		
		return "land/procedure/view";
	}
	
	@GetMapping("/procedure02.do")
	public String procedurePage02(Model model) {
		
		//current page
		model.addAttribute("currentPage", "procedure");
		
		return "land/procedure/view2";
	}
	
	/*
	 * relevant
	 */
	
	@GetMapping("/relevantLaws.do")
	public String relevantPage(Model model) {
		
		//current page
		model.addAttribute("currentPage", "relevant");
		
		return "land/relevant/view";
	}
	
}
