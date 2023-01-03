package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_ConsultationDate extends Pagination {

    private Long DecisionId;
    private String consultationDate;
    private String consultationDateText;
    private Integer rank;
    private Integer delCheck;
    private String regdate;
    
    
}
