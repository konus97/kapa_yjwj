package egovframework.kapa.domain;

import java.time.LocalDateTime;
import java.util.Date;

import egovframework.kapa.domain.Decision_Target;
import lombok.Data;

@Data
public class User {

	private Long seqNo;
	private int userType;	// 1: 사업시행자, 2: 감정평가사, 3: 시군구
	private String userId;
	private String userPassword;
	private String userAuthority;
	private String userName;
	private String email; 
	private String domain; // @ 이후 주소
	private Integer delCheck;
	private LocalDateTime regdate;
	private LocalDateTime uptdate;
	private String userEnabled;
	private String dept;	// 소속
	private String mobile;  // 연락처
	
}
