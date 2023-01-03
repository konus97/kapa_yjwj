package egovframework.kapa.file.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
@Entity
public class FileVO {

	private MultipartFile mpfile;

    private long seqNo;
    
    private String fileFolder;

    private String fileNameExtension;

    private String fileNameOri;

    private String fileNameChange;

    private int delCheck;

    private LocalDateTime regdate;

    private LocalDateTime uptdate;


}
