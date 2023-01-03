package egovframework.kapa.implementer.Const;

public enum DecisonState {

	State0(0, "대기"),
	State1(1, "LTIS입력정보확인"),
	State2(2, "재결접수"),
	State3(3, "열람공고"),
	State4(4, "심의안건"),
	State5(5, "재결진행중"),
	State6(6, "심사완료"),
	State7(7, "반려"),
	State8(8, "재결지원"),
	State9(9, "보류");

    private int code;
    private String krName;

    DecisonState(int code, String krName) {
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
