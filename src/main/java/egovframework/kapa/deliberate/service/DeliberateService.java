package egovframework.kapa.deliberate.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.Const.AgencyData;
import egovframework.kapa.implementer.Const.BusinessCode;
import egovframework.kapa.implementer.Const.DecisonState;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationLandRelation;
import egovframework.kapa.implementer.domain.ApplicationLandowner;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.domain.GoodsownerInfo;
import egovframework.kapa.implementer.domain.LandownerInfo;
import egovframework.kapa.implementer.domain.OwnerInfo;
import egovframework.kapa.implementer.domain.OwnerViewInfo;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.dto.OwnerInfoDTO;
import egovframework.kapa.decision.Const.ItemData;
import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.dto.DecisionStateDTO;
import egovframework.kapa.decision.mapper.DecisionMapper;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.deliberate.dto.DeliberateDTO;
import egovframework.kapa.deliberate.dto.DeliberateDetailDTO;
import egovframework.kapa.deliberate.dto.DeliberateOpinionDTO;
import egovframework.kapa.deliberate.dto.DeliberateOpinionItemDTO;
import egovframework.kapa.deliberate.dto.DeliberateViewDTO;
import egovframework.kapa.deliberate.mapper.DeliberateMapper;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_AgendaDate;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Date;
import egovframework.kapa.domain.Decision_Notice;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.kapa.implementer.mapper.ImplementerMapper;
import egovframework.kapa.implementer.service.ImplementerService;
import egovframework.kapa.util.StrUtil;

/**
 * <pre>
* 1. 패키지명 : com.kapa.implementer.service
* 2. 타입명 : ImplementerService.java
* 3. 작성일 : 2022.11.08
* 4. 작성자 : kbs
* 5. 설명 : 사업시행자 LTIS입력정보확인/재결의견 작성 서비스
 * </pre>
 */
@Service
public class DeliberateService {

	@Autowired
	DeliberateMapper deliberateMapper;

	@Autowired
	DecisionMapper decisionMapper;

	@Autowired
	ImplementerService implementerService;

	@Autowired
	DecisionService decisionService;

	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

	public int getDeliberateDateCnt(Search search) throws Exception {
		return deliberateMapper.getDeliberateDateCnt(search);
	}

	public List<Decision_Date> getDeliberateDateList(Search search) {
		return deliberateMapper.getDeliberateDateList(search);
	}

	public List<Decision_AgendaDate> getDeliberateDecisionList(Long seqNo) {
		return deliberateMapper.getDeliberateDecisionList(seqNo);
	}

	public List<DeliberateDTO> getDeliberateListFormatter(List<Decision_Date> pagingResult) {

		List<DeliberateDTO> deliberateDTOS = new ArrayList<>();

		for (Decision_Date decisionDate : pagingResult) {

			Long seqNo = decisionDate.getSeqNo();

			List<Decision_AgendaDate> decisionAgendaList = deliberateMapper.getDeliberateDecisionList(seqNo);
			String title = "";

			if (decisionAgendaList.size() == 0) {
				continue;
			} else if (decisionAgendaList.size() >= 1) {

				System.out.println(decisionAgendaList.size());

				int rank = 0;

				for (Decision_AgendaDate decisionAgendaDate : decisionAgendaList) {
					Decision decision = decisionMapper.getDecisionView(decisionAgendaDate.getDecisionId());

					if (rank == 0) {
						ApplicationList applicationList = implementerService.getApplicationView(decision.getMasterID());
						title = applicationList.getJudg_biz_nm();
					}

					rank++;

				}

				System.out.println(rank);

				if (rank > 1) {
					int rankStr = rank - 1;
					System.out.println(rankStr);

					title = title + " 외 " + rankStr;
				}

			}

			String consultationDate = decisionDate.getConsultationDate().format(formatter);

			DeliberateDTO deliberateDTO = DeliberateDTO.builder().seqNo(seqNo).consultationDate(consultationDate)
					.title(title).build();

			deliberateDTOS.add(deliberateDTO);
		}

		// TODO Auto-generated method stub
		return deliberateDTOS;
	}

