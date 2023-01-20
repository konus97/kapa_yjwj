package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_Opinion_Item {

	private Long seqNo;
    private Long decisionId;
    private Long reptSeq;
    private int opinionType;
    private String opinionTitle;
    private String opinionContent;
    private Long opinionItemFile;
    private Integer rank;
    private Integer delCheck;
    private String regdate;
    private String fileNameChange;
    private String fileFolder;
}
