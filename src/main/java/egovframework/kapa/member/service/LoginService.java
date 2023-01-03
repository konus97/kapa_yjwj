package egovframework.kapa.member.service;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.LoginUser;
import egovframework.kapa.domain.Search;
import egovframework.kapa.domain.User;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.implementer.mapper.ImplementerMapper;
import egovframework.kapa.member.mapper.LoginMapper;


/**
* <pre>
* 1. 패키지명 : com.kapa.implementer.service
* 2. 타입명 : ImplementerService.java
* 3. 작성일 : 2022.11.08
* 4. 작성자 : kbs
* 5. 설명 :
* </pre>
*/
@Service
public class LoginService {

	@Autowired
	LoginMapper loginMapper;



	public String tempLogin(String param,HttpServletRequest req) {
		
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		try {
			
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			String loginId = jsonObject.get("loginId").toString();
			String loginPwd = jsonObject.get("loginPwd").toString();
			
			LoginUser loginUser = new LoginUser();
			loginUser.setLoginId(loginId);
			loginUser.setLoginPwd(loginPwd);
			
			User getLogin = loginMapper.getLoginUserInfo(loginUser);
			
			if (getLogin == null) {			
			   	Message = "Fail.";
			} else {
				
				HttpSession session = req.getSession();
				session.setAttribute("SS_MEM_ID", getLogin.getUserId());

				Message = "Complete.";	

			}	
		}catch (Exception e) {
			e.printStackTrace();
		}
		

		
		return Message;
	}
	
	
}
