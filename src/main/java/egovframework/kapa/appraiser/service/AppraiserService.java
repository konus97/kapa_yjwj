package egovframework.kapa.appraiser.service;


import java.time.LocalDateTime;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.kapa.appraiser.mapper.AppraiserMapper;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Search;

@Service
public class AppraiserService {

	
	@Autowired
	AppraiserMapper mapper;
	
	/**
	 * TB_Decision_Opinion테이블에 Insert
	 *
	 */
	public void saveOpinion(String param) throws ParseException {
					
		JSONParser parser = new JSONParser();

		try {
			JSONArray ownerOpinionArray = (JSONArray) parser.parse(param);
			for (int i=0; i<ownerOpinionArray.size(); i++) {
				Decision_Opinion opinion = new Decision_Opinion();
				JSONObject jsonObject = (JSONObject) ownerOpinionArray.get(i);
				opinion.setSeqNo(mapper.getSeqNo() + 1);
				opinion.setDecisionId(Long.parseLong(jsonObject.get("DecisionId").toString()));
							
				opinion.setOwnerOpinion(jsonObject.get("OwnerOpinion").toString());
				opinion.setExecutorOpinion(jsonObject.get("ExecutorOpinion").toString());
				opinion.setDelCheck(0);
				opinion.setRegdate(LocalDateTime.now().toString());
				mapper.insertOpinion(opinion);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public Integer BooleanParser(Object object) {
		String jsonString = object.toString();
		
		if (jsonString.equals("true")) {
			return 1;
		} else {
			return 0;
		}
		
	}


	public int getApplicationCnt(Search search) {
	       return mapper.getApplicationCnt(search);
	}


	public List<Decision> getApplicationList(Search search) {
		return mapper.getApplicationList(search);
	}
}
