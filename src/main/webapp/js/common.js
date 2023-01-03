//날짜 date formate 함수
Date.prototype.format = function(f) {
	if (!this.valueOf()) return " ";
	
	var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
	var d = this;
		
	return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
		switch ($1) {
			case "yyyy": return d.getFullYear();
			case "yy": return (d.getFullYear() % 1000).zf(2);
			case "MM": return (d.getMonth() + 1).zf(2);
			case "dd": return d.getDate().zf(2);
			case "E": return weekName[d.getDay()];
			case "HH": return d.getHours().zf(2);
			case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
			case "mm": return d.getMinutes().zf(2);
			case "ss": return d.getSeconds().zf(2);
			case "a/p": return d.getHours() < 12 ? "오전" : "오후";
			default: return $1;
		}
	});
};	

Date.isLeapYear = function (year) { 
	return (((year % 4 === 0) && (year % 100 !== 0)) || (year % 400 === 0)); 
};

Date.getDaysInMonth = function (year, month) {
	return [31, (Date.isLeapYear(year) ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month];
};

Date.prototype.isLeapYear = function () { 
	return Date.isLeapYear(this.getFullYear()); 
};

Date.prototype.getDaysInMonth = function () { 
	return Date.getDaysInMonth(this.getFullYear(), this.getMonth());
};

Date.prototype.addMonths = function (value) {
	var n = this.getDate();
	this.setDate(1);
	this.setMonth(this.getMonth() + value);
	this.setDate(Math.min(n, this.getDaysInMonth()));
	return this;
};

String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
Number.prototype.zf = function(len){return this.toString().zf(len);};

function getFormatDate(date){
    var year = date.getFullYear();              //yyyy
    var month = (1 + date.getMonth());          //M
    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
    var day = date.getDate();                   //d
    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
    return  year + '-' + month + '-' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
}


//쿠키
function getCookie(cookieName) {
	cookieName = cookieName + '=';
	var cookieData = document.cookie;

var start = cookieData.indexOf(cookieName);
	var cookieValue = '';
	if(start != -1){
		start += cookieName.length;
		var end = cookieData.indexOf(';', start);
		if(end == -1)end = cookieData.length;
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}

function deleteCookie(cookieName){
	var expireDate = new Date();
	expireDate.setDate(expireDate.getDate() - 1);

	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

function setCookie(cookieName, value, exdays){
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	//시간 00:00:00
	exdate.setHours(0,0,0,0);
	
	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue;
  }

function setCookieUrl(cookieName, value, exdays){

	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	//시간 00:00:00
	exdate.setHours(0,0,0,0);

	var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	document.cookie = cookieName + "=" + cookieValue+" ;domain=selec7.com";
}



// 확장자 검사
function fileCheck_ext(obj) {
	pathpoint = obj.lastIndexOf('.'); 
	filepoint = obj.substring(pathpoint+1,obj.length); 
	filetype = filepoint.toLowerCase(); 
	if (filetype == 'gif'|| filetype == 'jpg' || filetype == 'jpeg' || filetype == 'png') return "ok";
	else return filetype;
}

// 확장자 검사
function fileCheck_doc(obj) {
	pathpoint = obj.lastIndexOf('.'); 
	filepoint = obj.substring(pathpoint+1,obj.length); 
	filetype = filepoint.toLowerCase(); 
	if (filetype == 'pdf'|| filetype == 'jpg' || filetype == 'jpeg' || filetype == 'png' || filetype == "hwp" || filetype == "csv" || filetype == "xlsx" || filetype == "xls" || filetype == "zip") return "ok";
	else return filetype;
}

// 확장자 검사
function fileCheck_csv(obj) {
	pathpoint = obj.lastIndexOf('.'); 
	filepoint = obj.substring(pathpoint+1,obj.length); 
	filetype = filepoint.toLowerCase(); 
	if (filetype == 'csv') return "ok";
	else return filetype;
}

// 확장자 검사
function fileCheck_xlsx(obj) {
	pathpoint = obj.lastIndexOf('.'); 
	filepoint = obj.substring(pathpoint+1,obj.length); 
	filetype = filepoint.toLowerCase(); 
	if (filetype == 'xlsx') return "ok";
	else return filetype;
}

//확장자 검사 아님
function fileCheck_not_ext(obj) {
	pathpoint = obj.lastIndexOf('.'); 
	filepoint = obj.substring(pathpoint+1,obj.length); 
	filetype = filepoint.toLowerCase(); 
	if (filetype == 'html'|| filetype == 'jsp' || filetype == 'jspx'|| filetype == 'php' || filetype == 'php2' || filetype == 'php3' || filetype == 'php4' || filetype == 'php5' || filetype == 'phtm'|| filetype == 'phtml'|| filetype == 'asp'|| filetype == 'aspx'|| filetype == 'class'|| filetype == 'js'|| filetype == 'htm'|| filetype == 'html'|| filetype == 'xml'|| filetype == 'xss'|| filetype == 'zvz') return "ok";
	else return filetype;
}

/**
 * 내용의 HTML을 제거한다.
 */
function removeHtml(text){

	var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;

	text = text.replace(/<br>/ig, ""); // <br>을 엔터로 변경
	text = text.replace(/&nbsp;/ig, ""); // 공백      
//		HTML 태그제거
	text = text.replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");

//		shkim.add.
	text = text.replace(/<(no)?script[^>]*>.*?<\/(no)?script>/ig, "");
	text = text.replace(/<style[^>]*>.*<\/style>/ig, "");
	text = text.replace(regExp, "");
	text = text.replace(/<(\"[^\"]*\"|\'[^\']*\'|[^\'\">])*>/ig, "");
	text = text.replace(/<\\w+\\s+[^<]*\\s*>/ig, "");
	text = text.replace(/&[^;]+;/ig, "");
	text = text.replace(/\\s\\s+/ig, "");
	text = text.replace(/\s/gi, ''); // 모든 공백을 제거

	return text;
}


function replaceAll(str,orgStr,repStr){
	return str.split(orgStr).join(repStr);
}
	

function my_round(num, round_num){ 
	// 반올림할 위치와 소숫점을 맞추기 위해 숫자를 알맞게 가공 
	tmp_num1=num*Math.pow(10, round_num); 

	// 가공된 숫자를 반올림 
	tmp_num2=Math.ceil(tmp_num1); 

	// 역순으로 다시 가공 
	result=tmp_num2/Math.pow(10, round_num); 

	return result; 
} 
	
function onlyNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 || keyID == 9) 
		return;
	else
		return false;
}

function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 || keyID == 9) 
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");	
	
}

function isNumberKey(evt) { // 숫자를 제외한 값을 입력하지 못하게 한다.
	var charCode = (evt.which) ? evt.which : event.keyCode;
	// Textbox value
	var _value = event.srcElement.value;

	if (event.keyCode < 48 || event.keyCode > 57) {
		if (event.keyCode != 46) { //숫자와 . 만 입력가능하도록함
			return false;
		}
	}

	// 소수점(.)이 두번 이상 나오지 못하게
	var _pattern0 = /^\d*[.]\d*$/; // 현재 value값에 소수점(.) 이 있으면 . 입력불가
	if (_pattern0.test(_value)) {
		if (charCode == 46) {
			return false;
		}
	}

	// 세자리 이하의 숫자만 입력가능
	var _pattern1 = /^\d{3}$/; // 현재 value값이 2자리 숫자이면 . 만 입력가능
	// {숫자}의 값을 변경하면 자리수를 조정할 수 있다.
	if (_pattern1.test(_value)) {
		if (charCode != 46) {
			alert("세자리 이하의 숫자만 입력가능합니다");
			return false;
		}
	}

	// 소수점 둘째자리까지만 입력가능
	var _pattern2 = /^\d*[.]\d{2}$/; // 현재 value값이 소수점 둘째짜리 숫자이면 더이상 입력 불가
	// {숫자}의 값을 변경하면 자리수를 조정할 수 있다.
	if (_pattern2.test(_value)) {
		alert("소수점 둘째자리까지만 입력가능합니다.");
		return false;
	}
	return true;
}

function calDateDifference() {
	let sdd = document.getElementById("startDate").value;
	let edd = document.getElementById("endDate").value;

	let ar1 = sdd.split('-');
	let ar2 = edd.split('-');

	let da1 = new Date(ar1[0], ar1[1], ar1[2]);
	let da2 = new Date(ar2[0], ar2[1], ar2[2]);

	let dif = da2 - da1;
	let cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
	let cMonth = cDay * 30;// 월 만듬
	let cYear = cMonth * 12; // 년 만듬

	if(sdd && edd){
		// document.getElementById('years').value = parseInt(dif/cYear)
		// document.getElementById('months').value = parseInt(dif/cMonth)
		document.getElementById('dateDifference').value = parseInt(dif/cDay);
	}
}

function delHangle(evt){ //한글을 지우는 부분, keyup부분에 넣어준다.
	var objTarget = evt.srcElement || evt.target;
	var _value = event.srcElement.value;
	if(/[ㄱ-ㅎㅏ-ㅡ가-핳]/g.test(_value)) {
		//  objTarget.value = objTarget.value.replace(/[ㄱ-ㅎㅏ-ㅡ가-핳]/g,''); // g가 핵심: 빠르게 타이핑할때 여러 한글문자가 입력되어 버린다.
		objTarget.value = null;
		//return false;
	}
}

function openWin(name, url,xsize,ysize,scroll){
	cx = window.screen.width;
	cy = window.screen.height;

	posx = (cx-xsize)/2;
	posy = (cy-xsize)/2-50;
	width = xsize;
	height = ysize;

	if (xsize>cx-100) width=cx-100;
	if (ysize>cy-100) height=cy-100;
	
	if(posy<0) posy=10;
	
	win = open(url,name,"top="+posy+",left="+posx+",width="+width+",height="+height+",scrollbars="+scroll);
	
	if(win != null) win.focus();
	return win;
}

//콤마 자동으로 찍기
function comma(num){
	var len, point, str; 
		
	num = num + ""; 
	point = num.length % 3 ;
	len = num.length; 
	
	str = num.substring(0, point); 
	while (point < len) { 
		if (str != "") str += ","; 
		str += num.substring(point, point + 3); 
		point += 3; 
	} 
		
	return str;
	
}

function changeCompanyNumString(num){
    var first = num.substr(3,3);
    var second = num.substr(4,2);
    var third = num.substr(6,5);
    return first + "-" + second + "-" + third
}

function phoneFormatter(num,type){
	
	var formatNum = '';
	
	if(num.length==11){
		if(type==0){
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-****-$3');
		}else{
			formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
		}
	}else if(num.length==8){
		formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
	}else{
		if(num.indexOf('02')==0){
			if(type==0){
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-****-$3');
			}else{
				formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
			}
		}else{
			if(type==0){
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-***-$3');
			}else{
				formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
			}
		}
	}
	return formatNum;
	
}

function hexToRgbA(hex){
	var c;
	if(/^#([A-Fa-f0-9]{3}){1,2}$/.test(hex)){
		c= hex.substring(1).split('');
		if(c.length== 3){
			c= [c[0], c[0], c[1], c[1], c[2], c[2]];
		}
		c= '0x'+c.join('');
		return 'rgba('+[(c>>16)&255, (c>>8)&255, c&255].join(',')+',1)';
	}
	throw new Error('Bad Hex');
}

function trim(str) {
	return str.replace(/^\s+|\s+$/gm, '');
}

function rgbaToHex(rgba) {
	var parts = rgba.substring(rgba.indexOf("(")).split(","), r = parseInt(
			trim(parts[0].substring(1)), 10), g = parseInt(trim(parts[1]), 10), b = parseInt(
			trim(parts[2]), 10), a = parseFloat(
			trim(parts[3].substring(0, parts[3].length - 1))).toFixed(2);

	return ('#' + r.toString(16) + g.toString(16) + b.toString(16) + (a * 255)
			.toString(16).substring(0, 2));
}

function youtubeId(url) {
	var tag = "";
	if(url)  {
		var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
		var matchs = url.match(regExp);
		if (matchs) {
			tag += matchs[7];
		}
		return tag;
	}
}


function convertTimeFrom12To24(timeStr) {
    var colon = timeStr.indexOf(':');
    var hours = timeStr.substr(0, colon),
        minutes = timeStr.substr(colon+1, 2),
        meridian = timeStr.substr(colon+4, 2).toUpperCase();


    var hoursInt = parseInt(hours, 10),
        offset = meridian == 'PM' ? 12 : 0;

    if (hoursInt === 12) {
        hoursInt = offset;
    } else {
        hoursInt += offset;
    }
    return hoursInt + ":" + minutes;
}


function CheckEmail(str){

	let reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

	if(!reg_email.test(str)) {
		return false;
	} else {
		return true;
	}

}

function resetPopupInput(){
	$('.resetImg').attr('src','https://via.placeholder.com/400x400');
	$('.resetImg').attr('data-seq','0');

	$('.resetInput').val('');
}


function removeComma(n) {  // 콤마제거

	if ( typeof n == "undefined" || n == null || n == "" ) {
		return "";
	}

	var txtNumber = '' + n;
	return txtNumber.replace(/(,)/g, "");
}

function inNumber(){
	if(event.keyCode<48 || event.keyCode>57){
		event.returnValue=false;
	}
}


// 한글 입력 방지
function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}


