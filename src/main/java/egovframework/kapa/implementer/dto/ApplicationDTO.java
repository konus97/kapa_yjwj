package egovframework.kapa.implementer.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ApplicationDTO {

	private Long decisionId;
	   
    private Long judgSeq;

    private String recvDt;
    
    private String priceDt;

    private String judgBizNm;

    private String judgDivName;

    private String rept_loc;

    private String caseNo;

    private String use_yn;

    private String ichr_id;
    
    private String csltApprInstNm;
    
    private String judeDivCdName;
    
    private String bizTpCd;

    //시행자명
    private String bizOprtNm;
    
    private String reptLoc;
    
    //사업시행자담당자
    private String bizOprtIchrNm;
    
    //사업시행자연락처
    private String bizOprtPhoneNo;
    
    //추천의뢰시작일시
	private String recmReqStartDate;
	
	//추천의뢰종료일시
	private String recmReqEndDate;
	
	private String rwrdPrce;
	
	private String decisionStateStr;
	
	private int decisionState;
	
	private boolean nextStepCheck;
	
	private String ownrNm;
	
	//masterId
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
	
	private LocalDate recm_req_ed_dt;
	
	private LocalDate recm_req_strt_dt;
	
	private LocalDate prce_dt;
	
	private LocalDate consultDate_S;
	private LocalDate consultDate_E;
	
    
}
