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
public class DeliberateDTO {

    private Long seqNo;
    
    private String consultationDate;
    
    private String title;


    
}
