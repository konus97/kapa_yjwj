package egovframework.kapa.board.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.util.Base64Utils;

import egovframework.kapa.board.domain.BoardList;
import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.board.mapper.BoardMapper;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationList;
import org.apache.commons.codec.binary.Base64;

import javax.servlet.http.HttpServletRequest;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;


@Service
public class BoardContentService {

	@Autowired
	BoardMapper boardMapper;

    
    public void save(BoardVO save) {
    		
    	try {
    		
            /* base64 encoding */
            byte[] encodedBytes = Base64.encodeBase64(save.getContent().getBytes());
    		save.setContent(new String(encodedBytes));
            
    		save.setSeqNo(boardMapper.getSeq() + 1);
    		save.setRegdate(LocalDateTime.now());
    		save.setUptdate(LocalDateTime.now());
    		save.setDelCheck(0);
    		save.setBoardHits(0);
    		
    		boardMapper.save(save);
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
    public void update(BoardVO update) {
		
    	try {
    		
    		System.out.println(update);
    		
            /* base64 encoding */
            byte[] encodedBytes = Base64.encodeBase64(update.getContent().getBytes());
            update.setContent(new String(encodedBytes));
            
            update.setUptdate(LocalDateTime.now());
            update.setDelCheck(0);
    	
    		boardMapper.update(update);
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    
    
    public void delete(BoardVO update) {
		
    	try {
    		
            update.setUptdate(LocalDateTime.now());
            update.setDelCheck(1);
    	
    		boardMapper.delete(update);
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }

	public int getBoardContentCnt(Search search) {
		return boardMapper.getBoardContentCnt(search);

	}


	public List<BoardList> getBoardContentList(Search search) {
		return boardMapper.getBoardContentList(search);
	}
	
	public BoardVO getViewContent(int viewSeq) {
		
		BoardVO boardVO = boardMapper.getViewContent(viewSeq);
	    
        DateTimeFormatter formatter2 = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime regDate= boardVO.getRegdate();
        String rDate = regDate.format(formatter2);
        boardVO.setRegdateStr(rDate);
        
		String getBase64Content = boardVO.getContent();
        byte[] decodedContent = Base64.decodeBase64(getBase64Content);
        boardVO.setContent(new String(decodedContent));

		return boardVO;
	}
    

}
