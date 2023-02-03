<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
        <meta
            name="viewport"
            content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"
        />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <meta http-equiv="Cache-Control" content="no-cache" />

		<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
		<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
		
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
        <meta name="twitter:image" content="../../css/favicon_270x270.png" />
        <link rel="shortcut icon" href="../../css/favicon_seoul.ico" />
        <link rel="icon" href="../../css/favicon_seoul.ico" />

        <link rel="apple-touch-icon" href="../../css/favicon_seoul.ico" />
        <link rel="stylesheet" href="../../css/init.css" />
        <link rel="stylesheet" href="../../css/common.css" />
        <link rel="stylesheet" href="../../css/layout.css" />
        <link rel="stylesheet" href="../../css/sub.css" />
        <link rel="stylesheet" href="../../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../../css/jquery-ui.css" />
    </head>
    <body>
        
       	<input type="hidden" name="decisionId" id="decisionId" value="${decisionId}">
        <input type="hidden" name="masterId" id="masterId" value="${masterId}">
            
        <div id="wrap">
        
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title02">
                        <h2 class="title bold center">재결접수</h2>
                    </div>
                    
  					<!-- decision submenu start -->
		          	<jsp:include page="../../decision/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- decision submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">재결의견작성 상세</h3>
                        </div>
                        <div class="cs_body">
                            <form class="decision_form" name="inquiry_view">
                            
                                <!-- step start -->
	                       		<jsp:include page="/WEB-INF/jsp/components/view/step.jsp" flush="false">
									<jsp:param name="currentStep" value="${avo.decisionState}" />
								</jsp:include> 
	                            <!-- step end -->
	                            
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	사업 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건번호</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                	${avo.caseNo}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건명</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>
                                            	 ${avo.title}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>접수일자</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>
                                                	${avo.recvDt}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>진행상태</label>
                                            </div>
                                            <div class="ff_wrap">
                                     			<p>${avo.decisionStateStr }</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>시행자가격시점</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.priceDt}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>재결구분</label>
                                            </div>
                                            <div class="ff_wrap">
                                            	<p>${avo.judeDivCdName}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>수용재결법인</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>-</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>협의법인</label>
                                            </div>
                                            <div class="ff_wrap">
                                     		  <p>${avo.consultAppName}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	담당자 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>시행자명</label>
                                            </div>
                                            <div class="ff_wrap">
                                            	<p>${avo.bizOprtNm}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업유형</label>
                                            </div>
                                            <div class="ff_wrap">
                                              <p>${avo.bizTpCd}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>소재지</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                <c:if test="${avo.reptLoc ne ''}">
                                                  ${avo.reptLoc}	
                                                  </c:if>
                                                <c:if test="${avo.reptLoc eq ''}">
                                                  -	
                                                  </c:if>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	 조서 정보
                                    </h4>
                                </div>
                                                     <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>지장물수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('goods','${objectCount}');return false;" >${objectCount}건<i class="icon search"></i ></a>
                                                </p>
                                            </div>
                                        </div>
                                  		<div class="f_field div2">
                                            <div class="ff_title">
                                                <label>필지수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx" onclick="openPopup('land','${landCount}');return false;">${landCount}건<i class="icon search" ></i></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                       <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>지장물소유자수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('goodsowner','${objectRightCount}');return false;" >${objectRightCount}명<i class="icon search"></i></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>필지소유자수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('landsowner','${landRightCount}');return false;" >${landRightCount}명<i class="icon search"></i ></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>면적</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${totalAreaAmot}㎡</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>종전금액합계(원)</label>
                                            </div>
                                            <div class="ff_wrap">
                                                 <p>${totalCost}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	 비고
                                    </h4>
                                </div>
                               <div class="form t2">
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label for="bw_subject"
                                                    >제출기한
                                                </label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>-</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label for="bw_subject"
                                                    >사업시행자
                                                  	  담당자(연락처)</label
                                                >
                                            </div>
                                            <div class="ff_wrap">
                                                 <p>
                                                	${avo.bizOprtIchrNm}                                             	
                                                   	 <a
                                                        href="tel:${avo.bizOprtPhoneNo}"
                                                        class="cx"
                                                        >${avo.bizOprtPhoneNo}</a
                                                    >
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
                                
                                  <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	 평가법인
                                    </h4>
                                </div>
                                                                
                                <div class="c_table t1">
                                    <table>
                                        <caption>
                                            	평가법인
                                        </caption>
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>법인명</th>
                                                <th>지사명</th>
                                                <th>평가사</th>
                                                <th>감정서번호</th>
                                                <th>평가금액(원)</th>
                                                <th>평가수수료</th>
                                                <th>진행상태</th>
                                                <th>경력</th>
                                                <th>교육이수여부</th>
                                                <th>심사여부</th>
                                       
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="consultList" items="${consultList}" varStatus="status">
											<tr>
                                                <th>
                                                    <strong>${consultList.gubun}</strong>
                                                </th>
                                                 <td>
                                                    <strong>법인명</strong>
                                                    <span>${consultList.appName}</span>
                                                </td>
                                                  <td>
                                                    <strong>지사명</strong>
                                                    <span>-</span>
                                                </td>
                                                
                                                <td>
                                                    <strong>평가사</strong>
                                                    <span>
                                                        <a
                                                            href="#!"
                                                            class="cx owner"
                                                            ></a>
                                                    </span>
                                                </td>
                                                <td>
                                                    <strong>감정서번호</strong>
                                                    <span>-</span>
                                                </td>
                                                <td class="left">
                                                    <strong>평가금액(원)</strong>
                                                    <span>0</span>
                                                </td>
                                                <td>
                                                    <strong>평가수수료</strong>
                                                    <span>0</span>
                                                </td>
                                        		<td>
                                                    <strong>진행상태</strong>
                                                    <span>-</span>
                                                </td>
                                                <td>
                                                    <strong>경력</strong>
                                                    <span>-</span>
                                                </td>
                                                <td>
                                                    <strong>교육이수여부</strong>
                                                    <span>-</span>
                                                </td>
                                                <td>
                                                    <strong>심사여부</strong>
                                                    <span>-</span>
                                                </td>
                                          
                                            </tr>
                                            </c:forEach>
                                            
                                            
                                         </tbody>
                                     </table>
                                </div>
                               
                        		  <div class="cs_title">
			                        <h4 class="fl title t1 bold cb s1 bullet">감정평가정보</h4>
			                    </div>
			                    <div class="c_table t1">
			                        <table>
			                            <caption>감정평가정보 목록</caption>
			                            <thead>
			                            <tr>
			                                <th rowspan="2"></th>
			                                <th rowspan="2">협의평가</th>
			                                <th colspan="3">수용재결</th>
			               					<th colspan="2">평가서</th>
			                            </tr>
			                            <tr>
			                                <th>평균</th>
			                                <th>A법인</th>
			                                <th>B법인</th>			         
			                                <th>A법인</th>
			                                <th>B법인</th>
			                            </tr>
			                            </thead>
			                            <tbody>
			                            <tr>
			                                <th>
			                                    <span>평가금액(원)</span>
			                                </th>
			                                <td>
			                                    <strong>협의평가</strong>
			                                    <span>0</span>
			                                </td>
			                                <td>
			                                    <strong>수용재결 - 평균</strong>
			                                    <span>0</span>
			                                </td>
			                                <td>
			                                    <strong>수용재결 - A법인</strong>
			                                    <span>0</span>
			                                </td>
			                                <td>
			                                    <strong>수용재결 - B법인</strong>
			                                    <span>0</span>
			                                </td>
			                          
			                                <td>
			                                    <strong>평가서 - A법인</strong>
			                                    <span>-</span>
			                                </td>
			                                <td>
			                                    <strong>평가서 - B법인</strong>
			                                    <span>-</span>
			                                </td>
			                            </tr>
			                           
			                            </tbody>
			                        </table>
			                    </div>
                                
                                
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	소유자의견 및 사업시행자 의견
                                    </h4>
                                </div>
                                
                                <div id="loaderSection" class="loader_wr loader_wr--section">
							        <svg class="loader__svg" version="1.1" id="L4" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
							            x="0px" y="0px" viewBox="-25 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
							            <circle fill="#365978" stroke="none" cx="6" cy="50" r="6"></circle>
							            <circle fill="#365978" stroke="none" cx="26" cy="50" r="6"></circle>
							            <circle fill="#365978" stroke="none" cx="46" cy="50" r="6"></circle>
							        </svg>
							        <p class="loader__txt">
								        데이터를 불러오는 중입니다.<br>
								        잠시만 기다려주세요.
							        </p>
						    	</div>
                                
                                <!-- 수정 부분 -->
                                <div class="item_result_wr">
								<h5 class="item_result_wr__tit">1. 지연가산금</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
										
											</tr>
										</thead>
										<tbody id="ownerLandItemList1">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
											
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList1">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 01 --%>
							
							<%-- 항목 결과 시작 02 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">2. 보상금 증액</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList2">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList2">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 02 --%>
							
							<%-- 항목 결과 시작 03 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">3. 허가건축물 등 불법형질변경</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList3">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList3">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 03 --%>
							
							<%-- 항목 결과 시작 04 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">4. 일단지 보상</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList4">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList4">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 04 --%>
							
							<%-- 항목 결과 시작 05 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">5. 미지금 용지</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList5">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList5">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 05 --%>
							
							<%-- 항목 결과 시작 06 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">6. 사도평가</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList6">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList6">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 06 --%>
							
							<%-- 항목 결과 시작 07 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">7. 잔여지 매수청구</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList7">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList7">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 07 --%>
							
							<%-- 항목 결과 시작 08 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">8. 잔여지 가치하락</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList8">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList8">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 08 --%>
							
							<%-- 항목 결과 시작 09 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">9. 잔여건물 가치감소</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList9">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList9">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 09 --%>
							
							<%-- 항목 결과 시작 10 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">10. 잔여건물 매수청구</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList10">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList10">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 10 --%>
							
							<%-- 항목 결과 시작 11 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">11. 누락 물건 반영</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList11">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList11">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 11 --%>
							
							<%-- 항목 결과 시작 12 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">12. 휴업보상(이전비)평가</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList12">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList12">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 12 --%>
							
							<%-- 항목 결과 시작 13 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">13. 폐업보상</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList13">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList13">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 13 --%>
							
							<%-- 항목 결과 시작 14 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">14. 영농손실보상</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList14">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList14">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 14 --%>
							
							<%-- 항목 결과 시작 15 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">15. 휴직(실직)보상</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList15">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList15">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 15 --%>
							
							<%-- 항목 결과 시작 16 --%>
							<div class="item_result_wr" >
								<h5 class="item_result_wr__tit">16. 사업폐지(취소,변경,중단)</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList16">
						
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												 
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList16">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 16 --%>
							
							<%-- 항목 결과 시작 17 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">17. 이주대책 수립</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												 
						
											</tr>
										</thead>
										<tbody id="ownerLandItemList17">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList17">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 17 --%>
							
							<%-- 항목 결과 시작 18 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">18. 이주정착금, 주거이전비, 이사비</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList18">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
									
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList18">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 18 --%>
							
							<%-- 항목 결과 시작 19 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">19. 임료손실</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList19">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList19">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 19 --%>
							
							<%-- 항목 결과 시작 20 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">20. 대토보상</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
								
											</tr>
										</thead>
										<tbody id="ownerLandItemList20">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList20">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 20 --%>
							
							<%-- 항목 결과 시작 21 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">21. 구분지상권</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList21">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList21">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 21 --%>
							
							<%-- 항목 결과 시작 22 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">22. 10%이상 변동</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList22">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList22">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 22 --%>
							
							<%-- 항목 결과 시작 23 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">23. 기타(그 외)</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList23">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList23">
										</tbody>
									</table>
								</div>
							</div>
							<%-- 항목 결과 끝 23 --%>
							
							<%-- 항목 결과 시작 24 --%>
							<div class="item_result_wr">
								<h5 class="item_result_wr__tit">24. 소유자 의견 없음</h5>
								<div class="item_result_wr__con">
									<table class="item_result_wr__table">
										<caption>필지</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>지번</th>
												<th>본번</th>
												<th>부번</th>
												<th>공</th>
												<th>실</th>
												<th>면적</th>
												<th>단가</th> <th>의견</th>
												
											</tr>
										</thead>
										<tbody id="ownerLandItemList24">
	
										</tbody>
									</table>
	
									<table class="item_result_wr__table">
										<caption>지장물</caption>
										<thead>
											<tr>
												  
												<th>연번</th>
												<th>소유자</th>
												<th>지분</th>
												<th>소재지</th>
												<th>본번</th>
												<th>부번</th>
												<th>부번2</th>
												<th>물건종류</th>
												<th>물건구조</th>
												<th>면적/수량</th>
												<th>단가</th> <th>의견</th>
												
										
											</tr>
										</thead>
										<tbody id="ownerGoodsItemList24">
										</tbody>
									</table>
								</div>
							</div>
                                
                              <%--   <div class="c_table t1">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>연번</th>
                                                <th>소유자</th>                                          
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        
                                        	<c:forEach var="ownerInfo" items="${ownerList}" varStatus="status">
											<c:set var ="i" value="${i+1}"/>
											
												 <tr id="ownerInfo${ownerInfo.ownrSeq}" data-item="" >
	                                                <th>
	                                                    <strong>${i}</strong>
	                                                </th>
	                                                <td>
	                                                    <strong>소유자</strong>
	                                                    <span>
	                                                      <a
	                                                        href="#!"
	                                                        class="cx owner"
	                                                      >${ownerInfo.ownrTitle}</a>
	                                                    </span>
	                                                    <div></div>
	                                                </td>	                                            
	                                            </tr>      
	                                            
	                                            <tr class="inner_table">
	                                              <td colspan="100%">
	                                              
	                                                 <c:if test="${ownerInfo.landCheck}">
	                                                                                                    
	                                                 <div class="inner_table_div" >
	                                                  <p class="title t3 s1 bullet">필지</p>
	                                                  <table>
	                                                    <caption>
	                                                	        필지
	                                                    </caption>
	                                                    <thead>
	                                                        <tr>
	                                                            <th>연번</th>
	                                                            <th>소유자</th>
	                                                            <th>지분</th>
	                                                            <th>소재지</th>
	                                                            <th>지번</th>
	                                                            <th>본번</th>
	                                                            <th>부번</th>
	                                                            <th>공</th>
	                                                            <th>실</th>
	                                                            <th>면적</th>
	                                                            <th>단가</th>
	                                                
	                                                        </tr>
	                                                    </thead>
	                                                    
	                                                    
	                                                    <tbody>
	                                                      <c:forEach var="landInfo" items="${ownerInfo.landList}" varStatus="status">
	                                                      <tr>
	                                                            <th>
				                                                    <strong>${status.index}</strong>
				                                                </th>
				                                                <td>
				                                                    <strong>소유자</strong>
				                                                    <span>
				                                                        <a
				                                                            href="#!"
				                                                            class="cx owner"
				                                                            >${landInfo.ownrNnm}</a>
				                                                    </span>
				                                                </td>
				                                                <td>
				                                                    <strong>지분</strong>
				                                                    <span>${landInfo.landShre}</span>
				                                                </td>
				                                                <td class="left">
				                                                    <strong>소재지</strong>
				                                                    <span>${landInfo.reptAddr}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>지번</strong>
				                                                    <span>${landInfo.sidoGunguCd}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>본번</strong>
				                                                    <span>${landInfo.mainStrtNo}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>부번</strong>
				                                                    <span>${landInfo.subStrtNo}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>공</strong>
				                                                    <span>${landInfo.obstStuc1Nm}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>실</strong>
				                                                    <span>${landInfo.obstStuc2Nm}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>면적</strong>
				                                                    <span>${landInfo.areaAmot}${landInfo.areaUnit}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>단가</strong>
				                                                    <span>${landInfo.befUnitCost}</span>
				                                                </td>
	                                                     
	                                                        </tr>
	                                                        
	                                                        
	                                                        <tr class="check_wrap opinionData"  data-seq="${i}">
					                                                <td colspan="14">
					                                               
					                                                    <div class="c_board checkContentList" >
					                                                    
						                                                     <div class="cb_list">
					                                                            <div class="cbl_head">
					                                                                <div class="cbl_wrap">
					                                                                    <div class="cbl_1">번호</div>
					                                                                    <div class="cbl_2">항목</div>
					                                                                    <div class="cbl_3">제목</div>
					                                                          			<div class="cbl_4">소유자 의견</div>
                                                                    					<div class="cbl_5">사업시행자 의견</div>
					                                                                </div>
					                                                            </div>
					                                                            <div class="cbl_body">
					                                                                <ul id="ownerItemList${landInfo.reptSeq}">
					                                                                   
					                                                                </ul>
					                                                            </div>
					                                                        </div>
					                                                    
					                                                    </div>
                                           
				                                                </td>
				                                            </tr>
	                                                        
	                                                      </c:forEach>
                                                       
	                                                    </tbody>
	                                                  </table>
	                                                </div>
	                                                
                                               		
		                                        
	                                                	
	                                                
	                                                </c:if>
	                                      
	                                      
                                                     <c:if test="${ownerInfo.goodsCheck}">
                                                     
                                                        <div class="inner_table_div" >
	                                                  <p class="title t3 s1 bullet">지장물</p>
	                                                  <table>
	                                                    <caption>
	                                                      	지장물
	                                                    </caption>
	                                                    <thead>
	                                                        <tr>
	                                                           <th>연번</th>
							                                   <th>소유자</th>
							                                   <th>지분</th>
							                                   <th>소재지</th>
							                                   <th>본번</th>
							                                   <th>부번</th>
							                                   <th>부번2</th>
							                                   <th>
							                                  	     물건종류
							                                   </th>
							                                   <th>
							                                   	    물건구조
							                                   </th>
							                                   <th>
							                                      	 면적/수량
							                                   </th>
							                                   <th>단가</th>
	                                                       
	                                                        </tr>
	                                                    </thead>
	                                                    <tbody>
	                                                    
	                                                    <c:forEach var="goodsInfo" items="${ownerInfo.goodsList}" varStatus="status">
	                                                    <tr>
	                                                            <th>
				                                                    <strong>${goodsInfo.rank}</strong>
				                                                </th>
				                                                <td>
				                                                    <strong>소유자</strong>
				                                                    <span>
				                                                        <a
				                                                            href="#!"
				                                                            class="cx owner"
				                                                            >${goodsInfo.ownrNnm}</a>
				                                                    </span>
				                                                </td>
				                                                <td>
				                                                    <strong>지분</strong>
				                                                    <span>${goodsInfo.landShre}</span>
				                                                </td>
				                                                <td class="left">
				                                                    <strong>소재지</strong>
				                                                    <span>${goodsInfo.reptAddr}</span>
				                                                </td>                                         
				                                                <td>
				                                                    <strong>본번</strong>
				                                                    <span>${goodsInfo.mainStrtNo}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>부번</strong>
				                                                    <span>${goodsInfo.subStrtNo}</span>
				                                                </td>
				                                                 <td>
				                                                    <strong>부번2</strong>
				                                                    <span>${goodsInfo.strtOther}</span>
				                                                </td>
				                                                
				                                                 <td>
				                                                    <strong>물건종류</strong>
				                                                    <span>${goodsInfo.obstStuc1Nm}</span>
				                                                </td>
				                                                
				                                                   <td>
				                                                    <strong>물건구조</strong>
				                                                    <span>${goodsInfo.obstKindNm}</span>
				                                                </td>
				                                           
				                                                <td>
				                                                    <strong>면적</strong>
				                                                    <span>${goodsInfo.areaAmot}${goodsInfo.areaUnit}</span>
				                                                </td>
				                                                <td>
				                                                    <strong>단가</strong>
				                                                    <span>${goodsInfo.befUnitCost}</span>
				                                                </td>
	                                                           
	                                                        </tr>
	                                                        
	                                                         <tr class="check_wrap opinionData"  data-seq="${i}">
					                                                <td colspan="14">
					                                               
					                                                   <div class="c_board checkContentList">
					                                                        <div class="cb_list">
					                                                            <div class="cbl_head">
					                                                                <div class="cbl_wrap">
					                                                                    <div class="cbl_1">번호</div>
					                                                                    <div class="cbl_2">항목</div>
					                                                                    <div class="cbl_3">제목</div>
					                                                                    <div class="cbl_4">소유자 의견</div>
                                                                    					<div class="cbl_5">사업시행자 의견</div>
					                                                                </div>
					                                                            </div>
					                                                            <div class="cbl_body">
					                                                                <ul id="ownerItemList${goodsInfo.reptSeq}">
					                                                                    
					                                                                </ul>
					                                                            </div>
					                                                        </div>
						                                              </div>
                                                    
                                                 
				                                                </td>
				                                            </tr>
				                                            
	                                                    </c:forEach>
	                                                        
	                                                    </tbody>
	                                                  </table>
	                                                </div>
		                                             
	                                                
                                                   </c:if>
	                             
	                                              </td>
	                                            </tr>
											
											</c:forEach>
            
                                        </tbody>
                                    </table>
                                </div>
                   --%>
                              <div class="mt40 btn_wrap">
	                                <ul class="input-wrap" style="justify-content: center">
	                                    <li>
	                                        <button type="button" class="btn big h50" onclick="goToAgendaList();return false;">
	                                           확인
	                                        </button>
	                                    </li>
	                                <c:if test="${agendaState != 3}">
	                                    
	                                    <li>
	                                       <a href="#" class="btn t3 big h50">보류</a>
	                                    </li>
	                                    <li>
	                                        <a href="#" class="btn t3 big h50" onclick="submitAgenda();return false;" >승인</a>
	                                    </li>
	                                 </c:if>
	                                </ul>
                                </div>

                                <!-- 체크 팝업 S -->
                                <%@ include file="../../implementer/popup/checkbox.jsp"%> 
                                <!-- 체크 팝업  E -->                              

                				<!-- 팝업, 지장물수 검색 S -->
                                <%@ include file="../../implementer/popup/goods.jsp"%> 
                                <!-- 팝업, 지장물수 검색 E -->
                                
                                <!-- 팝업, 필지 검색 S -->
                           		<%@ include file="../../implementer/popup/land.jsp"%> 
                                <!-- 팝업, 필지 검색 E -->
                               
                                <!-- 팝업, 지장물 소유자 검색 S -->
                       			<%@ include file="../../implementer/popup/goodsowner.jsp"%> 
                                <!-- 팝업, 지장물 소유자 검색 E -->
                                
                                <!-- 팝업, 필지 소유자 검색 S -->
                                <%@ include file="../../implementer/popup/landsowner.jsp"%> 
                                <!-- 팝업, 필지 소유자 검색 E -->
                                         
                                <!-- 팝업, 평가사 정보 S -->
                              
                                <!-- 팝업, 평가사 정보 E -->
                                
								<!-- 소유자의견 팝업 S -->     
						        <div  id="popupOwnerOpinion" class="popup info_reg">
						            <div class="p_box">
						                <div class="p_head">
						                    <h3 class="p_title">의견 보기
						                    </h3>
						                    <a href="#" class="p_close" onclick="closeOwnerViewOpinion();return false;">
						                      <span class="blind">닫기</span></a>
						                </div>
		      
						                <div class="p_body t2">
						                    <div class="wrap">
						                        <!-- 등록 폼 -->
						                        <div class="c_table t1">
						                          <div class="reg_wrap">
						                          	 <h2><span id="notice"></span></h2>
						                             <table>
						                              <tbody>
						                    			<tr>
						                                  <th class="info_reg_th">소유자 의견</th>
						                                  <td>
						                                    <textarea id="ownerOpinion" class="textarea resetPopupVal" disabled></textarea></td>
						                                </tr>
						                                
						                                <tr>
						                                  <th class="info_reg_th">사업시행자<br/>의견</th>
						                                  <td>
						                                    <textarea id="executorOpinion" class="textarea resetPopupVal" disabled></textarea></td>
						                                </tr>
						                                
						                              </tbody>
						                            </table>	
						                            	                            
						                            
						                            <table id="popupOpinionItemList">
							                 
						                              </table>
						                          </div>
						                        </div>
						             
						                    </div>
						                </div>
						                <div class="p_foot">			
			             					<a href="#" class="btn t1 h50" onclick="closeOwnerViewOpinion();return false;">닫기</a>
						                </div>
						            </div>
						          </div>
						                                
						        <!-- 소유자의견 팝업 E -->
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            
            <!-- footer start -->
            <jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
            <!-- footer end -->
            
        </div>

        
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
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>

     	<!--common start-->
        <script src="../../js/common.js"></script>
        
        <script src="../../js/decision/content.js"></script>
        
