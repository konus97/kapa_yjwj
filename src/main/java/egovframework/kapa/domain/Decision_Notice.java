package egovframework.kapa.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Decision_Notice {

    private Long seqNo;
    private Long decisionId;
    private String docNumber;
    private String docTitle;
    private String receiver;
    private LocalDateTime requestStartDate;
    private LocalDateTime requestEndDate;
    private String newsletterDay;
    private Integer delCheck;
    private LocalDateTime regdate;
    private LocalDateTime uptdate;
    private LocalDateTime publicationExpiryDate;
}
