package egovframework.kapa.member.domain;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class TB_Implementer extends Pagination { // 사업시행자

    private Long userSeqNo;
    
    //private String email; // 이메일
    
    private String docNumber; // 시행문서번호
    
    private String implementerResponsibilityName; // 시행자 담당자명
    
    private String implementerNumber; // 시행사 연락처
    
}
