package egovframework.kapa.deliberate.dto;

import java.time.LocalDate;
import java.util.List;

import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DeliberateViewDTO {

	private String consultationDate;
	
    private ApplicationDTO applicationDTO;
    
    private List<Decision_Cityplan> cityPlans;
    
    private List<Decision_ConsultationDate> consultationDates;
    
    private List<DeliberateOpinionDTO> deliberateOpinionDTOS;
    
    private String groupEstablishedDate;

    private Decision decision;
}
