package egovframework.kapa.member.restcontroller;


import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import egovframework.kapa.member.service.JoinService;
import egovframework.kapa.member.service.LoginService;
import egovframework.kapa.util.auth.Authenticate;

@RestController
@RequestMapping("/api/join")
public class JoinRestController {


	@Autowired
	LoginService loginService;
	
	@Autowired
	JoinService joinService;
	
	
	@RequestMapping(value = "/appraiser", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity JoinAppraiser(@RequestBody String data) {
		
		try {
			joinService.joinAppraiser(data);	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, String> result = new HashMap();
		result.put("message", "success");
		return ResponseEntity.ok(result);
	}
	
	@RequestMapping(value = "/implementer", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity JoinImplementer(@RequestBody String data) {
		System.out.println("컨트롤러 data : " + data);
		try {
			joinService.joinImplementer(data);	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, String> result = new HashMap();
		result.put("message", "success");
		return ResponseEntity.ok(result);
	}
	
	@RequestMapping(value = "/cities", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity JoinCities(@RequestBody String data) {
		try {
			joinService.joinCities(data);	
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		Map<String, String> result = new HashMap();
		result.put("message", "success");
		return ResponseEntity.ok(result);
	}
	
	@RequestMapping(value = "/judge", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity countJudgeInfo(@RequestParam String caseNo) {
		
		Long count = 0L;
		try {
			count = joinService.countJudgeInfo(caseNo);		
			System.out.println("count" + count);
		}catch (Exception e) {
			e.printStackTrace();
		}
		if (count>0) {
			return ResponseEntity.ok("success");
		} else {
			return ResponseEntity.ok("사건번호가 없습니다.");
		}
		
	}

	@RequestMapping(value = "/checkphone", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody
	public ResponseEntity phoneCheck(@RequestBody String data) throws Exception {
		try {
			System.out.println(data);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		Authenticate auth = new Authenticate();
		Map<String, String> result = new HashMap();
		auth.sendSms(data);
		result.put("message", "success");
		return ResponseEntity.ok(result);
	}
	
	
	
	
	
	

	
}