function numberWithCommas(x) {
	return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function uncomma(str) {
	return str.toString().replace(/[^\d]+/g, '');
}

function inputNumberFormat(obj) {
	obj.value = numberWithCommas(uncomma(obj.value));
}

function inputNumberFormat2(obj) {
	obj.value = obj.value.replace(/(?!^-)[^0-9.]/g, "").replace(/(\..*)\./g, '$1'); 
}


function calDisCoutnRatio(originPrice,rate) {

	var savePrice = originPrice * (rate / 100);
	var resultPrice = originPrice - savePrice;

	resultPrice = Math.round(resultPrice);

	return resultPrice;
}



//로그아웃
function logout(){

	if(confirm("로그아웃 하시겠습니까?")) {

		$.ajax({
			url : "/rest/common/logout",
			type : "POST",
			dataType : "json",
			success : function(data) {
				location.href="/login";
			},
			error : function(xhr, status, error) {

				//에러!
				//alert("code:"+xhr.status);
			}
		});

	}
	
}

function jsonCheck(ori){
	ori = ori.replace(/\\n/g, "\\n")
		.replace(/\\'/g, "\\'")
		.replace(/\\"/g, '\\"')
		.replace(/\\&/g, "\\&")
		.replace(/\\r/g, "\\r")
		.replace(/\\t/g, "\\t")
		.replace(/\\b/g, "\\b")
		.replace(/\\f/g, "\\f");
	// remove non-printable and other non-valid JSON chars
	ori =ori.replace(/[\u0000-\u0019]+/g,"");

	return ori;
}


function inputYMDNumber(obj) {

	// @see DELETE 키버튼이 눌리지 않은 경우에만 실행

	if(event.keyCode != 8) {


		// @see 숫자와 하이픈(-)기호의 값만 존재하는 경우 실행

		if(obj.value.replace(/[0-9 \-]/g, "").length == 0) {

			// @see 하이픈(-)기호를 제거한다.

			let number = obj.value.replace(/[^0-9]/g,"");

			let ymd = "";

			// @see 문자열의 길이에 따라 Year, Month, Day 앞에 하이픈(-)기호를 삽입한다.

			if(number.length < 4) {
				return number;
			} else if(number.length < 6){

				ymd += number.substr(0, 4);

				ymd += "-";

				ymd += number.substr(4);

			} else {

				ymd += number.substr(0, 4);

				ymd += "-";

				ymd += number.substr(4, 2);

				ymd += "-";

				ymd += number.substr(6);

			}

			// @see 입력 가능 날짜 제한 기능 - 선택

			if(ymd.length >=11 ) {

				ymd = ymd.substr(0, 10);

			    // const birthDay = new Date(number.substr(0,4)+"/"+number.substr(4,2)+"/"+number.substr(6)+" 00:00:00");
				//
			    // if(birthDay > limitDay) {
				//
			    //     alert("2000년 10월 04일 이후의 날짜는\n선택할 수 없습니다.");
				//
			    //     obj.value = "";
				//
			    //     obj.focus();
				//
			    //     return false;
				//
			    // }

			}

			obj.value = ymd;

		} else {

			alert("숫자 이외의 값은 입력하실 수 없습니다.");
			//@see 숫자와 하이픈(-)기호 이외의 모든 값은 삭제한다.
			obj.value = obj.value.replace(/[^0-9 ^\-]/g,"");
			return false;

		}

	} else {

		return false;

	}

}

function AutoHypen(companyNum){
	companyNum = companyNum.replace(/[^0-9]/g, '');
	var tempNum = '';

	if(companyNum.length < 4){
		return companyNum;
	}
	else if(companyNum.length < 6){
		tempNum += companyNum.substr(0,3);
		tempNum += '-';
		tempNum += companyNum.substr(3,2);
		return tempNum;
	}
	else if(companyNum.length < 11){
		tempNum += companyNum.substr(0,3);
		tempNum += '-';
		tempNum += companyNum.substr(3,2);
		tempNum += '-';
		tempNum += companyNum.substr(5);
		return tempNum;
	}
	else{
		tempNum += companyNum.substr(0,3);
		tempNum += '-';
		tempNum += companyNum.substr(3,2);
		tempNum += '-';
		tempNum += companyNum.substr(5);
		return tempNum;
	}
}

function openUserReg() {
    $("#loginPopup").addClass("on");
}

function closePopupUserReg() {
    $("#loginPopup").removeClass("on");
}

