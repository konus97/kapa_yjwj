<%@	page contentType="text/html;charset=utf-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="Cache-Control" content="no-cache" />

<title>재결정보지원센터</title>

<meta name="description" content="재결정보지원센터" />
<meta name="keywords" content="재결정보지원센터" />
<meta name="author" content="재결정보지원센터" />
<meta name="format-detection" content="telephone=no" />
<meta property="og:type" content="website" />
<meta property="og:title" content="재결정보지원센터" />
<meta property="og:site_name" content="재결정보지원센터" />
<meta property="og:description" content="재결정보지원센터" />
<meta property="og:image" content="../css/favicon_1200x630.png" />
<meta name="twitter:description" content="재결정보지원센터" />
<meta name="twitter:image" content="../css/favicon_270x270.png" />
<link rel="shortcut icon" href="../css/favicon_seoul.ico" />
<link rel="icon" href="../css/favicon_seoul.ico" />

<link rel="apple-touch-icon" href="../../css/favicon_seoul.ico" />
<link rel="stylesheet" href="../../css/owl.carousel.min.css" />
<link rel="stylesheet" href="../../css/jquery-ui.css" />
<link rel="stylesheet" href="../../css/pdf_init.css" />
<link rel="stylesheet" href="../../css/common.css" />
<link rel="stylesheet" href="../../css/pdf_style.css" />
</head>
<body>
    <div class="pdf__loader">
        <svg class="pdf__loader__svg" version="1.1" id="L4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            x="0px" y="0px" viewBox="-25 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
            <circle fill="#fff" stroke="none" cx="6" cy="50" r="6"></circle>
            <circle fill="#fff" stroke="none" cx="26" cy="50" r="6"></circle>
            <circle fill="#fff" stroke="none" cx="46" cy="50" r="6"></circle>
        </svg>
        <p class="pdf__loader__txt">
	        PDF를 불러오는 중입니다.<br>
	        잠시만 기다려주세요.
        </p>
    </div>
    
    <!-- pdf 출력 영역 시작  -->
	<div id="pdfWr" class="pdf_wr">	
	
		<c:forEach var="formatter" items="${formatterList}" varStatus="status">	
		
		<div class="pdf__page pdf__page--cover">
			<h1 class="pdf__tit">${formatter.applicationDTO.judgBizNm}</h1>
		</div>
		
		<div class="pdf__page">
			<div class="f_wrap">
				<h2 class="f_wrap__tit">사업개요</h2>
				<ul class="f_wrap__list">
					<li class="f_wrap__item">
						<span>사업명 : </span>
						<span>${formatter.applicationDTO.judgBizNm}</span>
					</li>
					<li class="f_wrap__item">
						<span>위치/규모 : </span>
						<span></span>
					</li>
					<li class="f_wrap__item">
						<span>사업기간 : </span>
						<span>${formatter.applicationDTO.recmReqStartDate} ~ ${formatter.applicationDTO.recmReqEndDate}</span>
					</li>
					<li class="f_wrap__item">
						<span>사업시행자 : </span>
						<span>${formatter.applicationDTO.bizOprtNm}</span>
					</li>
				</ul>
			</div>
			<div class="f_wrap">
				<h2 class="f_wrap__tit">사업인정관계</h2>
				<ul class="f_wrap__list">
					<c:forEach var="cityPlan" items="${formatter.cityPlans}" varStatus="status">
					<li class="f_wrap__item">
						<span>${cityPlan.planTitle} : ${cityPlan.planContent}</span>
					</li>
					</c:forEach>
				</ul>
			</div>
			<div class="f_wrap">
				<h2 class="f_wrap__tit">재결신청내역</h2>
				<ul class="f_wrap__list">
					<li class="f_wrap__item">
						<span>총물량조서</span>
						<table class="f_wrap__table f_wrap__table--csltList">
							<thead>
								<tr>
									<th rowspan="2">구 분</th>
									<th colspan="3">총 보상대상</th>
									<th colspan="3">혐의성립 등</th>
									<th colspan="3">재결신청</th>
								</tr>
								<tr>
									<th>필,건</th>
									<th>면적</th>
									<th>금액</th>
									<th>필,건</th>
									<th>면적</th>
									<th>금액</th>
									<th>필,건</th>
									<th>면적</th>
									<th>금액</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="csltList" items="${csltList}"
									varStatus="status">
									<tr>
										<th>토 지</th>
										<td><fmt:formatNumber value="${csltList.cslt_land_cnt}"
												pattern="#,###" /></td>
										<td><fmt:formatNumber value="${csltList.cslt_area_amot}"
												pattern="#,###" /></td>
										<td><fmt:formatNumber value="${csltList.cslt_land_amt}"
												pattern="#,###" /></td>
										<td id="landCnt" class="conferVal">${landCnt}</td>
										<td id="landArea" class="conferVal">${landArea}</td>
										<td id="landPrice" class="conferVal">${landPrice}</td>
										<td><fmt:formatNumber value="${csltList.cslt_land_cnt}"
												pattern="#,###" /></td>
										<td><fmt:formatNumber value="${csltList.cslt_area_amot}"
												pattern="#,###" /></td>
										<td><fmt:formatNumber value="${csltList.cslt_land_amt}"
												pattern="#,###" /></td>
									</tr>
									<tr>
										<th>물건</th>
										<td><fmt:formatNumber value="${csltList.cslt_obst_cnt}"
												pattern="#,###" /></td>
										<td></td>
										<td><fmt:formatNumber value="${csltList.cslt_obst_amt}"
												pattern="#,###" /></td>
										<td id="objCnt" class="conferVal">${objCnt}</td>
										<td></td>
										<td id="objPrice" class="conferVal">${objPrice}</td>
										<td><fmt:formatNumber value="${csltList.cslt_obst_cnt}"
												pattern="#,###" /></td>
										<td></td>
										<td><fmt:formatNumber value="${csltList.cslt_obst_amt}"
												pattern="#,###" /></td>
									</tr>
									<tr>
										<th>영업권</th>
										<td><fmt:formatNumber
												value="${csltList.cslt_business_cnt }" pattern="#,###" /></td>
										<td></td>
										<td><fmt:formatNumber
												value="${csltList.cslt_business_amt }" pattern="#,###" /></td>
										<td id="goodwillCnt" class="conferVal">${goodwillCnt}</td>
										<td></td>
										<td id="goodwillPrice" class="conferVal">${goodwillPrice}</td>
										<td><fmt:formatNumber
												value="${csltList.cslt_business_cnt }" pattern="#,###" /></td>
										<td></td>
										<td><fmt:formatNumber
												value="${csltList.cslt_business_amt }" pattern="#,###" /></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>계</th>
									<td>-</td>
									<td>-</td>
									<td>-</td>
									<td id="totalConfer1"></td>
									<td id="totalConfer2"></td>
									<td id="totalConfer3"></td>
									<td>-</td>
									<td>-</td>
									<td>-</td>
								</tr>
							</tfoot>
						</table>
					</li>
					<li class="f_wrap__item">
						<span>수용할 토지 및 물건의 소유자 등 : </span>
						<span>-</span>
					</li>
					<li class="f_wrap__item">
						<span>협의내역횟수, 다수 협의 날짜 : </span>
						<c:forEach var="consultationDate" items="${formatter.consultationDates}" varStatus="status">
							<span></span><span>${consultationDate.consultationDate}</span>
						</c:forEach>
					</li>
					<li class="f_wrap__item">
						<span>재결신청사유 : </span>
						<span>${formatter.decision.decisionReason}</span>
					</li>
					<li class="f_wrap__item">
						<span>재결신청일 : </span>
						<span>${formatter.applicationDTO.recvDt}</span>
					</li>
				</ul>
			</div>
		</div>

		<div class="pdf__page">
			<div class="f_wrap">
				<h2 class="f_wrap__tit">소유자 및 사업시행자 의견</h2>
				<table class="f_wrap__table">
					<thead>
						<tr>
							<th class="f_wrap__th--num">연번</th>
							<th class="f_wrap__th--owner_name">소유자</th>
							<th class="f_wrap__th--opinion">소유자의 의견요지</th>
							<th class="f_wrap__th--opinion">사업시행자 의견</th>
						</tr>
					</thead>
					<c:forEach var="opinionList" items="${opinionList}" varStatus="status">
						<tbody>
							<tr>
								<td>${status.index + 1}</td>
								<td>${opinionList.type} - ${opinionList.ownrNm}</td>
								<td class="f_wrap__td--para">
									<p>${opinionList.ownerOpinion}</p>
								</td>
								<td class="f_wrap__td--para">
									<p>${opinionList.executorOpinion}</p>
								</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>

		</c:forEach>
		
	</div>
    <!-- pdf 출력 영역 끝  -->
		
