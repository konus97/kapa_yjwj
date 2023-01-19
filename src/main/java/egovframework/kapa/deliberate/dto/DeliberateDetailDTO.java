package egovframework.kapa.deliberate.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DeliberateDetailDTO {

    private Long seqNo;
    
    private String title;

    private String caseNo;
    
    private String judgDivName;
    
    private String reptLoc;
    
    private String recvDt;
    
    private String consultationDate;
}
