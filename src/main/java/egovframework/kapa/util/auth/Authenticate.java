package egovframework.kapa.util.auth;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import tcp.seoul.sms.SMSClient;
import tcp.seoul.sms.SMSClientVO;
import tcp.seoul.util.SeedScrtyUtil;

public class Authenticate {
	
	private String sSiteCode 		= "BP984";				// NICE로부터 부여받은 사이트 코드
	private String sSitePassword 	= "ugRjJyIf5BTm";		// NICE로부터 부여받은 사이트 패스워드
	private String sRequestNumber 	= "A69474FA61514E340233E7E0DDE28C0A"; 
	
	public HashMap<String, Object> certificateBySign(HashMap<String, Object> param, HttpServletRequest request) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		//NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
		
		// 요청 번호, 이는 성공/실패후에 같은 값으로 되돌려주게 되므로 
    	// 업체에서 적절하게 변경하여 쓰거나, 아래와 같이 생성한다.
		
	  	request.getSession().setAttribute("REQ_SEQ" , sRequestNumber);	// 해킹등의 방지를 위하여 세션을 쓴다면, 세션에 요청번호를 넣는다.
	  	
	  	
	   	String sAuthType = "M";      	// 없으면 기본 선택화면, M: 핸드폰, C: 신용카드, X: 공인인증서
	   	
	   	String popgubun 	= "N";		//Y : 취소버튼 있음 / N : 취소버튼 없음
		String customize 	= "";		//없으면 기본 웹페이지 / Mobile : 모바일페이지
		
		String sGender = ""; 			//없으면 기본 선택 값, 0 : 여자, 1 : 남자 
		
	    // CheckPlus(본인인증) 처리 후, 결과 데이타를 리턴 받기위해 다음예제와 같이 http부터 입력합니다.
		//리턴url은 인증 전 인증페이지를 호출하기 전 url과 동일해야 합니다. ex) 인증 전 url : http://www.~ 리턴 url : http://www.~
		
		String requestUri = request.getRequestURI();
		
		String sReturnUrl = "";
		String sErrorUrl = "";
		
		if(requestUri.indexOf("/broker/edcAuthPop") >= 0) {
			// 개발용
			sReturnUrl = "http://localhost:8082"+param.get("returnUrl").toString();      // 성공시 이동될 URL
		    sErrorUrl = "http://localhost:8082/land/broker/edcAuth.do";          // 실패시 이동될 URL
				
			// 운영서버
//			sReturnUrl = "https://land.seoul.go.kr:444"+param.get("returnUrl").toString();      // 성공시 이동될 URL
//			sErrorUrl = "https://land.seoul.go.kr:444/land/broker/edcAuth.do";          // 실패시 이동될 URL
		} 
		

	    // 입력될 plain 데이타를 만든다.
	    String sPlainData = "7:REQ_SEQ" + sRequestNumber.getBytes().length + ":" + sRequestNumber +
	                        "8:SITECODE" + sSiteCode.getBytes().length + ":" + sSiteCode +
	                        "9:AUTH_TYPE" + sAuthType.getBytes().length + ":" + sAuthType +
	                        "7:RTN_URL" + sReturnUrl.getBytes().length + ":" + sReturnUrl +
	                        "7:ERR_URL" + sErrorUrl.getBytes().length + ":" + sErrorUrl +
	                        "11:POPUP_GUBUN" + popgubun.getBytes().length + ":" + popgubun +
	                        "9:CUSTOMIZE" + customize.getBytes().length + ":" + customize + 
							"6:GENDER" + sGender.getBytes().length + ":" + sGender;
	    
	    String sMessage = "";
	    String sEncData = "";
	    
