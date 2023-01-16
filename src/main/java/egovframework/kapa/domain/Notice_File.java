package egovframework.kapa.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
public class Notice_File extends Pagination {

	  private long seqNo;
	    private Long decisionId;
	    private Integer reptSeq;
	    private Integer opinionType;
	    private Integer fileType;
	    private Integer fileSeq;
	    private int delCheck;
	    private Integer rank;
	    private String regdate;
	    private String uptdate;
	    private String fileDescription;
	   


}
