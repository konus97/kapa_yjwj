package egovframework.kapa.file.domain;

import lombok.Data;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

import java.time.LocalDateTime;

@Data
public class SignUpFileDTO {

	private MultipartFile[] file;

    private String[] text;


}
