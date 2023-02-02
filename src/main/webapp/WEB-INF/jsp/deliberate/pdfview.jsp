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
    <!--<div class="pdf__loader">
        <svg class="pdf__loader__svg" version="1.1" id="L4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            x="0px" y="0px" viewBox="-25 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
            <circle fill="#fff" stroke="none" cx="6" cy="50" r="6"></circle>
            <circle fill="#fff" stroke="none" cx="26" cy="50" r="6"></circle>
            <circle fill="#fff" stroke="none" cx="46" cy="50" r="6"></circle>
        </svg>
        <p class="pdf__loader__txt">
	        PDF를 다운로드 중입니다.<br>
	        잠시만 기다려주세요.
        </p>
    </div> -->
  
    <!-- 목차 시작 -->
	<div class="opinion_index_container">
            <button type="button" class="opinion_index_btn" id="indexBtn${formatter.applicationDTO.judgSeq}" title="목차보기">
			<!-- <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="#fff" class="w-6 h-6">
			  <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 6.75h12M8.25 12h12m-12 5.25h12M3.75 6.75h.007v.008H3.75V6.75zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0zM3.75 12h.007v.008H3.75V12zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0zm-.375 5.25h.007v.008H3.75v-.008zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
			</svg> -->
				<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2" stroke="#fff" class="w-6 h-6">
					<path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
				</svg>
				<span>목<br>차<br>보<br>기</span>
            </button>
            <div class="opinion_index_wr">
           		<h4 class="title t1 bold s1">
                  	 목차
               	</h4>
            	<ul class="opinion_index_list">
	             	<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_tit01">사업개요</a>
	             	</li>
	             	<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_tit02">사업인정관계</a>
	             	</li>
	             	<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_tit03">재결신청내역</a>
	             	</li>
	             	<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_tit04">재결심리준비</a>
	             	</li>
	             	<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_tit05">소유자 및 사업시행자 의견</a>
	             	</li>
	             	<li>
		                <ul class="opinion_index_list--sub">
		                <c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
		                	<li>
		                		<a href="#index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}">${deliberateOpinionDTO.type}. ${deliberateOpinionDTO.typeStr}</a>
		                	</li>
		                </c:forEach>
		                </ul>
	             	</li>
	             	<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_downBtn">PDF 다운로드</a>
	             	</li>
	             	
	             	<!--<li>
	             		<a href="#index${formatter.applicationDTO.judgSeq}_decideWr">심사하기</a>
	             	</li>-->
            	</ul>
            </div>
    </div>
   <!-- 목차 끝 -->
             
             
	<!-- pdf 출력 영역 시작  -->
	<div id="pdfWr" class="pdf_wr">
	
		<div class="pdf__page pdf__page--cover">
			<h1 class="pdf__tit">${formatter.applicationDTO.judgBizNm}</h1>
		</div>
		
		<div class="pdf__page">
			<div class="f_wrap">
				<h2 id="index${formatter.applicationDTO.judgSeq}_tit01" class="f_wrap__tit">사업개요</h2>
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
				<h2 id="index${formatter.applicationDTO.judgSeq}_tit02" class="f_wrap__tit">사업인정관계</h2>
				<ul class="f_wrap__list">
					<c:forEach var="cityPlan" items="${formatter.cityPlans}" varStatus="status">
					<li class="f_wrap__item">
						<span>${cityPlan.planTitle} : ${cityPlan.planContent}</span>
					</li>
					</c:forEach>
				</ul>
			</div>
			<div class="f_wrap">
				<h2 id="index${formatter.applicationDTO.judgSeq}_tit03" class="f_wrap__tit">재결신청내역</h2>
				<ul class="f_wrap__list">
					<li class="f_wrap__item">
						<span>총물량조서</span>
						<table class="f_wrap__table f_wrap__table--csltList reg_table">
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
						<ul class="f_wrap__list f_wrap__list--sub">
							<li class="f_wrap__item f_wrap__item--sub">
								<span>재결신청의 청구 : </span>
								<span></span>							
							</li>
						</ul>
					</li>
					<li class="f_wrap__item">
						<span>협의내역횟수, 다수 협의 날짜 : </span>
						<c:forEach var="consultationDate" items="${formatter.consultationDates}" varStatus="status">
							<span>${consultationDate.consultationDate}</span>
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
		
			<div class="f_wrap">
				<h2 id="index${formatter.applicationDTO.judgSeq}_tit04" class="f_wrap__tit">재결심리준비</h2>
				<ul class="f_wrap__list">
					<li class="f_wrap__item">
						<span>열람공고 : </span>
						<span></span>
					</li>
					<li class="f_wrap__item">
						<span>토지 등 소유자 의견 : </span>
						<span></span>
					</li>
			        <li class="f_wrap__item">
			            <span>감정평가 : </span>
			            <span></span>
			            <ul class="f_wrap__list f_wrap__list--sub">
			                <li class="f_wrap__item f_wrap__item--sub">
			                    <span>사업시행자 평가기관 : </span>
			                    <span></span>
			                </li>
			                <li class="f_wrap__item f_wrap__item--sub">
			                    <span>우리위원회 평가기관 : </span>
			                    <span></span>
			                </li>
			            </ul>
					</li>
				</ul>
			</div>
			
			
		
		
		<!-- 1. 지연가산금 S -->
		<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
								
			
			<h2 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="pdf__tit pdf__tit--sub">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h2>
			<div class="f_wrap">
				<h2 id="index${formatter.applicationDTO.judgSeq}_tit05" class="f_wrap__tit">소유자 및 사업시행자 의견</h2>
				<table class="f_wrap__table">
					<thead>
						<tr>
							<th class="f_wrap__th--owner_name">소유자</th>
							<th class="f_wrap__th--opinion">소유자의 의견요지</th>
							<th class="f_wrap__th--opinion">사업시행자 의견</th>
						</tr>
					</thead>
						<tbody>
							<tr>
								<td class="f_wrap__td--cen">${deliberateOpinionDTO.ownerViewInfo.ownr_nm}</td>
								<td class="f_wrap__td--para">
									<p>${deliberateOpinionDTO.ownerOpinion}</p>
								</td>
								<td class="f_wrap__td--para">
									<p>${deliberateOpinionDTO.executorOpinion}</p>
								</td>
							</tr>
						</tbody>
				</table>
			</div>
			<div class="f_wrap">
				<!-- 재결관 의견 에디터 내용  -->
				<div class="f_wrap__textarea">${deliberateOpinionDTO.opinionText}</div>
			</div>
			<div class="f_wrap">
				<h2 class="f_wrap__tit">관련 법령</h2>
				<div class="f_wrap__textarea">${deliberateOpinionDTO.relatedLaws }</div>
			</div>
		
			<div class="f_wrap">
				<h2 class="f_wrap__tit">관련 법령 판례</h2>
				<div class="f_wrap__textarea">${deliberateOpinionDTO.relatedLaws2 }</div>
			</div>
			<div class="f_wrap">
				<h2 class="f_wrap__tit">검토 의견</h2>
				<div class="f_wrap__textarea">${deliberateOpinionDTO.reviewOpinion }</div>
			</div>
			<table class="f_wrap__table">
						<tr>
							<td class="f_wrap__th--owner_name">소재지</td>
							<td class="f_wrap__textarea">${deliberateOpinionDTO.opinionTitle}</td>
						</tr>
						<tr>
							<td class="f_wrap__th--opinion">이전비 평가사유</td>
							<td class="f_wrap__textarea">${deliberateOpinionDTO.opinionContent}</td>
						</tr>
						<tr>
							<th colspan="2">관련자료</th>
						 </tr>
						 <tr>
							<th colspan="2"><img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt=""></th>
						 </tr>
			</table>
			
			<!--  소재지, 사유, 관련자료 S -->
			<c:if test="${deliberateOpinionDTO.itemCheck}">
			<c:forEach var="deliberateOpinionItemDTO" items="${deliberateOpinionDTO.deliberateOpinionItemDTOS}" varStatus="status">
			 
			<div class="f_wrap">		
				<table class="f_wrap__table f_wrap_table--opitem">
					<tbody>
						<tr>
							<th>제목</th>
							<td><p class="">${deliberateOpinionItemDTO.title }</p></td>
						</tr>
						<tr>
							<th>내용
							</th>
							<td><p class="">${deliberateOpinionItemDTO.content }</p></td>
						</tr>
						<tr>
							<th colspan="2">관련자료</th>
						</tr>
						<tr>
							<td colspan="2">
								<img
								src="https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"
								alt="">
							</td>
						</tr>
					</tbody>
				</table>
			</div>	
			
			</c:forEach>
			</c:if>
			<!--  소재지, 사유, 관련자료 E -->	
		
		</c:forEach>
		<!-- 1. 지연가산금 E -->
		
	</div>
