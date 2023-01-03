package egovframework.kapa.domain;

import java.time.LocalDateTime;
import java.util.Date;

import egovframework.kapa.domain.Decision_Target;
import lombok.Data;

@Data
public class User {

	private Long seqNo;
	private int userType;
	private String userId;
	private String userPassword;
	private String userAuthority;
	private String userName;
	private Integer delCheck;
	private LocalDateTime regdate;
	private LocalDateTime uptdate;
	private String userEnabled;
	
}