	public List<DeliberateDetailDTO> getDeliberateDetialListFormatter(List<Decision_AgendaDate> pagingResult) {

		List<DeliberateDetailDTO> deliberateDTOS = new ArrayList<>();

		for (Decision_AgendaDate decisionAgendaDate : pagingResult) {
			System.out.println("agendadate start");
			Decision decision = decisionMapper.getDecisionView(decisionAgendaDate.getDecisionId());
			Decision_Date decisionDate = deliberateMapper.getDeliberateDate(decisionAgendaDate.getSelectDate());
			Long selectDate = decisionDate.getSeqNo();
			System.out.println("sdafasdfsa" + selectDate);
			
			String consultationDate = decisionDate.getConsultationDate().format(formatter);
			ApplicationList applicationList = implementerService.getApplicationView(decision.getMasterID());
			String title = applicationList.getJudg_biz_nm();

			int acpt_judg_inst_cd = applicationList.getAcpt_judg_inst_cd();
			String judgDivName = "";

			// acpt_judg_inst_cd
			// System.out.println(acpt_judg_inst_cd);

			if (acpt_judg_inst_cd == AgencyData.Seoul.getCode()) {
				judgDivName = AgencyData.Seoul.getKrName();
			} else if (acpt_judg_inst_cd == AgencyData.Central.getCode()) {
				judgDivName = AgencyData.Central.getKrName();
			}

			String recvDt = applicationList.getRecv_dt().format(formatter);

			DeliberateDetailDTO deliberateDetailDTO = DeliberateDetailDTO.builder().seqNo(decision.getSeqNo())
					.title(title).consultationDate(consultationDate).selectDate(selectDate).caseNo(applicationList.getCase_no()).judgDivName(judgDivName)
					.reptLoc(applicationList.getRept_loc()).recvDt(recvDt).build();

			deliberateDTOS.add(deliberateDetailDTO);

		}

		return deliberateDTOS;
	}

