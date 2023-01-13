package egovframework.kapa.admin.domain;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class AdminVO extends Pagination { // 사업시행자

	private int userType;
	
	private String userId;
	
	private String userName;
	
	private String userAuthority;
	
    
    private String email;
    
    private String company;

    private String representativeName; // 시행자 담당자명
    
    private String phoneNumber;
    
    
    
    private String docNumber; // 시행 문서 번호
    
    private String representativeNumber; // 시행사 연락처
 
    //private String //평가법인

 
    
}
