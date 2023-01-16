package egovframework.kapa.file.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
public class CitesFileVO {

	  private long seqNo;
	    private Long decisionId;
	    private Integer fileType;
	    private Integer fileSeq;
	    private int delCheck;
	    private LocalDateTime regdate;
	    private LocalDateTime uptdate;
	    private String fileDescription;
		public String fileNameOri;
		private Integer rank;
	   


}
