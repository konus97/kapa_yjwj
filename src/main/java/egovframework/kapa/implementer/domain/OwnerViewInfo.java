package egovframework.kapa.implementer.domain;

import java.time.LocalDate;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class OwnerViewInfo {

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
	private String land_obst_kind_cd;
	
	// new
		//land, object 공통 vo
		private int id; // rept_seq
		private Long masterId; //judg_seq
		private int seq; //rept_lst_seq
		private String reg; //sido_gungu_cd
		private String eub; //domyri_cd
		private String san; //mont_div_cd
		private String bun1; //main_strt_no
		private String bun2; //sub_strt_no
		private String bun3;//strt_other
		private String addr; //rept_addr
		private String pname;
		private Long pid;
		
		// land table 시작
		private String gm1; //obst_stuc1_cd
		private String gm2; //obst_stuc2_cd
		private int area;//area_amot
		private String interests; // 지분이라는데 매칭되는 위치 모르겠음
		
		//확실치 않음
		private Long priceK; //bef_unit_cost
		private Long priceA; //frst_comp_calc_cd
		private Long priceB;  //secd_comp_calc_cd
		private Long priceM; //comp_avrg_calc_cd
		private Long priceT;//thrd_comp_calc_cd
		
		
		private Long tmpId; //안쓰는거에요
		private String custKey; //사업시행자의뢰키

		private String kapa_bigo;
		private String kapa_flg;
		private Long gs_gakuka;
		private Long gs_gakukb;
		private LocalDateTime insertDateTime;
		private LocalDateTime changeDate;
		
		private int kindA;
		private String group1A;
		private String group2A;
		private String group3A;
		private String group4A;
		private String group5A;
		private int kindB;
		private String group1B;
		private String group2B;
		private String group3B;
		private String group4B;
		private String group5B;
		private String area1LB;
		private String area1RB;
		
		//확실치 않음
		private String codeK; //judg_calc_cd
		private String codeA;//bef_calc_cd
		private String codeB;//secd_comp_calc_cd
		
		// land 테이블 끝
		
		
		//지장물 시작
		private String kind; //obst_kind_nm
		private String gujo; //obst_stuc1_nm
		private String unit; //area_unit
		private String objGubunB; //rights_nm
		private String oGubun; //land_obst_kind_cd
		private String area1; //지장물 area
		//rept_ownr_intr_seq 얘는 id인듯
		//지장물 나머지 잘 모르겠어서 우선 보류
	
}
