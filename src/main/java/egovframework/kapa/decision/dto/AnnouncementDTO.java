package egovframework.kapa.decision.dto;

import lombok.Data;

@Data
public class AnnouncementDTO{

    private Long decisonId;
    
    private String regdate;
    
    private String recvDt;
    
    private String judgBizNm;
    
    private String judgDivName;

    private String caseNo;
    
    private String docNumber;
    
    private String docTitle;
    
    private String receiver;
    
    private String newsletterDay;
    
    private String requestStartDate;

    private String requestEndDate;
    
    private String publicationExpiryDate;
    
    private int noticeFileCount;
    
    private int cityFileCount;
    
    private String bizOprtNm;

    private String reptLoc;
    
    private boolean checkExpriryDate;
    
    private String decisionStateStr;
    
    private int decisionState;
    
    private int agendaState;
    
    private int fileSeqNo;
    
}
