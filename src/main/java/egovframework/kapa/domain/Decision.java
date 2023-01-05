package egovframework.kapa.domain;

import java.time.LocalDateTime;
import java.util.Date;

import egovframework.kapa.domain.Decision_Target;
import lombok.Data;

@Data
public class Decision {

	private Long seqNo;
	private int masterID;
	private Long userSeq;
	private Integer decisionState;
	private int judg_seq;
	private String groupEstablishedDate;
	private String decisionReason;

	private Integer agendaState;
	
	private Integer delCheck;
	private LocalDateTime regdate;
	private String convertedRegDate;
	private LocalDateTime uptdate;
	
	private String businessOperator;
	private String governor;
	private String landowner;
	private Long amountA;
	private Long amountB;
	private Long amountC;
	
	private String amountAstr;
	private String amountBstr;
	private String amountCstr;
	
	private String relatedLaws;
	private String relatedLaws2;
	private String reviewOpinion;
	
	private Long landCnt;
	private Long landArea;
	private Long landPrice;
	private Long objCnt;
	private Long objPrice;
	private Long goodwillCnt;
	private Long goodwillPrice;
	
	private Long cslt_land_cnt;
	private Long cslt_area_amot;
	private Long cslt_land_amt;
	private Long cslt_obst_cnt;
	private Long cslt_obst_amt;
	private Long cslt_business_cnt;
	private Long cslt_business_amt;
	
	Decision_Target Decision_Target;
	
}
