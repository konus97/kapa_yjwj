package egovframework.kapa.file.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
public class OpinionFileVO {

	  private long seqNo;
	    private Long decisonId;
	    private Long reptSeq;
	    private Integer opinionType;
	    private Integer fileType;
	    private Integer fileSeq;
	    private int delCheck;
	    private Integer rank;
	    private LocalDateTime regdate;
	    private LocalDateTime uptdate;
	    private String fileDescription;
	    private Long reptOwnrSeq;

	
}
