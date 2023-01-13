package egovframework.kapa.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Opinion_File extends Pagination {


	  private long seqNo;
	    private Long decisonId;
	    private Integer reptSeq;
	    private Integer opinionType;
	    private Integer fileType;
	    private Integer fileSeq;
	    private int delCheck;
	    private Integer rank;
	    private Integer reptOwnrSeq;
	    private String regdate;
	    private String uptdate;
	    private String fileDescription;
    
}