<!-- join popup S -->
<jsp:include page="/WEB-INF/jsp/components/join.jsp" flush="false">
	<jsp:param name="login" value="login" />
</jsp:include>
<!-- join popup E -->

<!-- 팝업, 로그인 S -->
<jsp:include page="/WEB-INF/jsp/components/login.jsp" flush="false">
	<jsp:param name="login" value="login" />
</jsp:include>
<!-- 팝업, 로그인 E -->

<script src="../../lib/jquery.3.1.0.min.js"></script>
<script src="../../lib/owl.carousel.min.js"></script>
<script src="../../lib/charts.js"></script>
<script src="../../lib/jquery-ui.min.js"></script>
<script src="../../lib/lib.js"></script>
<script src="../../js/common.js"></script>
<script src="../../js/jspdf.js"></script>
<script src="../../js/html2canvas.js"></script>
		<script type="text/javascript">

		$(document).ready(function() {
			$(".reg_table").each(function() {
				let landCnt = $('#landCnt').text();
				let landArea = $('#landArea').text();
				let landPrice = $('#landPrice').text();

				let objCnt = $('#objCnt').text();
				let objPrice = $('#objPrice').text();

				let goodwillCnt = $('#goodwillCnt').text();
				let goodwillPrice = $('#goodwillPrice').text();

				landCnt = uncomma(landCnt);
				objCnt = uncomma(objCnt);
				goodwillCnt = uncomma(goodwillCnt);

				landArea = uncomma(landArea);

				landPrice = uncomma(landPrice);
				objPrice = uncomma(objPrice);
				goodwillPrice = uncomma(goodwillPrice);

				landCnt = Number(landCnt);
				objCnt = Number(objCnt);
				goodwillCnt = Number(goodwillCnt);

				landArea = Number(landArea);

				landPrice = Number(landPrice);
				objPrice = Number(objPrice);
				goodwillPrice = Number(goodwillPrice);

				let totalCnt = landCnt + objCnt + goodwillCnt;
				let totalPrice = landPrice + objPrice + goodwillPrice;

				totalCnt = numberWithCommas(totalCnt);
				landArea = numberWithCommas(landArea);
				totalPrice = numberWithCommas(totalPrice);

				$('#totalConfer1').text(totalCnt);
				$('#totalConfer2').text(landArea);
				$('#totalConfer3').text(totalPrice);

			});

});
		
		 function pdfPrint(){

	        // 현재 document.body의 html을 A4 크기에 맞춰 PDF로 변환
	        //html2canvas(document.body, {
        	html2canvas(document.getElementById("pdfWr"), {
	            onrendered: function (canvas) {

	                // 캔버스를 이미지로 변환
	                var imgData = canvas.toDataURL('image/png');

	                var imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
	                var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
	                var imgHeight = canvas.height * imgWidth / canvas.width;
	                var heightLeft = imgHeight;
	                
	                window.jsPDF = window.jspdf.jsPDF;
	                var doc = new jsPDF('p', 'mm');
	                var position = 0;

	                // 첫 페이지 출력
	                doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
	                heightLeft -= pageHeight;

	                // 한 페이지 이상일 경우 루프 돌면서 출력
	                while (heightLeft >= 20) {
	                    position = heightLeft - imgHeight;
	                    doc.addPage();
	                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
	                    heightLeft -= pageHeight;
	                }
	                

	                // 파일 저장
	                /* doc.save('sample.pdf'); */
	                
	                //새창으로 읽기
	            //    getCanvas = canvas;
	                //upload();
				   window.open(doc.output('bloburl'),"_self");
	                
	                
	                //이미지로 표현
	                //document.write('<img src="'+imgData+'" />');
	            }
	            
	        });
	        
	    }
		 
		 /*  function upload() {  
			 var imageData = getCanvas.toDataURL("image/png");
			 //alert(imageData)    // 이미지 데이터가 들어있다. 
			 //return;
			 var formData = new FormData();
			 formData.append('file', imageData);

			 alert(JSON.stringify(getCanvas))  // form 이나 ajax로 전송하여 이미지를 서버에 저장한다. 이미지 저장은 각 언어별로 다르다.


			 }  */

	    window.onload = function(){
	        pdfPrint();
	    }
			
		</script>
</body>
</html>
