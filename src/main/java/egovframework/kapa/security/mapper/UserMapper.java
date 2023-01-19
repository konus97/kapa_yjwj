package egovframework.kapa.security.mapper;

import egovframework.kapa.security.service.UserVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("userMapper")
public interface UserMapper {

    public UserVO getUserById(String userName);
    public int getUserExist(String userName);

}