	public List<DeliberateViewDTO> getDeliberateViewFormatter(List<Decision_AgendaDate> pagingResult) {

		List<DeliberateViewDTO> deliberateViewDTOS = new ArrayList<>();
		
	
		int rank = 1;
		
		Decision_Date decisionDate = deliberateMapper.getDeliberateDate(pagingResult.get(0).getSelectDate());
		String consultationDate = decisionDate.getConsultationDate().format(formatter);
		
		for (Decision_AgendaDate decisionAgendaDate : pagingResult) {
			
			Decision decision = decisionMapper.getDecisionView(decisionAgendaDate.getDecisionId());

			Long decisionId = decision.getSeqNo();

			ApplicationList applicationVo = implementerService.getApplicationView(decision.getMasterID());
			ApplicationDTO applicationDTO = implementerService.makeImplementerViewFormatter(applicationVo);

			List<Decision_Cityplan> cityPlans = decisionService.getCityPlan(decisionId);

			List<Decision_ConsultationDate> consultationDates = decisionService.getConsultationDate(decisionId);

			// DeliberateOpinion
			List<Decision_Opinion> opinionList = decisionService.getOpinionList(decisionId);
			List<DeliberateOpinionDTO> deliberateOpinionDTOS = new ArrayList<>();

			for (Decision_Opinion opinion : opinionList) {

				Long reptSeq = opinion.getReptSeq();
				Long reptOwnrSeq = opinion.getReptOwnrSeq();
				System.out.print(reptSeq);
				System.out.print("testtest: " + reptOwnrSeq);
				// 공고 상태
				int getType = opinion.getType();
				System.out.print(getType);
				
				OwnerViewInfo ownerViewInfo = implementerService.getOwnerInfo(reptOwnrSeq);
				System.out.println(ownerViewInfo);
				
				System.out.println("여긴가?");
				String land_obst_kind_cd= ownerViewInfo.getLand_obst_kind_cd();
				boolean landCheck = false; 
				boolean objectCheck = false; 
				if("L".equals(land_obst_kind_cd)) {
					landCheck=true;
				}else {
					objectCheck=true;
				}
				
				String getTypeStr = "";

				for (int i = 0; i < ItemData.values().length; i++) {

					int code = ItemData.values()[i].getCode();

					if (code == getType) {
						getTypeStr = ItemData.values()[i].getKrName();
						break;
					}
				}
				boolean itemCheck = false;
			
				int itemCount = decisionService.getDecisionOpinionTypeItemCount(reptSeq,getType);
				System.out.print(itemCount);
				
				List<DeliberateOpinionItemDTO> deliberateOpinionItemDTOS = new ArrayList<>();
				 
				if(itemCount>0) {
					 itemCheck = true;
					List<Decision_Opinion_Item> opinionItemList = decisionService.getDecisionOpinionTypeItemList(reptSeq,getType);
					System.out.print(opinionItemList.size());
						
					for(Decision_Opinion_Item opinionItem : opinionItemList) {
						  
						  DeliberateOpinionItemDTO deliberateOpinionItemDTO = DeliberateOpinionItemDTO.builder()
								  						.title(opinionItem.getOpinionTitle())
								  						.content(opinionItem.getOpinionContent())
								  						.fileNameChange(opinionItem.getFileNameChange())
								  						.fileFolder(opinionItem.getFileFolder())
								  						.build();
						  System.out.println("ayyayayyay ::::::::::" + opinionItem.getFileNameChange());
						  System.out.println("ayyayayyay ::::::::::" + opinionItem.getFileFolder());
						  deliberateOpinionItemDTOS.add(deliberateOpinionItemDTO); 
					}
					 System.out.print(opinionItemList);
				}
				 
				DeliberateOpinionDTO deliberateOpinionDTO = DeliberateOpinionDTO.builder().type(getType)
						.typeStr(getTypeStr)
						.ownerOpinion(opinion.getOwnerOpinion())
						.executorOpinion(opinion.getExecutorOpinion())
						.opinionText(opinion.getOpinionText())
						.relatedLaws(opinion.getRelatedLaws())
						.relatedLaws2(opinion.getRelatedLaws2())
						.reviewOpinion(opinion.getReviewOpinion())
						.itemCheck(itemCheck)
						.landCheck(landCheck)
						.objectCheck(objectCheck)
						.ownerViewInfo(ownerViewInfo)
						.deliberateOpinionItemDTOS(deliberateOpinionItemDTOS)
						.build();

				deliberateOpinionDTOS.add(deliberateOpinionDTO);
			}

			DeliberateViewDTO deliberateViewDTO = DeliberateViewDTO.builder()
					.consultationDate(consultationDate)
					.applicationDTO(applicationDTO)
					.cityPlans(cityPlans)
					.groupEstablishedDate(decision.getGroupEstablishedDate())
					.consultationDates(consultationDates)
					.decision(decision)
					.deliberateOpinionDTOS(deliberateOpinionDTOS).build();

			deliberateViewDTOS.add(deliberateViewDTO);

			rank++;
		}

		return deliberateViewDTOS;
	}

