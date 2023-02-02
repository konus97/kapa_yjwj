package egovframework.kapa.decision.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import egovframework.kapa.domain.Cites_File;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Announcement_File;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_File;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Notice_File;
import egovframework.kapa.domain.Opinion_File;
import egovframework.kapa.domain.Search;
import egovframework.kapa.file.domain.FileVO;
import egovframework.kapa.file.domain.OpinionFileVO;
import egovframework.kapa.util.MsSQLRepository;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

//@MsSQLRepository
@Mapper
public interface DecisionMapper {

	void insertDecisionNotice(Decision_Notice notice);
	
	void updateState(@Param("decisionState")Integer DecisionState, @Param("seqNo")Long seqNo);

	void updateStateFinal(@Param("decisionState")Integer DecisionState, @Param("seqNo")Long seqNo);

	void updateStep1(@Param("agendaState")Integer agendaState, @Param("seqNo")Long seqNo);

	void updateStep2(@Param("content") String content, @Param("relatedLaws2") String relatedLaws2 ,@Param("reviewOpinion") String reviewOpinion,@Param("decisionId") Long decisionId, @Param("type") Long type);
	
	void updateStep3(@Param("agendaState")Integer agendaState,@Param("decisionId") long decisionId);
	
	List<Decision> getDecisionAnnouncementList(Search search);

	int getDecisionAnnouncementCnt(Search search);
	
	int getDecisionFileCnt(int decisionId);
	
	Decision getDecisionView(Long decisionId);
	
	Decision getDecisionAgendaView(Long decisionId);
	
	Decision getDecisionViewMasterID(Long masterID);
	
	Decision_Notice getDecisionNoticeView(Long decisionId);
	
	List<Decision_Cityplan> getCityPlan(Long decisionId);
	
	List<Decision_Target> getTarget(Long decisionId);
	
	List<Decision_ConsultationDate> getConsultationDate(Long decisionId);
	
	List<Decision_Opinion> getRegisterStepFile(Long decisionId);
	
	List<Decision_Opinion_Item> getOpinionFileList(@Param("decisionId")Long decisionId ,@Param("getType")int getType, @Param("reptSeq")Long reptSeq, @Param("reptOwnrSeq")Long reptOwnrSeq);
	
	int getDecisionCityFileCnt(int decisionId);

	void insertDecisionFile(Decision_File file);
	
	List<Decision_File> getDecisionFileList(Long decisionId);

	int getDecisionAgendaCnt(Search search);

	List<Decision> getDecisionAgendaList(Search search);

	List<Decision_Opinion_Item> getDecisionOpinionItemList(Long viewSeq);

	//reptOwnrSeq까지 받음
	List<Decision_Opinion_Item> getDecisionOpinionItemList2(Decision_Opinion_Item item);


	List<Decision_Opinion> getDecisionOpinionList(Long decisionId);

	List<Decision> getAgendaRegisterList(Search search);

	int getAgendaRegisterCnt(Search search);

	void insertMeetings(Decision_Date decision_Date);

	List<Decision_Date> selectCaseMeeting(Map<String, Object> param);

	List<Decision_Date> getDateList();

	void insertAgendaDate(Decision_AgendaDate insertAgendaDate);

	List<Decision_Opinion> getOpinionList(Long decisionId);
	
	List<Decision_Opinion> getOpinionStep3List(Long decisionId);
	
	List<Decision_Opinion> getRegisterStepList(Long decisionId);
	
	List<Decision_Opinion> getOpinionTypeList(Long decisionId);
	
	List<Decision_Opinion> getPdfOpinionList(Long decisionId);
	
	List<Decision_Opinion> getStepOpinionList(Long decisionId);
	int getOpinionCompletionCount(long decisionId);

	FileVO getFileByDeicisionFileSeq(Integer seqNo);
	
	void insertDecisionAnnoucementFile(Decision_Announcement_File file);

	Decision_Opinion getDecisionOpinionInfo(Long viewSeq);

	List<Decision_Opinion_Item> getDecisionOpinionTypeItemList(Map<String, Object> param);

	int getDecisionOpinionTypeItemCount(Map<String, Object> param);

	void insertOpinionFile(Opinion_File opinionFile);

	void insertNoticeFile(Notice_File noticeFile);

	List<Notice_File> getNoticeFileList(Long decisionId);

	Long getMasterId(Long decisionId);

	void insertCitesFile(Cites_File citesFile);

	List<Cites_File> getCitesFileList(Long decisionId);

	List<OpinionFileVO> getDecisionOpinionItemFiles(Decision_Opinion_Item decision_Opinion_Item);

	

}