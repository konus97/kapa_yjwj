package egovframework.kapa.util;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/*****************************************************************
 * @description : 문자열 처리 하기위한 class
 * $Id: StrUtil.java,v 1.1 2011/10/02 08:12:00 $
 * $Revision: 1.1 $
 *****************************************************************
 * DATE			AUTHOR		DESCRIPTION
 * ---------------------------------------------------------------
 * 2011. 10. 2	강병수		최초작성
 * 
 *****************************************************************/

@Component
public class StrUtil {

	public static final String replyImage = "<img src='/image/re.gif' border=0>";
	
	/**
	 * 게시판 내용보기에서 내용 출력을 위한 부분(줄바꿈을 <br>로 바꿈)
	 * @param contents 출력 부분
	 * @return 줄바꿈이 처리된 String
	 */
    public static String nl2br(String contents)
    {
		if(contents.indexOf('\n') < 0)
			return contents;		
		StringBuffer buffer = new StringBuffer();
    	StringTokenizer st = new StringTokenizer(contents, "\n");
		while(st.hasMoreTokens()) {	
			buffer.append(st.nextToken()+ "<br>");
		}	
		return buffer.toString();	
    }

  //입력값 체크(sqlInjection 공격 대비)
  //"'", "script", "=", "%", "(", ")", "<", ">", "--", "insert", "update", "delete"
  	public static String sqlInjection(String str){
  		String[] sql_injection = {"'", "script", "=", "%", "(", ")", "<", ">", "--", "insert", "update", "delete"};
  		ArrayList<String> li = new ArrayList<String>();
  		for(int i = 0; i < sql_injection.length ; i++){
  			str = str.replace(sql_injection[i],"");
  		}
  		return str;
  	}
  	
  	//UTF형식으로 변환
	public static String toUTF(String str) {
        String convStr = null;
        try {
            if(str == null)
                return "";

            // 현재문자열을 8859_1형식으로 읽어내어 KSC5601형식으로 변환
            convStr = new String(str.getBytes("ISO8859_1"),"UTF-8");
        } catch (UnsupportedEncodingException e) {
        }
        return convStr;
    }
    /**
     * 숫자 문자열을 1,234,567 형태로 만듬
     * @param value
     * @return
     */
	public static String format(String value)
	{
		if ((value == null) || (value.equals(""))){
			return "0";
		}

		DecimalFormat df = (DecimalFormat) NumberFormat.getNumberInstance();
		Long longvalue;
		try {
			longvalue = new Long(value);
		} catch (Exception e){
			return value;
		}
		
		df.applyPattern("#,###");
		return(df.format(longvalue));
	}
	
	/**
	 * len 길이로 앞에 0 를 채운다
	 * 
	 * @param value
	 * @param len
	 * @return
	 */
	public static String fillZero(int value, int len){
		String retValue = "";
		retValue = Integer.toString(value);
		int sl = retValue.length();
		for (int i = len; i > sl; i--){
			retValue = "0" + retValue;
		}
		return retValue;
	}

	
	/**
	 * Controler 의 cmd Index 값을 구한다.
	 * 
	 * @param cl
	 * @param cmd
	 * @return
	 */
	public static int getCmdIndex(String [][] cl , String cmd){
		
		for (int i =0 ; i < cl.length; i++){
			if(cmd.equals(cl[i][0])){
				return i; 
			}
		}
		return -1;
	}



	    // 8859_1을 KSC5601로 변환
	    public String toKorean(String str) {
	        String convStr = null;
	        try {
	            if(str == null)
	                return "";

	            // 현재문자열을 8859_1형식으로 읽어내어 KSC5601형식으로 변환
	            convStr = new String(str.getBytes("8859_1"),"KSC5601");
	        } catch (UnsupportedEncodingException e) {
	        }
	        return convStr;
	    }

		// 8859_1을 KSC5601로 변환
	    public String toEUC(String str) {
	        String convStr = null;
	        try {
	            if(str == null)
	                return "";

	            // 현재문자열을 8859_1형식으로 읽어내어 KSC5601형식으로 변환
	            convStr = new String(str.getBytes("8859_1"),"KSC5601");
	        } catch (UnsupportedEncodingException e) {
	        }
	        return convStr;
	    }