	public DeliberateViewDTO getDeliberateViewInfoFormatter(Long decisionId) {
		
		Decision_AgendaDate decisionAgendaDate = deliberateMapper.getDeliberateDecisionDate(decisionId);
		
		Decision_Date decisionDate = deliberateMapper.getDeliberateDate(decisionAgendaDate.getSelectDate());
		String consultationDate = decisionDate.getConsultationDate().format(formatter);
		
		Decision decision = decisionMapper.getDecisionView(decisionId);

		ApplicationList applicationVo = implementerService.getApplicationView(decision.getMasterID());
		ApplicationDTO applicationDTO = implementerService.makeImplementerViewFormatter(applicationVo);

		List<Decision_Cityplan> cityPlans = decisionService.getCityPlan(decisionId);

		List<Decision_ConsultationDate> consultationDates = decisionService.getConsultationDate(decisionId);

		// DeliberateOpinion
		List<Decision_Opinion> opinionList = decisionService.getOpinionList(decisionId);
		List<DeliberateOpinionDTO> deliberateOpinionDTOS = new ArrayList<>();

		for (Decision_Opinion opinion : opinionList) {

			Long reptSeq = opinion.getReptOwnrSeq();
			System.out.print(reptSeq);
			// 공고 상태
			int getType = opinion.getType();
			System.out.print(getType);
			
			OwnerViewInfo ownerViewInfo = implementerService.getOwnerInfo(reptSeq);
			System.out.println(ownerViewInfo);
			
			String land_obst_kind_cd= ownerViewInfo.getLand_obst_kind_cd();
			boolean landCheck = false; 
			boolean objectCheck = false; 
			if("L".equals(land_obst_kind_cd)) {
				landCheck=true;
			}else {
				objectCheck=true;
			}
			
			String getTypeStr = "";

			for (int i = 0; i < ItemData.values().length; i++) {

				int code = ItemData.values()[i].getCode();

				if (code == getType) {
					getTypeStr = ItemData.values()[i].getKrName();
					break;
				}
			}
			boolean itemCheck = false;
		
			int itemCount = decisionService.getDecisionOpinionTypeItemCount(reptSeq,getType);
			System.out.print(itemCount);
			
			List<DeliberateOpinionItemDTO> deliberateOpinionItemDTOS = new ArrayList<>();
			 
			if(itemCount>0) {
				 itemCheck = true;
				List<Decision_Opinion_Item> opinionItemList = decisionService.getDecisionOpinionTypeItemList(reptSeq,getType);
				System.out.print(opinionItemList.size());
					
				for(Decision_Opinion_Item opinionItem : opinionItemList) {
					  
					  DeliberateOpinionItemDTO deliberateOpinionItemDTO = DeliberateOpinionItemDTO.builder()
							  						.title(opinionItem.getOpinionTitle())
							  						.content(opinionItem.getOpinionContent())
							  						.build();
					  
					  deliberateOpinionItemDTOS.add(deliberateOpinionItemDTO); 
				}
				 System.out.print(opinionItemList);
			}
			 
			DeliberateOpinionDTO deliberateOpinionDTO = DeliberateOpinionDTO.builder().type(getType)
					.typeStr(getTypeStr)
					.ownerOpinion(opinion.getOwnerOpinion())
					.executorOpinion(opinion.getExecutorOpinion())
					.opinionText(opinion.getOpinionText())
					.relatedLaws(opinion.getRelatedLaws())
					.relatedLaws2(opinion.getRelatedLaws2())
					.reviewOpinion(opinion.getReviewOpinion())
					.itemCheck(itemCheck)
					.landCheck(landCheck)
					.objectCheck(objectCheck)
					.ownerViewInfo(ownerViewInfo)
					.deliberateOpinionItemDTOS(deliberateOpinionItemDTOS)
					.build();

			deliberateOpinionDTOS.add(deliberateOpinionDTO);
		}
		
		DeliberateViewDTO deliberateViewDTO = DeliberateViewDTO.builder()
				.consultationDate(consultationDate)
				.applicationDTO(applicationDTO)
				.cityPlans(cityPlans)
				.groupEstablishedDate(decision.getGroupEstablishedDate())
				.consultationDates(consultationDates)
				.decision(decision)
				.deliberateOpinionDTOS(deliberateOpinionDTOS).build();
		
		return deliberateViewDTO;
	}

}
