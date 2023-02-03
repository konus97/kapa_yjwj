package egovframework.kapa.implementer.dto;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ApplicationGoodsDTO {

	private int rank;
	
	private String ownrNm;
	
    private Long judgSeq;
    
    private int reptSeq;

    private Long reptOwnrSeq;
    
    private String reptAddr;
   
    private String mainStrtNo;

    private String subStrtNo;

    private String strtOther;
    
    private String obstKindNm;
    
    private String obstStuc1Nm;

    private String obstStuc2Nm;

    //int -> String 변경
    private String areaAmot;

    private String befUnitCost;
    
    private String areaUnit;

    private String ownrNnm;
    
    private String owrnNm;
    
    private String landShre;
}