	    // KSC5601을 8859_1로 변환
	    public String fromKorean(String str) {
	        String convStr = null;
	        try {
	            if(str == null)
	                return "";

	            // 현재문자열을 KSC5601형식으로 읽어내어 8859_1형식으로 변환
	            convStr = new String(str.getBytes("KSC5601"),"8859_1");
	        } catch (UnsupportedEncodingException e) {
	        }
	        return convStr;
	    }

	    
	    // Null을 boolean 체크
	    public static boolean getNull(String str) {
	        boolean res = false;
	        if (str == null || str.length() == 0) {
	        	res = true;
	        }
	        return res;
	    }

	    
	    // Null을 ""로 변환
	    public String checkNull(String str) {
	        String strTmp;
	        if (str == null)
	            strTmp = "";
	        else
	            strTmp = str;
	        return strTmp;
	    }


	    // Null을 0로 변환
	    public String checkNull2(String str) {
	        String strTmp;
	        if (str == null)
	            strTmp = "0";
	        else
	            strTmp = str;
	        return strTmp;
	    }


	    // 공백을 &nbsp;로 변환
	    public String null2nbsp(String str) {
	        String strTmp;
	        if (str == null || str.equals(""))
	            strTmp = "&nbsp;";
	        else
	            strTmp = str;
	        return strTmp;
	    }
	    
	    public String textQuot(String str){
	    	
	    	str = str.replaceAll("\\\"", "\'");
	    	str = str.replaceAll("'", "\'");
	    	return str;
	    }

	    // TextArea에서 입력받은 따옴표 앞에 \ 추가
	    public String addslash(String comment)
	    {
	        if(comment == null){
	            return "";
	        }

	        int length = comment.length();
	        StringBuffer buffer = new StringBuffer();
	        for (int i = 0; i < length; ++i)
	        {
	            String comp = comment.substring(i, i+1);
	            if ("'".compareTo(comp) == 0)
	            {
	                buffer.append("\'");
	            }
	            if ("\\\"".compareTo(comp) == 0)
	            {
	            	buffer.append("&quot;");
	            }
	            buffer.append(comp);
	        }
	        return buffer.toString();
	    }
	    
	    // TextArea에서 입력받은 따옴표 앞에 \ 추가
	    public String addslash2(String comment)
	    {
	        if(comment == null){
	            return "";
	        }

	        int length = comment.length();
	        StringBuffer buffer = new StringBuffer();

	        for (int i = 0; i < length; ++i)
	        {
	            String comp = comment.substring(i, i+1);
	            if ("\\\"".compareTo(comp) == 0)
	            {
	                buffer.append("&quot;");
//&nbsp; 
	            }

	            buffer.append(comp);
	        }
	        return buffer.toString();
	    }


	    // TextArea에서 입력받은 < or > 를 특수문자로 변환
	    public String html2spec(String comment)
	    {
	        if(comment == null){
	            return "";
	        }

	        int length = comment.length();
	        StringBuffer buffer = new StringBuffer();

	        for (int i = 0; i < length; ++i)
	        {
	            String comp = comment.substring(i, i+1);
	            if ("<@".compareTo(comp) == 0)
	                buffer.append("&lt;@");
	            else if ("<script".compareTo(comp) == 0)
	                buffer.append("&lt;script");
	            else
	                buffer.append(comp);
	        }
	        return buffer.toString();
	    }

	    public static String spaceadd(String addstr) 
	    { 
	        if(addstr == null){ 
	            return ""; 
	        } 

	        int length = addstr.length(); 
	        StringBuffer buffer = new StringBuffer(); 

	        for (int k = 0; k < length; ++k){ 
	            String comp = addstr.substring(k, k+1); 

	            if (" ".compareTo(comp) == 0){ 
	                buffer.append("&nbsp;"); 
	            } 

	            buffer.append(comp); 
	        } 
	        return buffer.toString(); 
	    } 
	    
	    public String strReplace(String strcoment) {  //쌍따음표 리턴
	    	StringTokenizer str = new StringTokenizer(strcoment);
	    	
	    	while (str.hasMoreTokens()) {
	    		strcoment += str.nextToken();
			}
	    	return strcoment;
		}
	    
	    
	 // 문자열에서 태그 삭제
	    public static String tagDel(String s)
	    {
	    	System.out.println(" 시작 "+s);
			int text_start 		= 0;
			int text_end 			= 0;
			String parenthesis 	= "";
			
			for(int i=0; i<s.length(); i++ ){	
				if(s.indexOf("<") >= 0){	//태그가 있는경우
					text_start 	= s.indexOf("<");
					text_end	= s.indexOf(">");
					
					if(s != ""||s != null){
						if(text_start != -1&&text_end != -1){
							if(s.length()-text_end>text_start){
								parenthesis = s.substring(text_start, s.length()-text_end);
								s = s.replace(parenthesis, "");
							}else{
								break;
							}
					}}
				}else{break;}//태그가 없을 경우
			}
			System.out.println(" 결과 "+s);
	    	return s;
	    }
	    
