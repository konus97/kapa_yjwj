package egovframework.kapa.law.service;


import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.kapa.board.domain.BoardVO;
import egovframework.kapa.domain.Search;
import egovframework.kapa.law.domain.LawVO;
import egovframework.kapa.law.mapper.LawMapper;


@Service
public class LawService {

	@Autowired
	LawMapper lawMapper;
    
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

	public int getAllLawCnt () {
		int num = lawMapper.getAllLawCnt();
		return num;
	}
	
	public List<LawVO> getLawList(Search search){
		return lawMapper.getLawList(search);
	}
	
	public void addLaw (String data) throws ParseException {
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(data);

		String article   = jsonObject.get("article")   .toString();
		String paragraph = jsonObject.get("paragraph") .toString();
		String title     = jsonObject.get("title")     .toString();
		String content   = jsonObject.get("content")   .toString();
		
		LawVO law = new LawVO();
		
		law.setArticle(article);
		law.setParagraph(paragraph);
		law.setTitle(title);
		law.setContent(content);
		law.setRegdate(LocalDateTime.now());
		
		
		lawMapper.addLaw(law);
	}
	
	public LawVO getViewLaw(int seq_no) {
		return lawMapper.getViewLaw(seq_no);
	}
	
	public List<LawVO> getSelectLawList(List<String> list){
		List<LawVO> result = new ArrayList();
		for (int i=0; i<list.size(); i++) {
			int seq_no = Integer.parseInt(list.get(i));
			result.add(i, lawMapper.getViewLaw(seq_no));
		}
		return result;	
	}

	public List<LawVO> getLawTitles(){
		return lawMapper.getLawTitles();
		
	}
	public List<LawVO> getLawArticles(String title){
		return lawMapper.getLawArticles(title);
		
	}
	public List<LawVO> getLawParagraph(LawVO law){
		return lawMapper.getLawParagraph(law);
		
	}
	
}
