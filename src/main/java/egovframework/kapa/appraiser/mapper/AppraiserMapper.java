package egovframework.kapa.appraiser.mapper;




import java.util.List;

import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Search;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface AppraiserMapper {

	void insertOpinion(Decision_Opinion opinion);
	
	Long getSeqNo();

	int getApplicationCnt(Search search);

	List<Decision> getApplicationList(Search search);

}
