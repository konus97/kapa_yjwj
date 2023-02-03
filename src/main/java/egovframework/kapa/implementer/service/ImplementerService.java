package egovframework.kapa.implementer.service;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.kapa.decision.Const.ItemData;
import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.dto.DecisionStateDTO;
import egovframework.kapa.decision.mapper.DecisionMapper;
import egovframework.kapa.decision.service.DecisionService;
import egovframework.kapa.deliberate.dto.DeliberateOpinionDTO;
import egovframework.kapa.deliberate.dto.DeliberateOpinionItemDTO;
import egovframework.kapa.deliberate.dto.DeliberateViewDTO;
import egovframework.kapa.deliberate.mapper.DeliberateMapper;
import egovframework.kapa.domain.Decision;
import egovframework.kapa.domain.Decision_Cityplan;
import egovframework.kapa.domain.Decision_ConsultationDate;
import egovframework.kapa.domain.Decision_Opinion;
import egovframework.kapa.domain.Decision_Opinion_Item;
import egovframework.kapa.domain.Decision_Target;
import egovframework.kapa.domain.Search;
import egovframework.kapa.implementer.Const.AgencyData;
import egovframework.kapa.implementer.Const.BusinessCode;
import egovframework.kapa.implementer.Const.DecisonState;
import egovframework.kapa.implementer.domain.ApplicationLand;
import egovframework.kapa.implementer.domain.ApplicationLandRelation;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.domain.GoodsownerInfo;
import egovframework.kapa.implementer.domain.LandownerInfo;
import egovframework.kapa.implementer.domain.OwnerInfo;
import egovframework.kapa.implementer.domain.OwnerViewInfo;
import egovframework.kapa.implementer.dto.ApplicationDTO;
import egovframework.kapa.implementer.dto.ApplicationGoodsDTO;
import egovframework.kapa.implementer.dto.ApplicationLandDTO;
import egovframework.kapa.implementer.dto.DecisionOpinionDTO;
import egovframework.kapa.implementer.dto.DecisionOpinionFileDTO;
import egovframework.kapa.implementer.dto.OwnerInfoDTO;
import egovframework.kapa.implementer.mapper.ImplementerMapper;
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
public class ImplementerService {

	@Autowired
	ImplementerMapper implementerMapper;
	
	@Autowired
	DecisionService decisionService;
	@Autowired
	DeliberateMapper deliberateMapper;

	@Autowired
	DecisionMapper decisionMapper;
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	
	public int getImplementerCnt(Search search) throws Exception {
        return implementerMapper.getImplementerCnt(search);
    }
	   
	
	public List<ApplicationList> getImplementerList(Search search) {
		return implementerMapper.getImplementerList(search);
	}
	
	public int getOpinionCnt(Search search) throws Exception {
        return implementerMapper.getOpinionCnt(search);
    }
	
	public List<Decision> getOpinionList(Search search) {
		return implementerMapper.getOpinionList(search);
	}
	public List<Decision> getLtisCslt(int masterId) {
		return implementerMapper.getLtisCslt(masterId);
	}
	
	public List<LandownerInfo> getLandOwnerInfoList(int onwerSeq) {
		return implementerMapper.getLandOwnerInfoList(onwerSeq);
	}
	
	public List<GoodsownerInfo> getGoodsOwnerInfoList(int onwerSeq) {
		return implementerMapper.getGoodsOwnerInfoList(onwerSeq);
	}
	
	public OwnerViewInfo getOwnerInfo(Long reptSeq) {
		return implementerMapper.getOwnerInfo(reptSeq);
	}
	

    public List<ApplicationDTO> getImplementerListFormatter(List<ApplicationList> applicationList) {
    	
    	System.out.println("사업정보 list :::::" + applicationList);
        List<ApplicationDTO> applicationDTOS = new ArrayList<>();

        int rank = 1;

        for (ApplicationList application : applicationList) {
        
        	int acpt_judg_inst_cd = application.getAcpt_judg_inst_cd();
        	String judgDivName = "";
        	
        	//acpt_judg_inst_cd
         	//System.out.println(acpt_judg_inst_cd); 
          	
        	if(acpt_judg_inst_cd==AgencyData.Seoul.getCode()) {
        		judgDivName = AgencyData.Seoul.getKrName();
        	}else if(acpt_judg_inst_cd==AgencyData.Central.getCode()) {
        		judgDivName = AgencyData.Central.getKrName();
        	}
        	System.out.println("데이트 ::::::" + application.getViewReqDate());
        	String recvDt = application.getViewReqDate().format(formatter);
        	
        	DecisionStateDTO decisionStateDTO = decisionService.getDecisionState(application.getSeq());
        	String decisionStateStr = decisionStateDTO.getDecisionStateStr();

         	
            ApplicationDTO applicationDTO =
            		ApplicationDTO.builder()
                            .judgSeq(application.getSeq())
                            .recvDt(recvDt)
                            .judgBizNm(application.getTitle())
                            .judgDivName(judgDivName)
                            .rept_loc(application.getConsultAddr())
                            .caseNo(application.getCase_no())
                            .charge(application.getCharge())
                            .custName(application.getCustName())
                            .custMan(application.getCustMan())
                            //.ichr_id(application.getIchr_id())
                            .decisionStateStr(decisionStateStr)
                            .decisionState(decisionStateDTO.getDecisionState())
                            .build();

            applicationDTOS.add(applicationDTO);
            rank++;
        }

        return applicationDTOS;

    }
   
