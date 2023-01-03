package egovframework.kapa.member.domain;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class TB_Cities extends Pagination { // 시군구

    private Long userSeqNo;
    
    private String email; // 이메일
    
    private String department; // 부서
    
    private String representativeName; // 담당자명
    
    private String phoneNumber; // 핸드폰번호
    
    private String code; // 지역코드 - > db에서 가져오는 값으로 변경할듯.
    
}

