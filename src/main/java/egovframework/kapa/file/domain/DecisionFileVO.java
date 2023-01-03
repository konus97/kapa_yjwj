package egovframework.kapa.file.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
public class DecisionFileVO {

    private long seqNo;

    private String fileNameOri;

    private int delCheck;

    private Long decisionId;
    
    private Integer fileType;
   
    private Integer rank;
   
    private String fileDescription;


}
