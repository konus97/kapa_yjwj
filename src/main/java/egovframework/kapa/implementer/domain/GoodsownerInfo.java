package egovframework.kapa.implementer.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class GoodsownerInfo {

	private int rept_seq;
	private String rept_addr;
	private String sido_gungu_cd;
	private String main_strt_no;
	private String sub_strt_no;
	private String strt_other;
	private String obst_kind_nm;
	private String obst_stuc1_nm;
	private String obst_stuc2_nm;
	private int area_amot;
	private int bef_unit_cost;
	private String area_unit;
	private String ownr_nm;
	private String land_shre;
	
	
}