<!--      <script src="../../js/decision/agenda/content.js"></script> -->
         <script src="../../js/decision/agenda/view/block.js"></script>
        <script src="../../js/decision/agenda/view/list.js"></script>
           
        <script src="../../js/implementer/popup/block.js"></script>
		<script src="../../js/implementer/popup/content.js"></script>
		
			<script src="../../js/implementer/content.js"></script>

	<script src="../../js/implementer/opinion/content.js"></script>

	<script src="../../js/implementer/popup/block.js"></script>
	<script src="../../js/implementer/popup/content.js"></script>
       
        <script type="text/javascript">


   			function submitAgenda(){
   					
   	      		let csrfToken = $("meta[name='_csrf']").attr("content");
        		let csrfHeader = $("meta[name='_csrf_header']").attr("content");
        		
   				let contextPath = $('#contextPath').val();
            	let url = contextPath+"/api/decision/agenda";
            	let msg="심의안건 정보를 승인하시겠습니까?";

            	//BASE START
            	let decisionId = $('#decisionId').val();
          	
            	const data = {
        			"decisionId" : decisionId,
        		}
            	
            	console.log(data);
            	
            	if(confirm(msg)) {            		
            		$.ajax({
            			url : url,
            			type : "POST",
            			contentType : "application/json; charset=UTF-8",
            			data : JSON.stringify(data),
            			async: false, 
            			beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
            			success : function(data) {
            				alert("완료됐습니다.");
            				goToAgendaList();
            			},
            			error : function(xhr, status, error) {
            				//에러!
            				//alert("code:"+xhr.status);
            			}
            		});
            	}
   				
   				
   			}
            
            $(document).ready(function () {
            	
            	$('#loaderSection').hide()
            	
            	checkType();
            	
            	checkResultWrTbody();
            	
                const owners = document.querySelectorAll(".owner");
                owners.forEach((owner) => {
                    owner.addEventListener("click", (e) => {
                        const tr =
                            e.target.parentElement.parentElement.parentElement;
                        const checkWrap = tr.nextElementSibling;
                        checkWrap.classList.toggle("on");
                    });
                });

                getDecisionOpinionList();
                
         	

            });
        </script>
    </body>
</html>
