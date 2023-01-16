package egovframework.kapa.admin.service;


import java.util.List;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.admin.mapper.AdminMapper;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.domain.Search;
import egovframework.kapa.domain.User;


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
    
    
    public void delete(BoardVO update) {
		
    	try {
    		
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }


	public List<AdminVO> getAllUser(Search search) {
		return adminMapper.getMemberList(search);
	}
	
	public int getAllUserCnt() {
		return adminMapper.getAllUserCnt();
	}
	    
	public void addUser (String param) throws Exception {
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
				
		int searchType = Integer.parseInt(jsonObject.get("searchType").toString());
		
		String id = jsonObject.get("id").toString();		// 아이디
		String pwd = jsonObject.get("pwd").toString();		// 패스워드
		String name = jsonObject.get("name").toString();	// 이름
		String dept = jsonObject.get("dept").toString();	// 소속
		String email = jsonObject.get("email").toString();	// 이메일
		String mobile = jsonObject.get("mobile").toString();	// 연락처


		String company = jsonObject.get("company").toString();	// 평가법인
		String responsibilityName = jsonObject.get("responsibilityName").toString();	// 담당자명
		String phoneNumber = jsonObject.get("phoneNumber").toString();	// 전화
		
		String docNumber = jsonObject.get("docNumber").toString();	// 시행문서번호
		String implementerResponsibilityName = jsonObject.get("implementerResponsibilityName").toString();	// 시행사 담당자명
		String implementerNumber = jsonObject.get("implementerNumber").toString();	// 시행사 연락처			
		
		 
		
	}

}
