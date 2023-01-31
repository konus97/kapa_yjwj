package egovframework.kapa.member.domain;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class TB_Appraiser extends Pagination { // 감정평가사

    private Long userSeqNo;
    
    //private String email;
    
    private String company; //평가법인
    
    private String responsibilityName; // 담당자명
    
    private String phoneNumber; // 전화
  

    
}
