package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_File extends Pagination {

	private Long seqNo;
    private Long decisionId;
    private Integer fileType;
    private Integer fileSeq;
    private Integer delCheck;
    private Integer rank;
    private String regdate;
    private String uptdate;
    private String fileDescription;

    
}
