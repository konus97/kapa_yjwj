package egovframework.kapa.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Decision_AgendaDate {

    private Long seqNo;
    private Long decisionId;
    private Long selectDate;
    private Integer delCheck;
    private LocalDateTime regdate;
    private LocalDateTime uptdate;

}

