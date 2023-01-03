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
public class DecisionOpinionFileDTO {
	
    private String opinionTitle;
    
    private String opinionContent;
    
    private Integer type;
    
    private String parsedOpinionType;

	
	
}
