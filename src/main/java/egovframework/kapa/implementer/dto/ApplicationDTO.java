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
    
}
