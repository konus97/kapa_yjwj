package egovframework.kapa.admin.service;


import java.time.LocalDateTime;
import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.admin.mapper.AdminMapper;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.domain.Search;
import egovframework.kapa.domain.User;
import egovframework.kapa.member.domain.TB_Appraiser;
import egovframework.kapa.member.domain.TB_Implementer;


@Service
public class AdminService {

	@Autowired
	AdminMapper adminMapper;

    
    public void save(BoardVO save) {
    		
    	try {
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
    public void update(BoardVO update) {
		
    	try {
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
	public List<AdminVO> getUserList(AdminVO admin) {
		return adminMapper.getMemberList(admin);
	}
	
	public int getUserCnt(AdminVO admin) {
		return adminMapper.getUserCnt(admin);
	}
	
	public List<AdminVO> getSearchUser(AdminVO admin) {
		return adminMapper.getMemberList(admin);
	}
	
	public void deleteUser (AdminVO admin) {
		admin.setUptdate(LocalDateTime.now());
		adminMapper.deleteUser(admin);
	}

	public AdminVO getUserBySeqNo(int seqNo) {
		return adminMapper.getUserBySeqNo(seqNo);
	}
	
	public int getUserTypeBySeqNo(int seqNo) {
		return adminMapper.getUserTypeBySeqNo(seqNo);
	}

	public AdminVO getImplementerBySeqNo(int seqNo) {
		return adminMapper.getImplementerBySeqNo(seqNo);
	}
	
	public AdminVO getAppraiserBySeqNo(int seqNo) {
		return adminMapper.getAppraiserBySeqNo(seqNo);
	}
	
	public void editUser_admin (String data) throws ParseException {
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(data);

		int userType = Integer.parseInt(jsonObject.get("type").toString());
		
		if (userType==1) {
			System.out.println("사업시행자 update");
			updateImplementer(data);
		}

		else if (userType==2) {	// 감정평가사
			System.out.println("감정평가사 update");
			updateImplementer(data);
		}
		
		else {	// 이외
			System.out.println("회원 update");
			updateUser(data);
			
		}
	}

	public String updateUser(String param) throws ParseException { // 회원 업데이트
		
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		long seqNo = Long.parseLong(jsonObject.get("seqNo").toString());
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
//		String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		String mobile = jsonObject.get("mobile").toString();
		String email = jsonObject.get("email").toString();
		String domain = jsonObject.get("domain").toString();
		
		User user = new User();
		user.setSeqNo(seqNo);
		user.setUserId(id);
		user.setUserPassword(pwd);
		//user.setUserType(1);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(completeEmail);
		user.setEmail(email);
		user.setDomain(domain);
		//user.setUserEnabled("1");
		user.setUptdate(LocalDateTime.now());
		//user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		
		adminMapper.UpdateUser(user);
		
		return Message;
	}

	public String updateImplementer(String param) throws ParseException { // 사업시행자
		
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
			
		long seqNo = Long.parseLong(jsonObject.get("seqNo").toString());
		String id = jsonObject.get("id").toString();
		String pwd = jsonObject.get("pwd").toString();
		String name = jsonObject.get("name").toString();
		String dept = jsonObject.get("dept").toString();
		//String completeEmail = jsonObject.get("email").toString() + "@" + jsonObject.get("domain").toString();
		String mobile = jsonObject.get("mobile").toString();
		String email = jsonObject.get("email").toString();
		String domain = jsonObject.get("domain").toString();
		
		User user = new User();
		user.setSeqNo(seqNo);
		user.setUserId(id);
		user.setUserPassword(pwd);
		//user.setUserType(1);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(completeEmail);
		user.setEmail(email);
		user.setDomain(domain);
		//user.setUserEnabled("1");
		user.setUptdate(LocalDateTime.now());
		//user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		
		adminMapper.UpdateUser(user);
		
		TB_Implementer implementer = new TB_Implementer();
		implementer.setUserSeqNo(seqNo);
		implementer.setDocNumber(jsonObject.get("docNumber").toString());
		implementer.setImplementerResponsibilityName(jsonObject.get("implementerResponsibilityName").toString());
		implementer.setImplementerNumber(jsonObject.get("implementerNumber").toString());
		
		adminMapper.UpdateImplementer(implementer);
		
		return Message;
	}

	public String updateAppraiser(String param) throws ParseException { // 감정평가사
		String Message = "";
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);

		long seqNo = Long.parseLong(jsonObject.get("seqNo").toString());
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
		//user.setUserType(1);
		user.setUserAuthority("ROLE_USER");
		user.setUserName(name);
		//user.setEmail(completeEmail);
		user.setEmail(email);
		user.setDomain(domain);
		//user.setUserEnabled("1");
		user.setUptdate(LocalDateTime.now());
		//user.setDelCheck(0);
		user.setDept(dept);
		user.setMobile(mobile);
		
		adminMapper.UpdateUser(user);
		
		TB_Appraiser appraiser = new TB_Appraiser();
		appraiser.setUserSeqNo(seqNo);
		appraiser.setCompany(jsonObject.get("company").toString());
		appraiser.setResponsibilityName(jsonObject.get("responsibilityName").toString());
		appraiser.setPhoneNumber(jsonObject.get("phoneNumber").toString());
		//appraiser.setPhoneNumber(mobile);
		
		adminMapper.UpdateAppraiser(appraiser);
		
		return Message;
		
	}
}
