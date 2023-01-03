package egovframework.kapa.domain;

import lombok.Data;

@Data
public class LoginUser extends Pagination {

	private String loginId;
    private String loginPwd;
   
}
