package egovframework.kapa.decision.dto;

import lombok.Data;

@Data
public class DecisionStateDTO{

	private Long decisionId;
	
    private int decisionState;
    
    private String decisionStateStr;
    
}
