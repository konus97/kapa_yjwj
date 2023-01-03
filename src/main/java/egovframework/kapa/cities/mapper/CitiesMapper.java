package egovframework.kapa.cities.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.util.MsSQLRepository;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface CitiesMapper {

	int getCitiesAnnouncementrCnt(Search search);

	List<Decision> getCitiesAnnouncementList(Search search);

}
