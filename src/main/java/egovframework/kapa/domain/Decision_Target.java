package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_Target extends Pagination {

	
	private Long SeqNo;
    private Long DecisionId;
    private String TargetInfo;
    private String BUN1;
    private String BUN2;
    private String Area_Before_Transfer;
    private String Area_After_Transfer;
    private String Etc;

    private Integer delCheck;
    private String regdate;
    
//    
//  
//    public Long getSeqNo() {
//    	return SeqNo;
//    }
//    
//    public void setSeqNo(Long SeqNo) {
//    	this.SeqNo = SeqNo;
//    }
//    
//    public Long getDecisionId() {
//    	return DecisionId;
//    }
//    
//    public void setDecisionId(Long DecisionId) {
//    	this.DecisionId = DecisionId;
//    }
//    
//    public String getTargetInfo() {
//    	return TargetInfo;
//    }
//    
//    public void setTargetInfo(String TargetInfo) {
//    	this.TargetInfo = TargetInfo;
//    }
//    
//    public String getBUN1() {
//    	return BUN1;
//    }
//    
//    public void setBUN1(String BUN1) {
//    	this.BUN1 = BUN1;
//    }
//    
//    public String getBUN2() {
//    	return BUN2;
//    }
//    
//    public void setBUN2(String BUN2) {
//    	this.BUN2 = BUN2;
//    }
//    
//    public String getArea_Before_Transfer() {
//    	return Area_Before_Transfer;
//    }
//    
//    public void setArea_Before_Transfer(String Area_Before_Transfer) {
//    	this.Area_Before_Transfer = Area_Before_Transfer;
//    }
//    
//    public String getArea_After_Transfer() {
//    	return Area_After_Transfer;
//    }
//    
//    public void setArea_After_Transfer(String Area_After_Transfer) {
//    	this.Area_After_Transfer = Area_After_Transfer;
//    }
//    
//    public String getEtc() {
//    	return Etc;
//    }
//    
//    public void setEtc(String Etc) {
//    	this.Etc = Etc;
//    }
//    
//    
//    public Integer getDelCheck() {
//    	return delCheck;
//    }
//    
//    public void setDelCheck(Integer delCheck) {
//    	this.delCheck = delCheck;
//    }
//    
//    public String getRegdate() {
//    	return regdate;
//    }
//    
//    public void setRegdate(String regDate) {
//    	this.regdate = regDate;
//    }

    
}