    public ApplicationDTO makeImplementerViewFormatter(ApplicationList application) {
        
    	Long decisionId = 0L;
    	int acpt_judg_inst_cd = application.getAcpt_judg_inst_cd();
    	String judgDivName = "";
    	
    	//acpt_judg_inst_cd
     	//System.out.println(acpt_judg_inst_cd); 
      	
    	if(acpt_judg_inst_cd==AgencyData.Seoul.getCode()) {
    		judgDivName = AgencyData.Seoul.getKrName();
    	}else if(acpt_judg_inst_cd==AgencyData.Central.getCode()) {
    		judgDivName = AgencyData.Central.getKrName();
    	}
    	
    	//재결구분코드
    	int judgDivCd = application.getJudg_div_cd();
    	String judeDivCdName = "";
    	
    	if(judgDivCd==10) {
    		judeDivCdName="수용";
    	}else if(judgDivCd==20) {
    		judeDivCdName="이의";
    	}
    	
    	String recvDt = new String();
    	String priceDt = new String();
    	if(application.getViewReqDate() != null) {
    		recvDt = application.getViewReqDate().format(formatter);
    	}
    	if (application.getCostDate() != null) {
    		priceDt = application.getCostDate().format(formatter);
    	}
	// 	String recmReqStartDate = application.getConsultDate_S().format(formatter);
    //	String recmReqEndDate = application.getConsultDate_E().format(formatter);
    	
    	//사업코드
    	int bizTpCd = application.getBiz_tp_cd();
    	String bizTpCdTitle = "";
    	
    	 for(int i=0 ; i<BusinessCode.values().length ; i++) {
 
    		 int code = BusinessCode.values()[i].getCode();
    		 
    		 if(code==bizTpCd) {
    			 bizTpCdTitle = BusinessCode.values()[i].getKrName();
    			 break;
    		 }

        }
    	 
    	DecisionStateDTO decisionStateDTO = decisionService.getDecisionState(application.getSeq());
     	boolean nextStepCheck = false;
     	
     	String decisionStateStr = decisionStateDTO.getDecisionStateStr();
     	
     	System.out.println(decisionStateDTO.getDecisionState());
     	
     	if("대기".equals(decisionStateStr)) {
     		nextStepCheck=true;
     	}else {
     		decisionId=decisionStateDTO.getDecisionId();
     	}
    	    
        ApplicationDTO applicationDTO =
        		ApplicationDTO.builder()
        				.decisionId(decisionId)
                        .judgSeq(application.getSeq())
                        .recvDt(recvDt)
                        .priceDt(priceDt)
                        .charge(application.getCharge())
                        .consultAppName(application.getConsultAppName())
                        .title(application.getTitle())
                        .judgBizNm(application.getJudg_biz_nm())
                        .judgDivName(judgDivName)
                        .rept_loc(application.getRept_loc())
                        .caseNo(application.getCase_no())
                        .consultAppName(application.getConsultAppName())
                       // .ichr_id(application.getIchr_id())
                       // .csltApprInstNm(application.getCslt_appr_inst_nm())
                        .judeDivCdName(judeDivCdName)
                        .bizTpCd(bizTpCdTitle)
                        .reptLoc(application.getRept_loc())
                      //  .bizOprtNm(application.getBiz_oprt_nm())
                        .bizOprtIchrNm(application.getBiz_oprt_ichr_nm())
                        .bizOprtPhoneNo(application.getChargeHP())
                    //    .recmReqStartDate(recmReqStartDate)
                   //     .recmReqEndDate(recmReqEndDate)
                        .custName(application.getCustName())
                  //      .rwrdPrce(application.getRwrd_prce())
                        .decisionStateStr(decisionStateStr)
                        .decisionState(decisionStateDTO.getDecisionState())
                        .nextStepCheck(nextStepCheck)
                        .build();

        return applicationDTO;

    }
	
