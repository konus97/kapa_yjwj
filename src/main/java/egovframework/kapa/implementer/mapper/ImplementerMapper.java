package egovframework.kapa.implementer.mapper;

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
import egovframework.kapa.implementer.domain.OwnerViewInfo;
import egovframework.kapa.implementer.dto.DecisionOpinionDTO;
import egovframework.kapa.implementer.dto.DecisionOpinionFileDTO;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface ImplementerMapper {

	List<ApplicationList> getImplementerList(Search search);

	int getImplementerCnt(Search search);
	
	List<Decision> getOpinionList(Search search);

	List<Decision> getLtisCslt(int masterId);
	
	int getOpinionCnt(Search search);
	
	void insertDecision(Decision decision);
	
	Long getSeqNo();

	void updateState(@Param("DecisionState")Integer DecisionState, @Param("SeqNo")Long SeqNo);

	void updateStep1(@Param("DecisionState")Integer DecisionState, @Param("SeqNo")Long SeqNo);
	
	ApplicationList getApplicationView(int masterId);
	
	List<String> getApplicationConsultList(int masterId);
	
	int getApplicationLandCount(int masterId);
	
	int getApplicationLandRightCount(int masterId);	
	
	int getApplicationObjectCount(int masterId);
	
	int getApplicationObjectRightCount(int masterId);
	
	void insertTarget(Decision_Target target);

	void insertCityplan(Decision_Cityplan cityplan);

	void insertConsultationDate(Decision_ConsultationDate consultationDate);

	List<ApplicationLand> getLandInfo(int masterId);

	List<ApplicationLand> getGoodsInfo(int masterId);
	
	ApplicationLandowner getLandOwnerInfo(int ownrIntrSeq);
	
	ApplicationLandRelation getLandRelationInfo(int reptSeq);

	void insertOpinion(Decision_Opinion opinion);
	
	void saveRegister(Decision_Opinion opinion);
	
	void insertOpinionItem(Decision_Opinion_Item opinionItem);

	List<ApplicationLandRelation> getLandRelationInfoList(List<Integer> reptSeqList);
	
	List<OwnerInfo> getOwnerInfoList(int masterId);
	
	List<LandownerInfo> getLandOwnerInfoList(int ownrSeq);

	List<GoodsownerInfo> getGoodsOwnerInfoList(int onwerSeq);

	OwnerViewInfo getOwnerInfo(Long reptSeq);
	
	List<DecisionOpinionDTO> getDecisionOpinion(int ownrSeq);
	
	List<DecisionOpinionFileDTO> getDecisionOpinionFile(int ownrSeq);
	
}