</div>

<!-- pdf 출력 영역 끝  -->

<!-- pdf 다운로드 버튼 시작 -->
<div class="btn_wr">
	<button id="index${formatter.applicationDTO.judgSeq}_downBtn" type="button" class="btn large btn--down" onclick="pdfPrint()">
		<i class="download white icon"></i>
		PDF 다운로드
	</button>
</div>
<!-- pdf 다운로드 버튼 끝 -->

<!-- 심사하기 시작 -->
<!--<form class="decide_wr" id="index${formatter.applicationDTO.judgSeq}_decideWr">
	<h2 class="decide_wr__tit">심사하기</h2>
	<div class="decide_wr__conwr">
		<h3 class="decide_wr__contit">심사 내용</h3>
		<div class="decide_wr__con">
			<textarea placeholder="심사 내용을 입력해주세요." class="decide_wr__textarea"></textarea>
		</div>
	</div>
	<div class="decide_wr__conwr">
		<h3 class="decide_wr__contit">심사 결과</h3>
		<div class="decide_wr__con">
			<input type="radio" name="decision_radio" value="accept" id="decideAccept" class="decide_wr__radio">
			<label for="decideAccept" class="decide_wr__label">승인</label>
			<input type="radio" name="decision_radio" value="decline" id="decideDecline" class="decide_wr__radio">
			<label for="decideDecline" class="decide_wr__label">반려</label>
		</div>
	</div>
	<div class="decide_wr__btnwr">
		<button id="decideBtn" type="button" class="decide_wr__btn" onclick="confirm('심사 결과를 제출하시겠습니까?');">심사 결과 제출하기</button>	
	</div>
</form>-->
<!-- 심사하기 끝 -->
		
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
			
			//목차 스크롤
			
			$('.opinion_index_list a').click(function() {
				var id = $(this).attr("href");
				var offset = 30;
				var target = $(id).offset().top - offset;
				$('html, body').animate({scrollTop:target}, 500);
				event.preventDefault();
			});
			$('.opinion_index_btn').click(function(){
				$(this).next('.opinion_index_wr').animate({
			        width: "toggle"
			    }, 200, "linear");
				$(this).toggleClass('on');
				if($(this).hasClass('on')){
					$(this).attr('title','목차닫기')
				}else{
					$(this).attr('title','목차열기')
				}
			})

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
	                doc.save('sample.pdf'); 
	                
	                //새창으로 읽기
	            //    getCanvas = canvas;
	                //upload();
				    //window.open(doc.output('bloburl'),"_self");
	                
	                
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

		</script>
</body>
</html>