	public void saveDecision(String param) throws ParseException {
	
		Decision decision = new Decision();

		String groupEstablishedDate;
		String DecisionReason;
		
		decision.setSeqNo(implementerMapper.getSeqNo() + 1);
		
		
		JSONParser parser = new JSONParser();
		
		JSONObject jsonObject = (JSONObject)parser.parse(param);
		
		JSONArray Decision_TargetList = (JSONArray) jsonObject.get("Decision_Target");
		JSONArray Decision_CityPlan = (JSONArray) jsonObject.get("CityPlan");
		JSONArray Decision_DateArr = (JSONArray) jsonObject.get("DateArr");
		
		try {

			 groupEstablishedDate = jsonObject.get("groupEstablishedDate").toString();
			 DecisionReason = jsonObject.get("decisionReason").toString();
				
			/*
			 * MasterID
			 */
			if ( jsonObject.get("masterID") == null ) {
				decision.setMasterID(43522);	
				System.out.println("null입니다.");
			} else {
				int masterId = Integer.parseInt(jsonObject.get("masterID").toString());
				decision.setMasterID(masterId);
				System.out.println("null이아닙니다.");
			}

			
			decision.setGroupEstablishedDate(groupEstablishedDate);
			decision.setDecisionReason(DecisionReason);
			
			decision.setAgendaState(0);
			decision.setDecisionState(2);
			decision.setAgendaState(0);
			decision.setDelCheck(0);
			decision.setRegdate(LocalDateTime.now());
			decision.setUptdate(LocalDateTime.now());
			decision.setBusinessOperator(jsonObject.get("businessOperator").toString());
			decision.setGovernor(jsonObject.get("governor").toString());
			decision.setLandowner(jsonObject.get("landowner").toString());
			
			/**
			 * 값이 넘어오지 않아 진행이 안되는걸 방지하기 위해 임의의 0값 삽입
			 */
			
			decision.setAmountA(Long.parseLong(jsonObject.get("amountA").toString().isEmpty() ? "0" : jsonObject.get("amountA").toString()));
			decision.setAmountB(Long.parseLong(jsonObject.get("amountB").toString().isEmpty() ? "0" : jsonObject.get("amountB").toString()));
			decision.setAmountC(Long.parseLong(jsonObject.get("amountC").toString().isEmpty() ? "0" : jsonObject.get("amountC").toString()));
			decision.setLandCnt(Long.parseLong(jsonObject.get("landCnt").toString().isEmpty() ? "0" : jsonObject.get("landCnt").toString()));
			decision.setLandArea(Long.parseLong(jsonObject.get("landArea").toString().isEmpty() ? "0" : jsonObject.get("landArea").toString()));
			decision.setLandPrice(Long.parseLong(jsonObject.get("landPrice").toString().isEmpty() ? "0" : jsonObject.get("landPrice").toString()));
			decision.setObjCnt(Long.parseLong(jsonObject.get("objCnt").toString().isEmpty() ? "0" : jsonObject.get("objCnt").toString()));
			decision.setObjPrice(Long.parseLong(jsonObject.get("objPrice").toString().isEmpty() ? "0" : jsonObject.get("objPrice").toString()));
			decision.setGoodwillCnt(Long.parseLong(jsonObject.get("goodwillCnt").toString().isEmpty() ? "0" : jsonObject.get("goodwillCnt").toString()));
			decision.setGoodwillPrice(Long.parseLong(jsonObject.get("goodwillPrice").toString().isEmpty() ? "0" : jsonObject.get("goodwillPrice").toString()));
	
			/**
			 * 임시 userSeq 하드코딩
			 */
			decision.setUserSeq(1L);		
				
			implementerMapper.insertDecision(decision);
			
			Long DecisionId = decision.getSeqNo();		
			//Decision 완료
			
			//도시계획
			if(Decision_CityPlan.size()>0) {
				
				int rank = 1;
				
				for(int i=0; i<Decision_CityPlan.size(); i++) {
					JSONObject JSONTarget = (JSONObject)Decision_CityPlan.get(i);
					Decision_Cityplan cityplan = new Decision_Cityplan();
					
					cityplan.setPlanTitle(JSONTarget.get("relationTitle").toString());
					cityplan.setPlanContent(JSONTarget.get("relationContent").toString());			
					cityplan.setDecisionId(DecisionId);
					cityplan.setRank(rank);
					cityplan.setDelCheck(0);
					cityplan.setRegdate(LocalDateTime.now().toString());
				          	
					saveCityplan(cityplan);
					rank++;
				}
			}
	
			
			//협의날짜
			if(Decision_DateArr.size()>0) {
				
				int rank = 1;
				
				for(int i=0; i<Decision_DateArr.size(); i++) {
					JSONObject JSONTarget = (JSONObject)Decision_DateArr.get(i);
					Decision_ConsultationDate cnsultationDate = new Decision_ConsultationDate();
					
					cnsultationDate.setConsultationDate(JSONTarget.get("consultationDate").toString());
					cnsultationDate.setDecisionId(DecisionId);
					cnsultationDate.setRank(rank);
					cnsultationDate.setDelCheck(0);
					cnsultationDate.setRegdate(LocalDateTime.now().toString());
					cnsultationDate.setConsultationDateText(JSONTarget.get("consultationDateText").toString());
				          	
					saveConsultationDate(cnsultationDate);
					rank++;
				}
			}
			
		
			for(int i=0; i<Decision_TargetList.size(); i++) {
				JSONObject JSONTarget = (JSONObject)Decision_TargetList.get(i);
				Decision_Target target = new Decision_Target();
				target.setTargetInfo(JSONTarget.get("TargetInfo").toString());
				target.setBUN1(JSONTarget.get("BUN1").toString());
				target.setBUN2(JSONTarget.get("BUN2").toString());
				target.setArea_Before_Transfer(JSONTarget.get("Area_Before_Transfer").toString());
				target.setArea_After_Transfer(JSONTarget.get("Area_After_Transfer").toString());
				target.setEtc(JSONTarget.get("Etc").toString());
				target.setDecisionId(DecisionId);
				target.setDelCheck(0);
				target.setRegdate(LocalDateTime.now().toString());
				saveTarget(target);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	public void completeOpinion(String param) {
	
		JSONParser parser = new JSONParser();
	
		try {
			
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());
			
			JSONArray opinionList = (JSONArray) jsonObject.get("opinionList");
			JSONArray addOpinionItemArray = (JSONArray) jsonObject.get("addOpinionItemArray");
			//Textarea 정보 업데이트

			if(addOpinionItemArray.size()>0) {				
				
				for(int i=0; i<addOpinionItemArray.size(); i++) {
					JSONObject JSONTarget = (JSONObject)addOpinionItemArray.get(i);
					System.out.println("==========================★==========================");			
					System.out.println(JSONTarget);
					System.out.println("==========================★==========================");			

					
					Decision_Opinion opinion = new Decision_Opinion();
					
					long reptSeq = Long.parseLong(JSONTarget.get("reptSeq").toString());
					long reptOwnrSeq = Long.parseLong(JSONTarget.get("reptOwnrSeq").toString());
					System.out.println("ownrNm :::::::::" + JSONTarget.get("ownrNm").toString());
					Integer type = Integer.parseInt(JSONTarget.get("type").toString()); 
					
					System.out.println(type);
					
					opinion.setType(type);
					opinion.setOwnerOpinion(JSONTarget.get("ownerOpinion").toString());
					opinion.setExecutorOpinion(JSONTarget.get("executorOpinion").toString());
					opinion.setOwnrNm(JSONTarget.get("ownrNm").toString());
					opinion.setDecisionId(decisionId);
					opinion.setReptSeq(reptSeq);
					opinion.setReptOwnrSeq(reptOwnrSeq);
					opinion.setDelCheck(0);
					opinion.setRegdate(LocalDateTime.now().toString());				          	
        			
					saveOpinion(opinion);
					
					//항목 의견 추가
					try {
					JSONArray opinionItemArray = (JSONArray) JSONTarget.get("opinionItemList");
					
					if(opinionItemArray.size()>0) {	
						
						int rank = 1;
						
						for(int j=0; j<opinionItemArray.size(); j++) {
							
							JSONObject JSONTarget2 = (JSONObject)opinionItemArray.get(j);
							
							Decision_Opinion_Item opinionItem = new Decision_Opinion_Item();
							 
							long opinionItemFile = Long.parseLong(JSONTarget2.get("opinionItemFile").toString());
							
							opinionItem.setOpinionTitle(JSONTarget2.get("opinionTitle").toString());
							opinionItem.setOpinionContent(JSONTarget2.get("opinionContent").toString());	
							opinionItem.setOpinionItemFile(opinionItemFile);
							opinionItem.setDecisionId(decisionId);
							opinionItem.setReptOwnrSeq(reptOwnrSeq);
							opinionItem.setReptSeq(reptSeq);
							opinionItem.setOpinionType(type);
							opinionItem.setRank(rank);
							opinionItem.setDelCheck(0);
							opinionItem.setRegdate(LocalDateTime.now().toString());
							
							saveOpinionItem(opinionItem);
							
							rank++;
						}
						
					}
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
			}
			
			
		
			implementerMapper.updateState(5,decisionId);			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public void insertRegister(String param) {
		
		JSONParser parser = new JSONParser();
		
		
		try {
			
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());
			
			JSONArray addOpinionItemArray = (JSONArray) jsonObject.get("addOpinionItemArray");
			List<Integer> typeList = new ArrayList<>();
			
			
			
			for(int i=0; i<addOpinionItemArray.size(); i++ ) {
				
				JSONObject JSONTarget2 = (JSONObject)addOpinionItemArray.get(i);
				
				
				
				typeList.add(Integer.parseInt(JSONTarget2.get("type").toString()));
			}
			
			
			Set<Integer> set = new HashSet<Integer>(typeList);
			List<Integer> newDistinctList =new ArrayList<Integer>(set);
		

			if(addOpinionItemArray.size()>0) {				
				
				for(int i=0; i<newDistinctList.size(); i++) {
					
								
					
					Decision_Opinion opinion = new Decision_Opinion();
					
					//Integer type = Integer.parseInt(JSONTarget.get("type").toString()); 
					opinion.setType(newDistinctList.get(i));
					opinion.setDecisionId(decisionId);
					saveRegister(opinion);
					
					
				}
			}
						
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public ApplicationList getApplicationView(int masterId) {
		return implementerMapper.getApplicationView(masterId);
	}
	
	//협의 법인 명 가져오기
	public List<String> getApplicationConsultList(int masterId){
		return implementerMapper.getApplicationConsultList(masterId);
	}

	//협의 토지 숫자 가져오기
	public int getApplicationLandCount(int masterId){
		return implementerMapper.getApplicationLandCount(masterId);
	}
	
	//협의 토지 소유자 숫자 가져오기
	public int getApplicationLandRightCount(int masterId){
		return implementerMapper.getApplicationLandRightCount(masterId);
	}
	
	
	public int getApplicationObjectCount(int masterId){
		return implementerMapper.getApplicationObjectCount(masterId);
	}
	
	public int getApplicationObjectRightCount(int masterId){
		return implementerMapper.getApplicationObjectRightCount(masterId);
	}
	
	public List<OwnerInfo> getOnwerInfoList(int masterId){
		return implementerMapper.getOwnerInfoList(masterId);
	}

	public void saveTarget(Decision_Target target) {
		
		try {
			implementerMapper.insertTarget(target);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void saveCityplan(Decision_Cityplan cityplan) {
		
		try {
			implementerMapper.insertCityplan(cityplan);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void saveOpinion(Decision_Opinion opinion) {
		
		try {
			implementerMapper.insertOpinion(opinion);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
public void saveRegister(Decision_Opinion opinion) {
		
		try {
			implementerMapper.saveRegister(opinion);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void saveOpinionItem(Decision_Opinion_Item opinionItem) {
		
		try {
			implementerMapper.insertOpinionItem(opinionItem);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void saveConsultationDate(Decision_ConsultationDate consultationDate) {
		
		try {
			implementerMapper.insertConsultationDate(consultationDate);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public List<AnnouncementDTO> getOpinionFormatter(List<Decision> decisionList) throws Exception {

        List<AnnouncementDTO> announcementDTOS = new ArrayList<>();
		/*
		 * Long decisionId = decisionList.get(0).getDecisionId();
		 * System.out.println("돌아가긴할까요?"); Decision_AgendaDate decisionAgendaDate =
		 * deliberateMapper.getDeliberateDecisionDate(decisionId); Decision_Date
		 * decisionDate =
		 * deliberateMapper.getDeliberateDate(decisionAgendaDate.getSelectDate());
		 * String consultationDate =
		 * decisionDate.getConsultationDate().format(formatter);
		 */
        int rank = 0;

        String fDateStr = "yyyy-MM-dd";
        Locale l = Locale.KOREA;
        
        for (Decision decision : decisionList) {

            Long viewSeq = decision.getSeqNo();
            int masterId = decision.getMasterID();
           
        	 //공고 상태
	       	 int decisionState = decision.getDecisionState();
	       	 String decisionStateStr = "대기";
			
			 for(int i=0 ; i<DecisonState.values().length ; i++) {
				 
	    		 int code = DecisonState.values()[i].getCode();
	    		 
	    		 if(code==decisionState) {
	    			 decisionStateStr = DecisonState.values()[i].getKrName();
	    			 break;
	    		 }

	         }
        
            String docNumber = "-";
            String docTitle = "-";
            String receiver = "-";
            String newsletterDay = "-";
            
            String regdate = decision.getRegdate().format(DateTimeFormatter.ofPattern(fDateStr,l));

            //재결 정보
            ApplicationList applicationList = implementerMapper.getApplicationView(masterId);
      
           	String recvDt = applicationList.getViewReqDate().format(formatter);
            String judgBizNm = applicationList.getTitle();
            String caseNo =  applicationList.getCase_no();
            String bizOprtNm = applicationList.getCustName();          
            String reptLoc = applicationList.getRept_loc();
            System.out.println("TEst:::::::" + reptLoc);
            String charge = applicationList.getCharge();
            int acpt_judg_inst_cd = applicationList.getAcpt_judg_inst_cd();
            System.out.println("tsetestset:" + acpt_judg_inst_cd);
            String judgDivName = "";
        	
        	//acpt_judg_inst_cd
         	//System.out.println(acpt_judg_inst_cd); 
          	
        	if(acpt_judg_inst_cd==AgencyData.Seoul.getCode()) {
        		judgDivName = AgencyData.Seoul.getKrName();
        	}else if(acpt_judg_inst_cd==AgencyData.Central.getCode()) {
        		judgDivName = AgencyData.Central.getKrName();
        	}
          
            //DTO 생성
            AnnouncementDTO announcementDTO = new AnnouncementDTO();
            announcementDTO.setDecisonId(viewSeq);
            announcementDTO.setRegdate(regdate);
            announcementDTO.setJudgBizNm(judgBizNm);
            announcementDTO.setCaseNo(caseNo);
            announcementDTO.setCharge(charge);
            announcementDTO.setDocNumber(docNumber);
            announcementDTO.setDocTitle(docTitle);
            announcementDTO.setReceiver(receiver);
            announcementDTO.setNewsletterDay(newsletterDay);
            announcementDTO.setJudgDivName(judgDivName);
            announcementDTO.setRecvDt(recvDt);
            announcementDTO.setBizOprtNm(bizOprtNm);
            announcementDTO.setReptLoc(reptLoc);
            announcementDTO.setDecisionState(decisionState);
            announcementDTO.setDecisionStateStr(decisionStateStr);
            announcementDTO.setAgendaState(decision.getAgendaState());
            
           
            System.out.println(announcementDTO);
            
            announcementDTOS.add(announcementDTO);

            rank++;
        }

        return announcementDTOS;
    }


	public List<ApplicationLand> getLandInfo(int masterId) {
		return implementerMapper.getLandInfo(masterId);
	}
	
	public List<ApplicationLand> getGoodsInfo(int masterId) {
		return implementerMapper.getGoodsInfo(masterId);
	}
	



	public List<ApplicationLandDTO> getLandListFormatter(List<ApplicationLand> ApplicationLand) {
	    List<ApplicationLandDTO> applicationLandDTOS = new ArrayList<>();

        int rank = 1;

        List<Integer> reptSeqList = new ArrayList();
        
        for (ApplicationLand land : ApplicationLand) {

        	int rept_seq = land.getRept_seq();
        	reptSeqList.add(rept_seq);
        	       
        
        	String befUnitCost = "0";
        	
        	if(land.getBef_unit_cost()>0) {
        		befUnitCost = Integer.toString(land.getBef_unit_cost());
        		befUnitCost = StrUtil.convertToDecimalFormat(befUnitCost);
        	}
      	
        	ApplicationLandDTO applicationLandDTO =
        			ApplicationLandDTO.builder()
        					.reptSeq(rept_seq)
        					.reptOwnrSeq(land.getRept_ownr_intr_seq())
        				//	.ownrNm(land.getOwnrNm())
		                    .reptAddr(land.getRept_addr())
		                    .sidoGunguCd(land.getSido_gungu_cd())
		                    .mainStrtNo(land.getMain_strt_no())
		                    .subStrtNo(land.getSub_strt_no())
		                    .obstStuc1Nm(land.getObst_stuc1_nm())
		                    .obstStuc2Nm(land.getObst_stuc2_nm())
		                    .areaAmot(land.getArea_amot())
		                    .befUnitCost(befUnitCost)
		                    .areaUnit(land.getArea_unit())
                            .build();

            applicationLandDTOS.add(applicationLandDTO);
            rank++;
        }
        
        List<ApplicationLandRelation> applicationLandownerList = implementerMapper.getLandRelationInfoList(reptSeqList);
        
        for (ApplicationLandDTO applicationLandDTO : applicationLandDTOS) {
        
        	for (ApplicationLandRelation applicationLandRelation : applicationLandownerList) {
        		
        		if(applicationLandDTO.getReptSeq()==applicationLandRelation.getRept_seq()) {        			
        			applicationLandDTO.setOwnrNnm(applicationLandRelation.getOwnr_nm());
        			applicationLandDTO.setLandShre(applicationLandRelation.getLand_shre());
        	        break;
        		}
        	}
        	
        }
    	
 
        return applicationLandDTOS;
	}
	
	public List<ApplicationGoodsDTO> getGoodsListFormatter(List<ApplicationLand> ApplicationLand) {
	    List<ApplicationGoodsDTO> applicationGoodsDTOS = new ArrayList<>();

        int rank = 1;

        List<Integer> reptSeqList = new ArrayList();
        
        for (ApplicationLand land : ApplicationLand) {

        	int rept_seq = land.getRept_seq();
        	reptSeqList.add(rept_seq);
        	
        	//ApplicationLandRelation applicationLandowner = implementerMapper.getLandRelationInfo(rept_seq);
        	
        	String befUnitCost = "0";
        	
        	if(land.getBef_unit_cost()>0) {
        		befUnitCost = Integer.toString(land.getBef_unit_cost());
        		befUnitCost = StrUtil.convertToDecimalFormat(befUnitCost);
        	}
        	
        	ApplicationGoodsDTO applicationGoodsDTO =
        			ApplicationGoodsDTO.builder()
        					.reptSeq(rept_seq)
		                    .reptAddr(land.getRept_addr())
		                    .reptOwnrSeq(land.getRept_ownr_intr_seq())
		                    .mainStrtNo(land.getMain_strt_no())
		                    .subStrtNo(land.getSub_strt_no())
		                    .strtOther(land.getStrt_other())
		                    .obstKindNm(land.getObst_kind_nm())
		                    .obstStuc1Nm(land.getObst_stuc1_nm())
		                    .obstStuc2Nm(land.getObst_stuc2_nm())
		                    .areaAmot(land.getArea_amot())
		                    .befUnitCost(befUnitCost)
		                    .areaUnit(land.getArea_unit())
                            .build();

        	applicationGoodsDTOS.add(applicationGoodsDTO);
            rank++;
        }
        
        List<ApplicationLandRelation> applicationLandownerList = implementerMapper.getLandRelationInfoList(reptSeqList);
        
        for (ApplicationGoodsDTO applicationGoodsDTO : applicationGoodsDTOS) {
        
        	for (ApplicationLandRelation applicationLandRelation : applicationLandownerList) {
        		
        		if(applicationGoodsDTO.getReptSeq()==applicationLandRelation.getRept_seq()) {        			
        			applicationGoodsDTO.setOwnrNnm(applicationLandRelation.getOwnr_nm());
        			applicationGoodsDTO.setLandShre(applicationLandRelation.getLand_shre());
        	        break;
        		}
        	}
        	
        }
        return applicationGoodsDTOS;
	}
	
	

	public List<OwnerInfoDTO> getOwnerListFormatter(int masterId,List<OwnerInfo> ownerList) {
	    List<OwnerInfoDTO> ownerInfoDTOS = new ArrayList<>();
	    List<DecisionOpinionDTO> opinionDTO;
	    List<DecisionOpinionFileDTO> fileDTO;
        for (OwnerInfo ownerInfo : ownerList) {
        	int ownrSeq = ownerInfo.getOwnr_seq();
            String parseType;	
        	opinionDTO = getDecisionOpinion(ownrSeq);
           
        	for(int i=0; i<opinionDTO.size(); i++) {
        		opinionDTO.get(i).setParsedOpinionType(parseType(opinionDTO.get(i).getType()));
        	}
        	fileDTO = getDecisionOpinionFile(ownrSeq);
        	for(int i=0; i<fileDTO.size(); i++) {
        		fileDTO.get(i).setParsedOpinionType(parseType(opinionDTO.get(i).getType()));
        	}
        	
        	

        	//필지 소유자
        	boolean landCheck=false;
            List<ApplicationLandDTO> applicationLandDTOS = new ArrayList();
            
        	List<LandownerInfo> landownerList = getLandOwnerInfoList(ownrSeq);
        	
        	if(landownerList.size()>0) {
        		landCheck=true;
                int rank = 1;
                
	    		  for (LandownerInfo land : landownerList) {
	    			  
	    		    	String befUnitCost = "0";
	    	        	
	    	        	if(land.getBef_unit_cost()>0) {
	    	        		befUnitCost = Integer.toString(land.getBef_unit_cost());
	    	        		befUnitCost = StrUtil.convertToDecimalFormat(befUnitCost);
	    	        	}
	    	        	
	    	        	ApplicationLandDTO applicationLandDTO =
	    	        			ApplicationLandDTO.builder()
	    	        					.rank(rank)
	    	        					.reptSeq(land.getRept_seq())
	    	        					.reptOwnrSeq(land.getRept_ownr_intr_seq())
	    			                    .reptAddr(land.getRept_addr())
	    			                    .sidoGunguCd(land.getSido_gungu_cd())
	    			                    .mainStrtNo(land.getMain_strt_no())
	    			                    .subStrtNo(land.getSub_strt_no())
	    			                    .obstStuc1Nm(land.getObst_stuc1_nm())
	    			                    .obstStuc2Nm(land.getObst_stuc2_nm())
	    			                    .areaAmot(land.getArea_amot())
	    			                    .befUnitCost(befUnitCost)
	    			                    .areaUnit(land.getArea_unit())
	    			                    .ownrNnm(land.getOwnr_nm())
	    			                    .landShre(land.getLand_shre())
	    	                            .build();
	  
	    	        	applicationLandDTOS.add(applicationLandDTO);
	    	            rank++;
	    			  
	    		  }
        	}
        	
        	//지장물 소유자
          	boolean goodsCheck=false;
            List<ApplicationGoodsDTO> applicationGoodsDTOS = new ArrayList();
            
        	List<GoodsownerInfo> goodsownerList = getGoodsOwnerInfoList(ownrSeq);
        	
        	if(goodsownerList.size()>0) {
	        	  goodsCheck=true;
	              int rank = 1;
                
	    		  for (GoodsownerInfo goods : goodsownerList) {
	    			  
	    		    	String befUnitCost = "0";
	    	        	
	    	        	if(goods.getBef_unit_cost()>0) {
	    	        		befUnitCost = Integer.toString(goods.getBef_unit_cost());
	    	        		befUnitCost = StrUtil.convertToDecimalFormat(befUnitCost);
	    	        	}
	    	        	
	    	        	ApplicationGoodsDTO applicationGoodsDTO =
	    	        			ApplicationGoodsDTO.builder()
	    	        					.rank(rank)
	    	        					.reptSeq(goods.getRept_seq())
	    	        					.reptOwnrSeq(goods.getRept_ownr_intr_seq())
	    			                    .reptAddr(goods.getRept_addr())		          
	    			                    .mainStrtNo(goods.getMain_strt_no())
	    			                    .subStrtNo(goods.getSub_strt_no())
	    			                    .strtOther(goods.getStrt_other())
	    			                    .obstKindNm(goods.getObst_kind_nm())
	    			                    .obstStuc1Nm(goods.getObst_stuc1_nm())
	    			                    .obstStuc2Nm(goods.getObst_stuc2_nm())
	    			                    .areaAmot(goods.getArea_amot())
	    			                    .befUnitCost(befUnitCost)
	    			                    .areaUnit(goods.getArea_unit())
	    			                    .ownrNnm(goods.getOwnr_nm())
	    			                    .landShre(goods.getLand_shre())
	    	                            .build();
	    	        	
						/*
						 * ApplicationGoodsDTO applicationGoodsDTO2 = ApplicationGoodsDTO.builder()
						 * .rank(rank) .reptSeq(goods.getRept_seq())
						 */
	    	        			
	    	        	applicationGoodsDTOS.add(applicationGoodsDTO);
	    	            rank++;
	    			  
	    		  }
        	}
        	
        	OwnerInfoDTO ownerInfoDTO =
        			OwnerInfoDTO.builder()
	        				.ownrSeq(ownerInfo.getOwnr_seq())
	        				.ownrTitle(ownerInfo.getOwnr_nm())
        					.landCheck(landCheck)
        					.landList(applicationLandDTOS)
        					.goodsCheck(goodsCheck)
        					.goodsList(applicationGoodsDTOS)
        					.opinionDTO(opinionDTO)
        					.opinionFileDTO(fileDTO)
                            .build();

        	ownerInfoDTOS.add(ownerInfoDTO);
        }
        
        return ownerInfoDTOS;
	}
	
	
	
	public String parseType(Integer type) {
			String parseType = "";
		if (type == 1) {
			parseType = "지연가산금(재결신청 청구)";
		} else if (type == 2) {
			parseType = "보상금 증액";
		} else if (type == 3) {
			parseType = "협의 미이행(불이행,미준수)";
		} else if (type == 4) {
			parseType = "사업폐지(취소,중단,변경,보류,제외)";
		} else if (type == 5) {
			parseType = "재결 보류";
		} else if (type == 6) {
			parseType = "무허가건물 부지면적 보상";
		} else if (type == 7) {
			parseType = "잔여지/잔여건물 가치 하락";
		} else if (type == 8) {
			parseType = "잔여지/잔여건물 매수 청구(확대보상)";
		} else if (type == 9) {
			parseType = "사도평가 적정성";
		} else if (type == 10) {
			parseType = "일단지 보상";
		} else if (type == 11) {
			parseType = "미지급 용지";
		} else if (type == 12) {
			parseType = "영업보상(이전비) 적정성";
		} else if (type == 13) {
			parseType = "누락 물건 반영";
		} else if (type == 14) {
			parseType = "폐업 보상";
		} else if (type == 15) {
			parseType = "영농손실보상";
		} else if (type == 16) {
			parseType = "휴직(실직)보상";
		} else if (type == 17) {
			parseType = "이주대책 수립";
		} else if (type == 18) {
			parseType = "이주정착금, 주거이전비, 이사비";
		} else if (type == 19) {
			parseType = "구분지상권";
		} else if (type == 20) {
			parseType = "10% 변동 내역";
		} else if (type == 21) {
			parseType = "기타(임료손실,대토보상 등)";
		} else if (type == 22) {
			parseType = "소유자 의견 없음";
		}
		
		return parseType;
	}
	
	
	
	public List<DecisionOpinionDTO> getDecisionOpinion(int ownrSeq) {
		return implementerMapper.getDecisionOpinion(ownrSeq);
	}
	
	public List<DecisionOpinionFileDTO> getDecisionOpinionFile(int ownrSeq) {
		return implementerMapper.getDecisionOpinionFile(ownrSeq);
	}


	public void saveDecisionFile(Map<String, Object> data) {
		// TODO Auto-generated method stub
		
	}
	
	public static <T> Predicate<T> distinctByKey( Function<? super T, Object> keyExtractor) {Map<Object, Boolean> map = new ConcurrentHashMap<>();return t -> map.putIfAbsent(keyExtractor.apply(t), Boolean.TRUE) == null;  
	}
}
