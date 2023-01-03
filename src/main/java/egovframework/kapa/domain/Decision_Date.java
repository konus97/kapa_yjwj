package egovframework.kapa.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Decision_Date {

    private Long seqNo;
    private LocalDate consultationDate;
    private Integer delCheck;
    private LocalDateTime regdate;
    private LocalDateTime uptdate;

}

