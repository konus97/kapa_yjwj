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
    
    public void updateLaw(String param) throws ParseException {
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);

		int seq_no   = Integer.parseInt(jsonObject.get("seqNo").toString());
		String article   = jsonObject.get("article")   .toString();
		String paragraph = jsonObject.get("paragraph") .toString();
		String title     = jsonObject.get("title")     .toString();
		String content   = jsonObject.get("content")   .toString();
		String department= jsonObject.get("department").toString();
		
		LawVO law = new LawVO();
		
		law.setSeq_no(seq_no);
		law.setArticle(article);
		law.setParagraph(paragraph);
		law.setTitle(title);
		law.setContent(content);
		law.setUptdate(LocalDateTime.now());
		law.setDepartment(department);
		
		
		lawMapper.updateLaw(law);
	}
    
    
    public void deleteLaw(int seq_no) {
		lawMapper.deleteLaw(seq_no);
    }

	public int getLawCnt (LawVO law) {
		return lawMapper.getLawCnt(law);
	}
	
	public List<LawVO> getLawList(LawVO law){
		return lawMapper.getLawList(law);
	}
	
	public void addLaw (String data) throws ParseException {
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(data);

		String article   = jsonObject.get("article")   .toString();
		String paragraph = jsonObject.get("paragraph") .toString();
		String title     = jsonObject.get("title")     .toString();
		String content   = jsonObject.get("content")   .toString();
		String department= jsonObject.get("department").toString();
		
		LawVO law = new LawVO();
		
		law.setArticle(article);
		law.setParagraph(paragraph);
		law.setTitle(title);
		law.setContent(content);
		law.setRegdate(LocalDateTime.now());
		law.setDepartment(department);
		
		
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
