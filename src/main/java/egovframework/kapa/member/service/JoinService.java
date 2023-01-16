package egovframework.kapa.member.service;


import java.time.LocalDate;
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
import org.springframework.security.crypto.password.PasswordEncoder;
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
import egovframework.kapa.member.domain.TB_Appraiser;
import egovframework.kapa.member.domain.TB_Cities;
import egovframework.kapa.member.domain.TB_Implementer;
import egovframework.kapa.member.mapper.JoinMapper;
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
public class JoinService {

	@Autowired
	LoginMapper loginMapper;
	
	@Autowired
	JoinMapper joinMapper;
	
	public void addUser_admin(String param) throws ParseException {
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);

		int searchType = Integer.parseInt(jsonObject.get("searchType").toString());
		if(searchType==0) {System.out.println("시군구"); }
		else if (searchType==1) {
			System.out.println("사업시행자");
			joinImplementer(param);
		}
		else if (searchType==2) {System.out.println("2");}
		else if (searchType==3) {System.out.println("3");}
		else if (searchType==4) {System.out.println("4");}
		else if (searchType==5) {System.out.println("5");}
		else if (searchType==6) {System.out.println("6");}
	}


	public String joinImplementer(String param) throws ParseException { // 사업시행자
		
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(1);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		user.setUserEnabled("1");
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		
		
		joinMapper.InsertUser(user);
		String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		TB_Implementer implementer = new TB_Implementer();
		Long userSeqNo = joinMapper.getUserSeqNo(user);
		implementer.setUserSeqNo(userSeqNo);
		implementer.setEmail(completeEmail);
		implementer.setDocNumber(jsonObject.get("docNumber").toString());
		implementer.setImplementerResponsibilityName(jsonObject.get("implementerResponsibilityName").toString());
		implementer.setImplementerNumber(jsonObject.get("implementerNumber").toString());
		
		joinMapper.InsertImplementer(implementer);
		
		return Message;
	}
	
	public String joinAppraiser(String param) throws ParseException { // 감정평가사
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(2);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		user.setUserEnabled("1");
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		
		joinMapper.InsertUser(user);
		
		String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		TB_Appraiser appraiser = new TB_Appraiser();
		Long userSeqNo = joinMapper.getUserSeqNo(user);
		appraiser.setUserSeqNo(userSeqNo);
		appraiser.setEmail(completeEmail);
		appraiser.setCompany(jsonObject.get("company").toString());
		appraiser.setResponsibilityName(jsonObject.get("responsibilityName").toString());
		appraiser.setPhoneNumber(jsonObject.get("phoneNumber").toString());
		
		joinMapper.InsertAppraiser(appraiser);
		
		return Message;
		
	}
	
	public String joinCities(String param) throws ParseException { // 시군구
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(3);
		//user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		
		joinMapper.InsertUser(user);
		
		TB_Cities cities = new TB_Cities();
		Long userSeqNo = joinMapper.getUserSeqNo(user);
		cities.setUserSeqNo(userSeqNo);
		cities.setEmail(jsonObject.get("email").toString());
		cities.setDepartment(jsonObject.get("department").toString());
		cities.setRepresentativeName(jsonObject.get("representativeName").toString());
		cities.setPhoneNumber(jsonObject.get("phoneNumber").toString());
		cities.setCode(jsonObject.get("code").toString());
		
		joinMapper.InsertCities(cities);
		
		return Message;
		
	}
	
	public Long countJudgeInfo(String caseNo) {
		return joinMapper.countJudgeInfo(caseNo);
	}
}
