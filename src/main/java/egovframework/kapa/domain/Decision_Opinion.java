package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_Opinion {

	private Long seqNo;
    private Long decisionId;
    private Long reptSeq;
    private Long reptOwnrSeq;
    private String ownerOpinion;
    private String executorOpinion;
    
    private String opinionText;
    private String relatedLaws;
    private String relatedLaws2;
    private String reviewOpinion;
    
    private Integer type;
    private Integer opinionType;
    private Integer completionCheck;
    private Integer delCheck;
    private String regdate;
    private String ownrNm;
    
    private String fileNameChange;
    private String fileFolder;
    private String opinionTitle;
    private String opinionContent;
    private String fileNameExtension;
    private String getTypeStr;
    private Integer fileType;
    private Long fileSeq;
}
