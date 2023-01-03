package egovframework.kapa.deliberate.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationLandRelation;
import egovframework.kapa.implementer.domain.ApplicationLandowner;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.domain.GoodsownerInfo;
import egovframework.kapa.implementer.domain.LandownerInfo;
import egovframework.kapa.implementer.domain.OwnerInfo;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface DeliberateMapper {

	List<Decision> getDeliberateList(Search search);

	List<Decision_Date> getDeliberateDateList(Search search);

	List<Decision_AgendaDate> getDeliberateDecisionList(Long selectDate);

	Decision_AgendaDate getDeliberateDecisionDate(Long decisionId);
	
	Decision_Date getDeliberateDate(Long viewSeq);
	
	int getDeliberateCnt(Search search);
	
	int getDeliberateDateCnt(Search search);
	
}
