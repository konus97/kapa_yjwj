package egovframework.kapa.cities.service;


import java.time.LocalDateTime;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import egovframework.kapa.cities.mapper.CitiesMapper;
import egovframework.kapa.decision.mapper.DecisionMapper;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cities;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.mapper.ImplementerMapper;


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
public class CitiesService {

	@Autowired
	DecisionMapper decisionMapper;
	
	@Autowired
	CitiesMapper citiesMapper;

	
	public void completeCities(Decision_Cities cities) throws Exception {

		try	{		
			decisionMapper.updateState(4, cities.getDecisionId());
		}	catch (Exception e) {
			e.printStackTrace();
		}
       
    }
	
	public int getCitiesAnnouncementrCnt(Search search) {
		return citiesMapper.getCitiesAnnouncementrCnt(search);
	}

	public List<Decision> getCitiesAnnouncementList(Search search) {
		return citiesMapper.getCitiesAnnouncementList(search);
	}
	   

}
