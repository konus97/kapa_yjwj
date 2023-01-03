package egovframework.kapa.domain;

import lombok.Data;

@Data
public class Decision_Cityplan extends Pagination {

    private Long DecisionId;
    private String planTitle;
    private String planContent;
    private Integer rank;
    private Integer delCheck;
    private String regdate;
    
    
}
