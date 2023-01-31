package egovframework.kapa.admin.domain;

import java.time.LocalDateTime;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class AdminVO extends Pagination { 

	// ------------ 공통 --------------
	private int seqNo;
	
	private int userType; // 1: 사업시행자, 2: 감정평가사, 3: else
	
	private String userId;
	
	private String userName;
	
	private String email;
	
	private String userAuthority;
	
	private String dept;

	private LocalDateTime uptdate;
	
	private String mobile; // 연락처
	
	// ------------ 공통 끝 --------------
    

    // 사업시행자  (TB_Implementer). userType : 1 ----------
    
    private String docNumber; // 시행 문서 번호
    
    private String implementerResponsibilityName; // 시행사 담당자명
    
    private String implementerNumber; // 시행사 연락처
    
    // -------------------------- 사업시행자 끝

    // 감정평가사  (TB_Appraiser). userType : 2 ---------- 
    
    private String company; // 평가법인

    private String responsibilityName; // 담당자명
    
    private String phoneNumber; // 전화

    // -------------------------- 감정평가사 끝
    
    
    
 
    //private String //평가법인
	
	// 감정평가사 일때 추가

 
    
}
