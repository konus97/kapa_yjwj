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

	public int getSearchUserCnt(Search search) {
		return adminMapper.getSearchUserCnt(search);
	}
	
	public List<AdminVO> getSearchUser(Search search) {
		return adminMapper.getMemberList(search);
	}
}
