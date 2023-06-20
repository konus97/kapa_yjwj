package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Search extends Pagination {

	private String searchType;
    private String keyword;
    private int boardSeq;
    
    private String numOrname;
    private String startDate;
    private String endDate;
    private String subject;
    private String code;
    private String part;
    private String name;
    private String checkvalue;
    private String userAuthority; // 유저 권한
    private String userId; // 
}
