package egovframework.kapa.domain;

import java.time.LocalDateTime;

import lombok.Data;

@Data
public class Decision_Consult {

	private int seq;
	private int id;
	private String gubun;
	private int AppCode;
	private String appName;
	private LocalDateTime request; 
	private LocalDateTime limit; 
	private LocalDateTime response;
	private String docID;
	private String price; 
	private LocalDateTime stay1; 
	private LocalDateTime stay2; 
	private LocalDateTime stay3;
	private String stayReason;
	private LocalDateTime pDate;
	private String punish;
	private String contents;
	private LocalDateTime consultDate;
	private String bejung_AppCode;
	private String gam_Cancel;
	private String gameVal_Cd;
	private String gS_CYEAR;
	private String gua_no;
	
	private String kapa_Price;
	private String kapa_bill;
}
