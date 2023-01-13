package egovframework.kapa.admin.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.kapa.admin.domain.AdminVO;
import egovframework.kapa.admin.mapper.AdminMapper;
import egovframework.kapa.board.domain.BoardVO;
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


	public List<AdminVO> getAllUser() {
		return adminMapper.getMemberList();
	}
	    

}
