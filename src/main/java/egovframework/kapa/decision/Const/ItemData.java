package egovframework.kapa.decision.Const;

public enum ItemData {

	item1(1, "지연가산금(재결신청 청구)"),
	item2(2, "보상금 증액"),
	item3(3, "협의 미이행(불이행,미준수)"),
	item4(4, "사업폐지(취소,중단,변경,보류,제외)"),
	item5(5, "재결 보류"),
	item6(6, "무허가건물 부지면적 보상"),
	item7(7, "잔여지/잔여건물 가치 하락"),
	item8(8, "잔여지/잔여건물 매수 청구(확대보상)"),
	item9(9, "사도평가 적정성"),
	item10(10, "일단지 보상"),
	item11(11, "미지급 용지"),
	item12(12, "영업보상(이전비) 적정성"),
	item13(13, "누락 물건 반영"),
	item14(14, "폐업 보상"),
	item15(15, "영농손실보상"),
	item16(16, "휴직(실직)보상"),
	item17(17, "이주대책 수립"),
	item18(18, "이주정착금, 주거이전비, 이사비"),
	item19(19, "구분지상권"),
	item20(20, "10% 변동 내역"),
	item21(21, "기타(임료손실,대토보상 등)"),
	item22(22, "소유자 의견 없음");
	
    private int code;
    private String krName;

    ItemData(int code, String krName) {
        this.code = code;
        this.krName = krName;
    }

    public String getKrName() {
        return krName;
    }

    public int getCode() {
        return code;
    }

}
