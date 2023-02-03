package egovframework.kapa.implementer.domain;

import java.time.LocalDate;

import lombok.Data;

@Data
public class ApplicationList {


	
	private Long judg_seq;
	private String judg_dips_stat_cd;
	private String judg_biz_nm;
	
	//재결구분코드 
	//10:수용 20:이의
	private int judg_div_cd;
	
	private String acpt_judg_dt;
	private String sido_cd;
	private String biz_appl_dt;
	private String biz_strt_dt;
	private String biz_ed_dt;
	private LocalDate biz_oprt_dt;
	
	//접수일
	private LocalDate recv_dt;
	
	private String biz_oprt_cd;
	private String biz_oprt_prce;
	private String anno_fnl_req_dt;
	private String anno_sbmt_dt;
	private String opin_sbmt_dt;
	private String opin_req_dt;
	private String intf_div_cd;
	private String oprt_doc_no;
	private String biz_oprt_ichr_nm;
	private String rept_loc;
	private String rwrd_prce;
	
	//가격시점
	
	
	/*
	 * private String biz_appl_ntft_dt; private String cslt_appr_inst_nm; private
	 * String frst_acpt_judg_comp_cd; private String secd_acpt_judg_comp_cd; private
	 * String use_yn; private String perm_id;
	 */
	 
	
	//사업유형코드	
	
	  private int biz_tp_cd;
	  
	  //private String orgz_div_cd; private String rlt_law_cd;
	 
	
	//수용자재결기관코드
	private int acpt_judg_inst_cd;
	
	private String case_no;
	
	/*
	 * private String reg_dt; private String reg_id; private String reg_ip; private
	 * String mod_dt; private String mod_id; private String mod_ip; private
	 *   private String
	 * anno_peri_cont; private String recm_note; private String recm_rmk; private
	 * String cslt_recm_no; private String dept_cd; private String ichr_id; private
	 * String cslt_appr_inst_cd;  private String
	 * biz_oprt_phone_no; private String bef_case_judg_seq; private String
	 * recmreq_prce_dt; private String judg_dt; private String appr_req_dt; private
	 * String appr_sbmt_dt; private String clamt_nm; private String imps_disp_dt;
	 * private String dips_dt; private String supl_opin_dt; private String
	 * bill_send_dt; private String wrtt_opin_snd_dt; private String
	 * adms_judg_rslt_cont; private String frst_supl_strt_dt; private String
	 * frst_supl_ed_dt; private String secd_supl_strt_dt; private String
	 * secd_supl_ed_dt; private String thrd_supl_strt_dt; private String
	 * thrd_supl_ed_dt; private String frth_supl_strt_dt; private String
	 * frth_supl_ed_dt; private String biz_oprt_ichr_id; private String
	 * frst_objt_judg_comp_cd; private String secd_objt_judg_comp_cd; private String
	 * coms_pay_yn; private String perm_cd; private String frst_supl_peri; private
	 * String secd_supl_peri; private String thrd_supl_peri; private String
	 * frth_supl_peri; private String facl_div_cd; private String supl_req_yn;
	 * private String otsd_judg_seq; private String meno_cont; private String
	 * clame_nm; private String rept_info_cnt; private String ownr_intr_cnt; private
	 * String rept_ownr_intr_cnt; private String fin_yn; private String
	 * review_judg_seq; private String review_case_no; private String implement_cd;
	 * private String no_appraisal_yn; private String cslt_biz_tp_cd; private String
	 * cslt_reward_yn; private String cslt_install_dt; private String cslt_land_amt;
	 * private String cslt_land_cnt; private String cslt_area_amot; private String
	 * cslt_obst_amt; private String cslt_obst_cnt; private String
	 * cslt_business_amt; private String cslt_business_cnt; private String
	 * cslt_agriculture_amt; private String cslt_agriculture_cnt; private String
	 * cslt_fishery_amt; private String cslt_fishery_cnt; private String
	 * cslt_migration_amt; private String cslt_migration_cnt; private String
	 * cslt_etc_amt; private String cslt_etc_cnt; private String cslt_tot_amt;
	 * private String cslt_ownr_cnt; private String cslt_intr_cnt; private String
	 * cslt_pay_amt; private String cslt_big_land_amt; private String
	 * cslt_big_land_cnt; private String cslt_big_area_amot; private String
	 * cslt_bond_amt; private String cslt_tot_amt2; private String cslt_tot_amt3;
	 * private String rmk; private String clame_id; private String cslt_dup_yn;
	 * private String cslt_dup_judg_seq; private String cslt_tot_land_cnt; private
	 * String cslt_tot_area_amot; private String cslt_tot_ownr_cnt; private String
	 * biz_tp_cd_prev;
	 */
	 
	//masterId
	private Long seq;
	
	//사업명
	private String title;
	
	//재결구분
	private String Category;
	
	//시도구분코드
	private String region;
	
	//시행자의뢰일
	private LocalDate viewReqDate;
	
	//비고
	private String Bigo;
	
	//시행자명
	private String custName;
	
	//담당자명
	private String custMan;
	
	//담당자
	private String charge;
	
	//소재지
	private String consultAddr;
	
	//협의 법인
	private String consultAppName;
	
	// 담당자 폰번호
	private String chargeHP;
	
	private LocalDate consultDate_S;
	private LocalDate consultDate_E;
	
	private LocalDate costDate;
	

}
