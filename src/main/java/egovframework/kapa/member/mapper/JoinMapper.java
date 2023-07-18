package egovframework.kapa.member.mapper;

import egovframework.kapa.domain.LoginUser;
import egovframework.kapa.domain.User;
import egovframework.kapa.member.domain.TB_Appraiser;
import egovframework.kapa.member.domain.TB_Cities;
import egovframework.kapa.member.domain.TB_Implementer;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface JoinMapper {


	void InsertAppraiser(TB_Appraiser appraiser);
	
	void InsertImplementer(TB_Implementer implementer);
	
	void InsertCities(TB_Cities cities);
	
	Long checkUserCaseNo(String caseNo);
	
	Long InsertUser(User user);
	
	Long countJudgeInfo(String caseNo);
	
	Long getUserSeqNo(User user);
}
