package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_Announcement_File extends Pagination {

	private Long seqNo;
    private Long decisionId;
    private Integer fileSeq;
    private Integer delCheck;
    private String regdate;
    private String uptdate;
    private String fileDescription;

    
}
