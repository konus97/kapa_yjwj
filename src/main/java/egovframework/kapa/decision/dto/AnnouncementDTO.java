package egovframework.kapa.decision.dto;

import java.time.LocalDate;

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
    
private Long seq;
	
	//사업명
	private String title;
	
	//재결구분
	private String Category;
	
	//시도구분코드
	private String region;
	
	//시행자의뢰일
	private LocalDate viewReqDate;
	
	//비고
	private String Bigo;
	
	//시행자명
	private String custName;
	
	//담당자명
	private String custMan;
	
	//담당자
	private String charge;
	
	//소재지
	private String consultAddr;
	
	//협의 법인
	private String consultAppName;
	
	// 담당자 폰번호
	private String chargeHP;
	
	private LocalDate consultDate_S;
	private LocalDate consultDate_E;
	
	private LocalDate costDate;
	
}
