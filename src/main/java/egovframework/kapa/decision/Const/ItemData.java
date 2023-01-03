package egovframework.kapa.decision.Const;

public enum ItemData {

	item1(1, "지연가산금"),
	item2(2, "보상금 증액"),
	item3(3, "허가건축물 등 불법형질변경"),
	item4(4, "일단지  보상"),
	item5(5, "미지금 용지"),
	item6(6, "사도평가"),
	item7(7, "잔여지 매수청구"),
	item8(8, "잔여지 가치하락"),
	item9(9, "잔여건물 가치감소"),
	item10(10, "잔여건물 매수청구"),
	item11(11, "누락 물건 반영"),
	item12(12, "휴업보상(이전비)평"),
	item13(13, "폐업보상"),
	item14(14, "영농손실보상"),
	item15(15, "휴직(실직)보상"),
	item16(16, "사업폐지(취소, 변경, 중단)"),
	item17(17, "이주대책 수립"),
	item18(18, "이주정착금, 주거이전비, 이사비"),
	item19(19, "임료손실"),
	item20(20, "대토보상"),
	item21(21, "구분지상권"),
	item22(22, "10%이상 변동"),
	item23(23, "기타(그 외)"),
	item24(24, "소유자 의견 없음");
	
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
