package egovframework.kapa.implementer.Const;

public enum AgencyData {

	Central(00, "중앙토지수용위원회"),
	Seoul(10, "서울지방토지수용위원회"),
	Busan(11, "부산지방토지수용위원회"),
	Daegu(12, "대구지방토지수용위원회"),
	Incheon(13, "인천지방토지수용위원회"),
	gwangju(14, "광주지방토지수용위원회"),
	Daejeon(15, "대전지방토지수용위원회"),
	Ulsan(16, "울산지방토지수용위원회"),
	gyeongg(17, "경기지방토지수용위원회"),
	Gangwon(18, "강원지방토지수용위원회"),
	Chungbuk(19, "충북지방토지수용위원회"),
	Chungnam(20, "충남지방토지수용위원회"),
	Jeonbuk(21, "전북지방토지수용위원회"),
	Jeonnam(22, "전남지방토지수용위원회"),
	Gyeongbuk(23, "경북지방토지수용위원회"),
	Gyeongnam(24, "경남지방토지수용위원회"),
	Jeju(25, "제주지방토지수용위원회"),
	Sejong(26, "세종지방토지수용위원회");
	
    private int code;
    private String krName;

    AgencyData(int code, String krName) {
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