	     //문자열 뒤집기
		  public static String reverseString(String s) {
		    return ( new StringBuffer(s) ).reverse().toString();
		  }
		  
		  public static String insertReplace(String str){
		    	
			  str = str.replaceAll("'", "\'");
			  str = str.replaceAll("\"", "\\\"");
		    	return str;
		  }
		  
		  
		  public static String codeReplace(String str){
		    	
			  str = str.replaceAll("'", "''");
			  str = str.replaceAll("\"", "&quot;");
		    	return str;
		  }
		  



		  // CSS Body attr + value Sring 
		  public static String css_body_append(String s, String v) {
			  if(v != null && v != "") {
				  s = "\t" + s + v + "\n"; 
			  }
			  return s;
		  }
		  // CSS Body attr + value + ext Sring
		  public static String css_body_append(String s, String v, String ext) {
			  if(v != null && v != "") {
				  s = "\t" + s + v + ext + "\n"; 
			  }
			  return s;
		  }

		  // CSS Body attr + value + ext Sring
		  public static String css_body_append(String s, int v, String ext) {
				  s = "\t" + s + v + ext + "\n"; 
			  return s;
		  }

		// CSS body value String
		  public static String css_body_append(String v) {
			  String s="";
			  if(v != null && v != "") {
				  s = "\t" + v + "\n"; 
			  }
			  return s;
		  }
		  // CSS class append;
		  public static String css_class_append(String v) {
			  String s = "";
			  if(v != null && v != "") {
				  s = v + "\n"; 
			  }
			  return s;
		  }
		  
		  // img src 경로 추출
			public static List<String> getImgSrc(String str) {
				Pattern nonValidPattern = Pattern
						.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
				List<String> result = new ArrayList<String>();
				if(str != null && str.length() > 0) {
					Matcher matcher = nonValidPattern.matcher(str);
					while (matcher.find()) {
						result.add(matcher.group(1));
					}
				}
				return result;
			
			}
			

			 
			 /**
			  * 특정 날짜에 대하여 요일을 구함(일 ~ 토)
			  * @param date
			  * @param dateType
			  * @return
			  * @throws Exception
			  */
			 public String getDateDay(String date, String dateType) throws Exception {
			  
			      
			     String day = "" ;
			      
			     SimpleDateFormat dateFormat = new SimpleDateFormat(dateType) ;
			     Date nDate = dateFormat.parse(date) ;
			      
			     Calendar cal = Calendar.getInstance() ;
			     cal.setTime(nDate);
			      
			     int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
			      
			      			      
			     switch(dayNum){
			         case 1:
			             day = "일";
			             break ;
			         case 2:
			             day = "월";
			             break ;
			         case 3:
			             day = "화";
			             break ;
			         case 4:
			             day = "수";
			             break ;
			         case 5:
			             day = "목";
			             break ;
			         case 6:
			             day = "금";
			             break ;
			         case 7:
			             day = "토";
			             break ;
			              
			     }
			      
			      
			      
			     return day ;
			 }
			 

	/**
	 * 바이트를 체크한다. 기준보다 크면 false, 작거나 같으면 true
	 * 
	 * @param txt
	 *            체크할 text
	 * @param standardByte
	 *            기준 바이트 수
	 * @return
	 */
	public static boolean byteCheck(String txt, int standardByte) {
		if (StrUtil.getNull(txt)) {
			return false;
		}

		// 바이트 체크 (영문 1, 한글 2, 특문 1)
		int en = 0;
		int ko = 0;
		int etc = 0;

		char[] txtChar = txt.toCharArray();
		for (int j = 0; j < txtChar.length; j++) {
			if (txtChar[j] >= 'A' && txtChar[j] <= 'z') {
				en++;
			} else if (txtChar[j] >= '\uAC00' && txtChar[j] <= '\uD7A3') {
				ko++;
				ko++;
			} else {
				etc++;
			}
		}

		int txtByte = en + ko + etc;
		if (txtByte == standardByte) {
			return true;
		} else {
			return false;
		}

	}

	
	public static String makeRandomId(int standardByte){
		
		Random rnd =new Random();

		StringBuffer buf =new StringBuffer();

		for(int i=0;i<standardByte;i++){
		    if(rnd.nextBoolean()){
		        buf.append((char)((int)(rnd.nextInt(26))+97));
		    }else{
		        buf.append((rnd.nextInt(10))); 
		    }
		}
		
		String final_id= buf.toString();		
		
		return final_id;

	}

