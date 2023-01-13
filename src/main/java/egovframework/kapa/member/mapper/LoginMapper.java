package egovframework.kapa.member.mapper;

import java.util.List;

import egovframework.kapa.domain.LoginUser;
import egovframework.kapa.domain.User;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface LoginMapper {


	User getLoginUserInfo(LoginUser loginUser);
	
	

	

}
