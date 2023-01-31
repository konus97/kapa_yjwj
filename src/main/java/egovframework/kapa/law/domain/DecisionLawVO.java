package egovframework.kapa.law.domain;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class DecisionLawVO extends Pagination { // 관련 법령

	private int seq_no;
	
	private int seq_no_law;
	
	private long Decision_id; // 
	
}
