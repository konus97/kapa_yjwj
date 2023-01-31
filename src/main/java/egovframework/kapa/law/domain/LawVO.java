package egovframework.kapa.law.domain;

import java.time.LocalDateTime;

import egovframework.kapa.domain.Pagination;
import lombok.Data;

@Data
public class LawVO extends Pagination { // 관련 법령

	private int seq_no;
	
	private String article; // 법률 조
	
	private String paragraph; // 법률 항
	
	private String title;	// 법령
	
	private String content; // 내용

	private LocalDateTime regdate;	// 등록일
	
	private LocalDateTime uptdate;	// 수정일
	
}
