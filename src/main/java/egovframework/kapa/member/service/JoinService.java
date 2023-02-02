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

		int userType = Integer.parseInt(jsonObject.get("userType").toString());
		
		if (userType==1) {
			System.out.println("사업시행자 회원등록");
			joinImplementer(param);
		}
		else if (userType==2) {
			System.out.println("감정평가사 회원등록");
			joinAppraiser(param);
		}
		else {
			System.out.println("일반 회원등록");
			joinUser(param);
		}
	}

	public String joinUser(String param) throws ParseException { // 사업시행자, 감정평가사 이외 회원
		
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
		//String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		String mobile = jsonObject.get("mobile").toString();
		String email = jsonObject.get("email").toString();
		String domain = jsonObject.get("domain").toString();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(3);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(completeEmail);
		user.setEmail(email);
		user.setDomain(domain);
		user.setUserEnabled("1");
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		joinMapper.InsertUser(user);
		
		return Message;
	}

	public String joinImplementer(String param) throws ParseException { // 사업시행자
		
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
		//String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		String mobile = jsonObject.get("mobile").toString();
		String email = jsonObject.get("email").toString();
		String domain = jsonObject.get("domain").toString();
		
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(1);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(completeEmail);
		user.setEmail(email);
		user.setDomain(domain);
		user.setUserEnabled("1");
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		
		
		joinMapper.InsertUser(user);
		TB_Implementer implementer = new TB_Implementer();
		Long userSeqNo = joinMapper.getUserSeqNo(user);
		implementer.setUserSeqNo(userSeqNo);
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
		//String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		String mobile = jsonObject.get("mobile").toString();
		String email = jsonObject.get("email").toString();
		String domain = jsonObject.get("domain").toString();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(2);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(completeEmail);
		user.setEmail(email);
		user.setDomain(domain);
		user.setUserEnabled("1");
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		
		joinMapper.InsertUser(user);
		
		TB_Appraiser appraiser = new TB_Appraiser();
		Long userSeqNo = joinMapper.getUserSeqNo(user);
		appraiser.setUserSeqNo(userSeqNo);
		appraiser.setCompany(jsonObject.get("company").toString());
		appraiser.setResponsibilityName(jsonObject.get("responsibilityName").toString());
		appraiser.setPhoneNumber(jsonObject.get("phoneNumber").toString());
		//appraiser.setPhoneNumber(mobile);
		
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
		//String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		String mobile = jsonObject.get("mobile").toString();
		String email = jsonObject.get("email").toString();
		String domain = jsonObject.get("domain").toString();
		
		User user = new User();
		user.setUserId(id);
		user.setUserPassword(pwd);
		user.setUserType(3);
		//user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(jsonObject.get("email").toString());
		user.setEmail(email);
		user.setDomain(domain);
		user.setRegdate(LocalDateTime.now());
		user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		
		joinMapper.InsertUser(user);
		
		TB_Cities cities = new TB_Cities();
		Long userSeqNo = joinMapper.getUserSeqNo(user);
		cities.setUserSeqNo(userSeqNo);
		cities.setDepartment(jsonObject.get("department").toString());
		cities.setRepresentativeName(jsonObject.get("representativeName").toString());
		cities.setPhoneNumber(jsonObject.get("phoneNumber").toString());
		//cities.setPhoneNumber(mobile);
		cities.setCode(jsonObject.get("code").toString());
		
		joinMapper.InsertCities(cities);
		
		return Message;
		
	}
	
	public Long countJudgeInfo(String caseNo) {
		return joinMapper.countJudgeInfo(caseNo);
	}
}