	public static String removeSpace(String str) {
		return str.replaceAll("(^\\p{Z}+|\\p{Z}+$)", "");
	}


	public static String convertToDecimalPoint(String data) {

		if("TBD".equals(data)){
			return data;
		}else{
			data = StringUtils.replace(data, "%", "");    // 줄바꿈 처리

			Double dataChange =  Double.parseDouble(data);
			return String.format("%.2f", dataChange);
		}
	}

	public static String convertToDecimalPoint4f(String data) {

		if("TBD".equals(data)){
			return data;
		}else{
			data = StringUtils.replace(data, "%", "");    // 줄바꿈 처리

			Double dataChange =  Double.parseDouble(data);
			return String.format("%.4f", dataChange);
		}
	}

	public static String convertToPerformanceDecimalPoint(String data) {

		data = StringUtils.replace(data, "%", "");    // 줄바꿈 처리

		if("TBD".equals(data)){
			return data;
		}else{
			Double dataChange =  Double.parseDouble(data);
			return String.format("%.2f", dataChange)+"%";
		}
	}


	public static String convertToDecimalFormat(String data) {

		if("TBD".equals(data)){
			return data;
		}else{
			data = StringUtils.replace(data, ",", "");    // , 처리
			Double dataChange =  Double.parseDouble(data);
			DecimalFormat dc = new DecimalFormat("###,###,###,###");
			return dc.format(dataChange);
		}
	}

	public static String convertToHtmlBrTag(String data) {
		return StringUtils.replace(data, "\n", "<br>");    // 줄바꿈 처리
	}

	/**
	 * 모든 HTML 태그를 제거하고 반환한다.
	 *
	 * @param html
	 * @throws Exception
	 */
	public static String removeTag(String html) throws Exception {
		return html.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>", "");
	}

	public static String decodeBase64Content(String data) {
		byte[] decodedContent = Base64.decodeBase64(data);
		return new String(decodedContent);
	}

	public static String removeSpecials(String str){
		String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]";
		str =str.replaceAll(match, "");
		return str;
	}

	public static String removeQuotes(String str){

		if(StrUtil.getNull(str)){
			str="";
		}else{
			str =str.replaceAll("\"", "");
		}

		return str;
	}


	public static String removeSpecialsAndChangeSpace(String str){
		String match = "[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]";
		str =str.replaceAll(match, "");
		str =str.replaceAll(" ", "-");

		return str;
	}

	public static Double strToDouble(String s) {
		s = StringUtils.replace(s, " ", "");    // , 처리
		s = StringUtils.replace(s, "%", "");    // , 처리
		s = StringUtils.replace(s, ",", "");    // , 처리

		if("-".equals(s))s="0";

		return s.matches("\\+?[1-9][0-9]{0,11}") ? Double.parseDouble(s) : Double.parseDouble(s);
	}

	public static Double strToDoubleNotNegative(String s) {
		s = StringUtils.replace(s, " ", "");    // , 처리
		return s.matches("\\+?[1-9][0-9]{0,11}") ? Double.parseDouble(s) : Double.parseDouble(s);
	}

	public static int strToInt(String s) {
		s = StringUtils.replace(s, ",", "");    // , 처리
		return Integer.parseInt(s);
	}

	public static Long strToLong(String s) {
		s = StringUtils.replace(s, " ", "");    // , 처리
		s = StringUtils.replace(s, "%", "");    // , 처리
		s = StringUtils.replace(s, ",", "");    // , 처리
		return Long.parseLong(s);
	}
	
	// for PdfConvert
	
	public static String lpad(int target, int maxLen, String padChar) {
		return lpad(String.valueOf(target), maxLen, padChar);
	}
	
	
	public static String lpad(String target, int maxLen, String padChar) {
		if (target == null) {
			target = "";
		}
		
		if (padChar == null || padChar.length() == 0) {
			padChar = "0";
		} else if (padChar.length() > 1) {
			padChar = padChar.substring(0, 1);
		}
		
		String result = "";
		if (target.length() < maxLen) {
			int padCount = maxLen - target.length();
			for (int i=0; i<padCount; i++) {
				result += padChar;
			}
			
			result += target;
			
		} else {
			result = target;
		}
		
		return result;
	}
}
