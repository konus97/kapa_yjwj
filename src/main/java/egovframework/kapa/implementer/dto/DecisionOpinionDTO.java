package egovframework.kapa.implementer.dto;

import java.time.LocalDate;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DecisionOpinionDTO {
	
    private String ownerOpinion;

	private String executorOpinion;
	
    private Integer type;
    
    private String parsedOpinionType;
	
}
