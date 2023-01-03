package egovframework.kapa.member.domain;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class JoinDTO extends Pagination { // 사업시행자

    private String phoneNumber;
    
    private String password;

    private String email;
    
    private String domain;
    
    private String docNumber; // 시행 문서 번호
    
    private String representativeName; // 시행자 담당자명
    
    private String representativeNumber; // 시행사 연락처
 
    //private String //평가법인

 
    
}