	    int iReturn = 1; //niceCheck.fnEncode(sSiteCode, sSitePassword, sPlainData);
	    if( iReturn == 0 )
	    {
	        //sEncData = niceCheck.getCipherData();
	    }
	    else if( iReturn == -1)
	    {
	        sMessage = "암호화 시스템 에러입니다.";
	    }    
	    else if( iReturn == -2)
	    {
	        sMessage = "암호화 처리오류입니다.";
	    }    
	    else if( iReturn == -3)
	    {
	        sMessage = "암호화 데이터 오류입니다.";
	    }    
	    else if( iReturn == -9)
	    {
	        sMessage = "입력 데이터 오류입니다.";
	    }    
	    else
	    {
	        sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
	    }
	    
	    
	    result.put("sMessage" , sMessage);
	    result.put("sEncData" , sEncData);
	    
	    return result;
	}
	
	@SuppressWarnings("unchecked")
	public HashMap<String, Object> getReturn(HttpServletRequest request){
		HashMap<String, Object> result = new HashMap<String, Object>();
		HashMap<String, Object> authMap = new HashMap<String, Object>();
		
		//NiceID.Check.CPClient niceCheck = new  NiceID.Check.CPClient();
		
		String sEncodeData 	= requestReplace(request.getParameter("EncodeData"), "encodeData");
		String status 		= "fail";		// 인증결과
		
		String sCipherTime = "";			// 복호화한 시간
	    String sRequestNumber = "";			// 요청 번호
	    String sResponseNumber = "";		// 인증 고유번호
	    String sAuthType = "";				// 인증 수단
	    String sMessage = "";
	    String sPlainData = "";
		
	    int iReturn = 1;//niceCheck.fnDecode(sSiteCode, sSitePassword, sEncodeData);

	    if( iReturn == 0 ){
	    	
	        //sPlainData = niceCheck.getPlainData();
	        //sCipherTime = niceCheck.getCipherDateTime();
	        
	        // 데이타를 추출합니다.
	        //result = niceCheck.fnParse(sPlainData);
	        
	        sRequestNumber  = (String)result.get("REQ_SEQ");
	        sResponseNumber = (String)result.get("RES_SEQ");
	        sAuthType		= (String)result.get("AUTH_TYPE");
	        
	        String session_sRequestNumber = (String)request.getSession().getAttribute("REQ_SEQ");
	        if(!sRequestNumber.equals(session_sRequestNumber))
	        {
	        	status = "fail";
	            sMessage = "세션값 불일치 오류입니다.";
	            sResponseNumber = "";
	            sAuthType = "";
	        } else {
	        	status = "success";
	        	sMessage = "인증성공!";
	        	
	        	authMap.put("NAME", result.get("NAME").toString());			// 이름
	        	authMap.put("TEL", result.get("MOBILE_NO").toString());		// 폰번호
	        }
	    } else if( iReturn == -1) {
	    	status = "fail";
	        sMessage = "복호화 시스템 오류입니다.";
	    } else if( iReturn == -4) {
	    	status = "fail";
	        sMessage = "복호화 처리 오류입니다.";
	    } else if( iReturn == -5) {
	    	status = "fail";
	        sMessage = "복호화 해쉬 오류입니다.";
	    }  else if( iReturn == -6) {
	    	status = "fail";
	        sMessage = "복호화 데이터 오류입니다.";
	    } else if( iReturn == -9) {
	    	status = "fail";
	        sMessage = "입력 데이터 오류입니다.";
	    } else if( iReturn == -12) {
	    	status = "fail";
	        sMessage = "사이트 패스워드 오류입니다.";
	    } else {
	    	status = "fail";
	        sMessage = "알수 없는 에러 입니다. iReturn : " + iReturn;
	    }
	    
	    authMap.put("status", status);
	    authMap.put("sMessage", sMessage);
	    return authMap;
	}
	
	
	private String requestReplace (String paramValue, String gubun) {

        String result = "";
        
        if (paramValue != null) {
        	
        	paramValue = paramValue.replaceAll("<", "&lt;").replaceAll(">", "&gt;");

        	paramValue = paramValue.replaceAll("\\*", "");
        	paramValue = paramValue.replaceAll("\\?", "");
        	paramValue = paramValue.replaceAll("\\[", "");
        	paramValue = paramValue.replaceAll("\\{", "");
        	paramValue = paramValue.replaceAll("\\(", "");
        	paramValue = paramValue.replaceAll("\\)", "");
        	paramValue = paramValue.replaceAll("\\^", "");
        	paramValue = paramValue.replaceAll("\\$", "");
        	paramValue = paramValue.replaceAll("'", "");
        	paramValue = paramValue.replaceAll("@", "");
        	paramValue = paramValue.replaceAll("%", "");
        	paramValue = paramValue.replaceAll(";", "");
        	paramValue = paramValue.replaceAll(":", "");
        	paramValue = paramValue.replaceAll("-", "");
        	paramValue = paramValue.replaceAll("#", "");
        	paramValue = paramValue.replaceAll("--", "");
        	paramValue = paramValue.replaceAll("-", "");
        	paramValue = paramValue.replaceAll(",", "");
        	
        	if(gubun != "encodeData"){
        		paramValue = paramValue.replaceAll("\\+", "");
        		paramValue = paramValue.replaceAll("/", "");
            paramValue = paramValue.replaceAll("=", "");
        	}
        	
        	result = paramValue;
            
        }
        return result;
	}



