package egovframework.kapa.decision.service;


import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import egovframework.kapa.decision.dto.AnnouncementDTO;
import egovframework.kapa.decision.dto.DecisionStateDTO;
import egovframework.kapa.decision.mapper.DecisionMapper;
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
import egovframework.kapa.implementer.Const.DecisonState;
import egovframework.kapa.implementer.domain.ApplicationList;
import egovframework.kapa.implementer.mapper.ImplementerMapper;

/**
* <pre>
* 1. 패키지명 : com.kapa.implementer.service
* 2. 타입명 : ImplementerService.java
* 3. 작성일 : 2022.11.08
* 4. 작성자 : kbs
* 5. 설명 :
* </pre>
*/
@Service
public class DecisionService {

	@Autowired
	DecisionMapper decisionMapper;

	@Autowired
	ImplementerMapper implementerMapper;
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd", Locale.KOREA);
	  
	public void saveDecision(String param) throws Exception {

		try	{
			
			
			 //System.out.println(param);
			
			JSONParser parser = new JSONParser();
			
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());
			
			String docNumber = jsonObject.get("docNumber").toString();
			String docTitle = jsonObject.get("docTitle").toString();
			String receiver = jsonObject.get("receiver").toString();
			String newsletterDay = jsonObject.get("newsletterDay").toString();
			
			String requestStartDate = jsonObject.get("requestStartDate").toString();
			String requestEndDate = jsonObject.get("requestEndDate").toString();
			String publicationExpiryDate = jsonObject.get("publicationExpiryDate").toString();
			
			Decision_Notice insertNotice = new Decision_Notice();
			
			insertNotice.setDecisionId(decisionId);
			insertNotice.setDocNumber(docNumber);
			insertNotice.setDocTitle(docTitle);	
			insertNotice.setNewsletterDay(newsletterDay);				
			insertNotice.setReceiver(receiver);			
		
		    LocalDate startDate = LocalDate.parse(requestStartDate, inputFormatter);
		    LocalDate endDate = LocalDate.parse(requestEndDate, inputFormatter);
		    LocalDate publicationExpiry = LocalDate.parse(publicationExpiryDate, inputFormatter);
			
	        LocalDateTime startDatetime = LocalDateTime.of(startDate, LocalTime.of(0,0,0));
	        LocalDateTime endDatetime = LocalDateTime.of(endDate, LocalTime.of(23,59,59));	   
	        LocalDateTime publicationExpiryDateTime = LocalDateTime.of(publicationExpiry, LocalTime.of(23,59,59));
	        
	        insertNotice.setRequestStartDate(startDatetime);;
	        insertNotice.setRequestEndDate(endDatetime);
	        insertNotice.setPublicationExpiryDate(publicationExpiryDateTime);
			
	        insertNotice.setRegdate(LocalDateTime.now());
	        insertNotice.setUptdate(LocalDateTime.now());
	        insertNotice.setDelCheck(0);
	        
	        //System.out.println(insertNotice);
			
			//update
			decisionMapper.insertDecisionNotice(insertNotice);
			System.out.println("여기!!!!");
			decisionMapper.updateState(3, insertNotice.getDecisionId());
			
		}	catch (Exception e) {
			e.printStackTrace();
		}
       
    }

	public void saveAgenda(String param) throws Exception {

		try	{
			
		    System.out.println(param);
			
			JSONParser parser = new JSONParser();
			
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());			
			
			//update
			decisionMapper.updateStateFinal(6,decisionId);
			
		}	catch (Exception e) {
			e.printStackTrace();
		}
       
    }
	
	public List<Decision_Cityplan> getCityPlan(Long decisionId) {
		return decisionMapper.getCityPlan(decisionId);
		
	}
	
	public List<Decision_Target> getTarget(Long decisionId) {
		return decisionMapper.getTarget(decisionId);
	}
	
	public List<Decision_ConsultationDate> getConsultationDate(Long decisionId) {
		return decisionMapper.getConsultationDate(decisionId);
	}


	public int getDecisionAgendaCnt(Search search) {
		return decisionMapper.getDecisionAgendaCnt(search);
	}

	public int getDecisionAnnouncementCnt(Search search) {
		return decisionMapper.getDecisionAnnouncementCnt(search);
	}


	public int getAgendaRegisterCnt(Search search) {
		return decisionMapper.getAgendaRegisterCnt(search);
	}
	
	public List<Decision> getDecisionAnnouncementList(Search search) {
		return decisionMapper.getDecisionAnnouncementList(search);
	}


	public List<Decision> getDecisionAgendaList(Search search) {
		return decisionMapper.getDecisionAgendaList(search);
	}

	public List<Decision> getAgendaRegisterList(Search search) {
		return decisionMapper.getAgendaRegisterList(search);
	}

	public Decision getDecisionView(Long decisionId) {
		return decisionMapper.getDecisionView(decisionId);
	}
	   
	public Decision_Notice getDecisionNoticeView(Long decisionId) {
		return decisionMapper.getDecisionNoticeView(decisionId);
	}
	
	public void insertDecisionFile(Decision_File file) {
		
		decisionMapper.insertDecisionFile(file);
	}
	
	public List<Decision_File> getDecisionFileList(Long decisionId) {
		
		return decisionMapper.getDecisionFileList(decisionId);
	}
	
	public FileVO getFileByDeicisionFileSeq(Integer seqNo){
		return decisionMapper.getFileByDeicisionFileSeq(seqNo);
	}
	
	public List<AnnouncementDTO> getDecisionAnnouncementFormatter(List<Decision> decisionList) throws Exception {
        List<AnnouncementDTO> announcementDTOS = new ArrayList<>();

        int rank = 0;

        String fDateStr = "yyyy-MM-dd";
        Locale l = Locale.KOREA;
        
        LocalDateTime today = LocalDateTime.now();
        
        for (Decision decision : decisionList) {
        	System.out.println("====================================================");
        	System.out.println(decision);
        	System.out.println("====================================================");

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
        	
            Long viewSeq = decision.getSeqNo();
            int masterId = decision.getMasterID();
            
            String judgBizNm = "-";
            String caseNo = "-";
            String docNumber = "-";
            String docTitle = "-";
            String receiver = "-";
            String newsletterDay = "-";
            String requestStartDate = "-";
            String publicationExpiryDate = "-";
            
            int noticeFileCount = 0;
            int cityFileCount = 0;
            
            boolean checkExpriryDate = false;
            
            String regdate = decision.getRegdate().format(DateTimeFormatter.ofPattern(fDateStr,l));

            //재결 정보
            ApplicationList applicationList = implementerMapper.getApplicationView(masterId);
      
            
            if(applicationList!=null) {
        	  if(applicationList.getJudg_biz_nm()!=null) {
        		  judgBizNm=applicationList.getJudg_biz_nm();
              }
              
              if(applicationList.getCase_no()!=null) {
            	  caseNo=applicationList.getCase_no();
              }
            }
            
            //열람공고 정보
        	Decision_Notice decisionNotice = decisionMapper.getDecisionNoticeView(viewSeq);
        	
        	if(decisionNotice!=null) {
        		
          	  if(decisionNotice.getDocNumber()!=null) {
          		  docNumber=decisionNotice.getDocNumber();
                }
                
                if(decisionNotice.getDocTitle()!=null) {
                	docTitle=decisionNotice.getDocTitle();
                }
                
                if(decisionNotice.getReceiver()!=null) {
                	receiver=decisionNotice.getReceiver();
                }
                
                if(decisionNotice.getRequestStartDate()!=null) {
                	requestStartDate=decisionNotice.getRequestStartDate().format(DateTimeFormatter.ofPattern(fDateStr,l));
                }

                if(decisionNotice.getNewsletterDay()!=null) {
                	newsletterDay=decisionNotice.getNewsletterDay();
                }
                
                if(decisionNotice.getPublicationExpiryDate()!=null) {    
                	
                	checkExpriryDate=today.isAfter(decisionNotice.getPublicationExpiryDate());
                
                	publicationExpiryDate=decisionNotice.getPublicationExpiryDate().format(DateTimeFormatter.ofPattern(fDateStr,l));
                }
                
                //열림안건 파일
                noticeFileCount = decisionMapper.getDecisionFileCnt(decision.getMasterID());
                
                //시 안건 파일
                cityFileCount = decisionMapper.getDecisionCityFileCnt(decision.getMasterID());
                
                
           //     citesFileCount = decisionMapper.getCitesFileCount(decesion.)
                
                
                
				/*
				 * getDecisionView 로 seqNo 193으로 masterId 가지고 옴 select count(*) from
				 * dbo.TB_Decision_File_Cites where decisionId = #{masterId}
				 */
                
             }
            
            //DTO 생성
            AnnouncementDTO announcementDTO = new AnnouncementDTO();
            announcementDTO.setDecisonId(viewSeq);
            announcementDTO.setRegdate(regdate);
            announcementDTO.setJudgBizNm(judgBizNm);
            announcementDTO.setCaseNo(caseNo);
            announcementDTO.setDocNumber(docNumber);
            announcementDTO.setDocTitle(docTitle);
            announcementDTO.setReceiver(receiver);
            announcementDTO.setNewsletterDay(newsletterDay);
            announcementDTO.setRequestStartDate(requestStartDate);
            announcementDTO.setPublicationExpiryDate(publicationExpiryDate);
            announcementDTO.setNoticeFileCount(noticeFileCount);
            announcementDTO.setCityFileCount(cityFileCount);
            announcementDTO.setCheckExpriryDate(checkExpriryDate);
            announcementDTO.setDecisionStateStr(decisionStateStr);
            announcementDTO.setDecisionState(decisionState);
            //회보 첨부파일 수
           // announcementDTO.setFileSeqNo(citesFileCount);
            
            System.out.println(announcementDTO);
            
            announcementDTOS.add(announcementDTO);

            rank++;
        }

        return announcementDTOS;
    }


	public List<Decision_Opinion_Item> getDecisionOpinionItemList(Long viewSeq) {
		return decisionMapper.getDecisionOpinionItemList(viewSeq);
	}
	
	public List<Decision_Opinion_Item> getDecisionOpinionTypeItemList(Long viewSeq,int type) {
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("viewSeq", viewSeq);
		param.put("type", type);
		
		return decisionMapper.getDecisionOpinionTypeItemList(param);
	}
	
	public int getDecisionOpinionTypeItemCount(Long viewSeq,int type) {
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("viewSeq", viewSeq);
		param.put("type", type);
		
		return decisionMapper.getDecisionOpinionTypeItemCount(param);
	}

	public List<Decision_Opinion> getDecisionOpinionList(Long decisionId) {
		return decisionMapper.getDecisionOpinionList(decisionId);
	}

	public Decision_Opinion getDecisionOpinionInfo(Long viewSeq) {
		return decisionMapper.getDecisionOpinionInfo(viewSeq);
	}

	public DecisionStateDTO getDecisionState(Long judg_seq) {

		Decision getDecision = decisionMapper.getDecisionViewMasterID(judg_seq);
		
		Long decisionId = 0L;
		
		String decisionStateStr = "대기";
		int decisionState = 1;
		
		if(getDecision!=null) {
			
			 int currentDecisionState = getDecision.getDecisionState();
		
			 for(int i=0 ; i<DecisonState.values().length ; i++) {
	    		 int code = DecisonState.values()[i].getCode();
	    		 
	    		 if(code==currentDecisionState) {
	    			 decisionState=code;
	    			 decisionStateStr = DecisonState.values()[i].getKrName();
	    			 break;
	    		 }

	         }
			
			 decisionId=getDecision.getSeqNo();
		}
		//System.out.println("decisionId" + decisionId);
		DecisionStateDTO decisionStateDTO = new DecisionStateDTO();
		decisionStateDTO.setDecisionId(decisionId);
		decisionStateDTO.setDecisionState(decisionState);
		decisionStateDTO.setDecisionStateStr(decisionStateStr);
		
		//System.out.println(decisionStateDTO);
		
		// TODO Auto-generated method stub
		return decisionStateDTO;
	}

	public void meetingsInsert(String param) {
		// TODO Auto-generated method stub
		
		JSONParser parser = new JSONParser();
		
		try {
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			String meetingDate = jsonObject.get("meetingDate").toString();
			
			Decision_Date insertDate = new Decision_Date();
		
		    LocalDate consultationDate = LocalDate.parse(meetingDate, inputFormatter);

	        insertDate.setConsultationDate(consultationDate);
	        insertDate.setRegdate(LocalDateTime.now());
	        insertDate.setUptdate(LocalDateTime.now());
	        insertDate.setDelCheck(0);
	        
			decisionMapper.insertMeetings(insertDate);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}

	public List<Decision_Date> selectCaseMeetings(Date start, Date end) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("start", start);
		param.put("end", end);
		return decisionMapper.selectCaseMeeting(param);
	}

	public List<Decision_Date> getDateList() {
		return decisionMapper.getDateList();
	}
	
	public List<Decision_Opinion> getOpinionList(Long decisionId) {
		return decisionMapper.getOpinionList(decisionId);
	}


	public void registerStep1(String param) {
		JSONParser parser = new JSONParser();
		
		try {
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());
			long selectDate = Long.parseLong(jsonObject.get("selectDate").toString());
			
			
			Decision_AgendaDate insertAgendaDate = new Decision_AgendaDate();
			
			insertAgendaDate.setDecisionId(decisionId);
			insertAgendaDate.setSelectDate(selectDate);
			insertAgendaDate.setRegdate(LocalDateTime.now());
			insertAgendaDate.setUptdate(LocalDateTime.now());
			insertAgendaDate.setDelCheck(0);	
			
			/*
			 * String relatedLaws = jsonObject.get("relatedLaws").toString(); String
			 * relatedLaws2 = jsonObject.get("relatedLaws2").toString(); String
			 * reviewOpinion = jsonObject.get("reviewOpinion").toString();
			 */
		
		
			decisionMapper.insertAgendaDate(insertAgendaDate);
			decisionMapper.updateStep1(2,decisionId);
			/*decisionMapper.updateStep1(2,relatedLaws,relatedLaws2,reviewOpinion,decisionId*/
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void registerStep2(String param) {
	
		JSONParser parser = new JSONParser();
		
		try {
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long seqNo = Long.parseLong(jsonObject.get("seqNo").toString());
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());
			
			
			String content = jsonObject.get("content").toString();
			String relatedLaws = jsonObject.get("relatedLaws").toString();
			String relatedLaws2 = jsonObject.get("relatedLaws2").toString();
			String reviewOpinion = jsonObject.get("reviewOpinion").toString();	
			
			decisionMapper.updateStep2(content,relatedLaws, relatedLaws2, reviewOpinion,seqNo);
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	public String registerStep3(String param) {
		
		String msg = "move";
		
		JSONParser parser = new JSONParser();
		
		try {
			JSONObject jsonObject = (JSONObject)parser.parse(param);
			
			long decisionId = Long.parseLong(jsonObject.get("decisionId").toString());

			int completionCount = decisionMapper.getOpinionCompletionCount(decisionId);
			
			if(completionCount==0) {
				 msg = "Complete";		
				 decisionMapper.updateStep3(3,decisionId);
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return msg;
	}

	
	
	public void insertDecisionAnnouncementFile(Decision_Announcement_File file) {
		
		decisionMapper.insertDecisionAnnoucementFile(file);
	}

	public void insertOpinionFile(Opinion_File opinionFile) {
		decisionMapper.insertOpinionFile(opinionFile);
		
	}

	public void insertNoticeFile(Notice_File noticeFile) {
		decisionMapper.insertNoticeFile(noticeFile);
	}

	public List<Notice_File> getNoticeFileList(Long decisionId) {
		return decisionMapper.getNoticeFileList(decisionId);
	}

	public Long getMasterId(Long decisionId) {
		return decisionMapper.getMasterId(decisionId);
	}

	public void insertCitesFile(Cites_File citesFile) {
		decisionMapper.insertCitesFile(citesFile);
		
	}

	public List<Cites_File> getCitesFileList(Long decisionId) {
		return decisionMapper.getCitesFileList(decisionId);
	}
	




}
