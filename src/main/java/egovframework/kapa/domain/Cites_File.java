package egovframework.kapa.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
public class Cites_File extends Pagination {

	  	private long seqNo;
	    private Long decisionId;
	    private Integer fileType;
	    private Integer fileSeq;
	    private int delCheck;
	    private String regdate;
	    private String uptdate;
	    private String fileDescription;
	    private Integer rank; 
	   


}