// ------------ 휴대폰 인증 -----------------

	public void sendSms(String phone) throws Exception{
		
		System.out.println("###### Client 시작 ######");
		
		SMSClientVO smsClientVO = new SMSClientVO();
		
		SMSClient smsClient = new SMSClient();
		
		smsClientVO.setApikey("C636F848A4BA34F24FB133E7BFCEBDE6CC3E4A2FEDA1F906FB48AC4D6FED8E");
		//API KEY 설정
		//담당주무관에게서 받은 API KEY 사용
		
		smsClientVO.setMsgtype("LMS"); //SMS,LMS,MMS,KKO
		//문자 전송 타입 설정
		
		smsClientVO.setKindtype("001"); // 001:전송 , 002:결과조회 , 003:예약취소
		//문자 전송 구분
		//예약 등록 전송건 003 코드 예약 취소 가능
		
		smsClientVO.setSender("0221334699");
		//발신자 번호
		//“-” 미포함
		//발신번호는 지역번호 포함
		//02,031...

		//String dealer_mtelno = param.get("tel").toString(); // 받는 번호
		String dealer_mtelno = phone; // 받는 번호
		
		String receiver = dealer_mtelno.replaceAll("-", "");
		
		/*
		 * for( int i = 1 ; i < 10 ; i ++ ){ receiver += ",0101234" +
		 * String.format("%04d", i); }
		 */
		//수신자 번호 목록
		//1회 전송 수 : 등록된 1회 최대 전송수
		//구분자 “,”
		//“-” 미포함
		
		receiver = SeedScrtyUtil.encryptText(receiver);
		
		smsClientVO.setReceiver(receiver);
		// 수신번호
		
		String state = "승인";
//		if(param.get("state").equals("2")) {
//			state = "반려";
//		}else if(param.get("state").equals("3")) {
//			state = "승인";
//		}
//		String frstRegDate = param.get("frstRegDate").toString().substring(0,4) + "년 " 
//				+ param.get("frstRegDate").toString().substring(5,7) + "월 " 
//				+ param.get("frstRegDate").toString().substring(8,10) + "일";
//		
//		smsClientVO.setMsg(param.get("applyNm") + "님 " + frstRegDate + "에 접수하신 재결서 열람신청이 ["+state+"]되었습니다.");
		smsClientVO.setMsg("test 메세지입니다");
		//메세지 내용
		//LMS,MMS(2000byte 이내),SMS(80byte이내)
		
		smsClientVO.setSubject("회원가입인증");
		//메세지 제목
		//LMS,MMS 50byte . 한글 약 20자
		
		
		SMSClientVO resultVo;
		resultVo  =  smsClient.doSend(smsClientVO);
		//SMSClientVO 형식으로 리턴
		//인터페이스 정의서 확인
		
		System.out.println("결과값 code : " + resultVo.getResultCode());
		System.out.println("결과값 ment : " + resultVo.getResultMent());
		System.out.println("결과값 postid : " + resultVo.getPostid());
		System.out.println("###### Client 종료 ######");
		
	}

}