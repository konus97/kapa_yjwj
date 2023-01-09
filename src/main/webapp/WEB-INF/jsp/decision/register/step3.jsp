<%@	page contentType="text/html;charset=utf-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
	<link rel="stylesheet" href="../../css/init.css" />
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/layout.css" />
	<link rel="stylesheet" href="../../css/sub.css" />
	<link rel="stylesheet" href="../../css/owl.carousel.min.css" />
	<link rel="stylesheet" href="../../css/jquery-ui.css" />
	
</head>

<body>
	<div id="wrap">


		<!-- header start -->
		<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
			<jsp:param name="login" value="login" />
		</jsp:include>
		<!-- header end -->


		<hr />
		<div id="contents" class="c_sub">
			<div class="wrap">
				<div class="sub_title sub_title05">
					<h2 class="title bold center">심의안건 상세</h2>
				</div>

	            <!-- decision submenu start -->
	        	<jsp:include page="../../decision/includes/submenu.jsp" flush="false">
					<jsp:param name="currentPage" value="${currentPage}" />
				</jsp:include> 
				<!-- decision submenu end -->

				<div class="cs_wrap">
					<div class="cs_head">
						<h3 class="title bold cb">심의안건 상세</h3>
					</div>
					
					
						<div class="cs_body">
						
							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">기본 항목
								</h4>
							</div>
						
							<div class="form t1">
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>심의일자</label>
										</div>
										<div class="ff_wrap">
											<p>${formatter.consultationDate}</p>
										</div>
									</div>
									<div class="f_field div2">
										<div class="ff_title">
											<label>심의차수</label>
										</div>
										<div class="ff_wrap">
											<c:set var = "consultationDate2" value = "${formatter.consultationDate}" />
											<p>${fn:replace(consultationDate2, '-', '')} -${status.index +1}번</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label>사건번호</label>
										</div>
										<div class="ff_wrap">
											<p>${formatter.applicationDTO.caseNo}</p>
										</div>
									</div>
								</div>
							</div>
							
							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">사업개요</h4>
							</div>
							
							<div class="form t1">
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>사업명</label>
										</div>
										<div class="ff_wrap">
											<p>${formatter.applicationDTO.judgBizNm}</p>
										</div>
									</div>
							         <div class="f_field div2">
                                           <div class="ff_title">
                                               <label>위치/규모</label>
                                           </div>
                                           <div class="ff_wrap">
                                              <p></p>
                                           </div>
                                       </div>
								</div>
							      <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업기간</label>
                                            </div>
                                            <div class="ff_wrap">
                                              <p>${formatter.applicationDTO.recmReqStartDate} ~ ${formatter.applicationDTO.recmReqEndDate}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업시행자</label>
                                            </div>
                                            <div class="ff_wrap">
                                                    <p>${formatter.applicationDTO.bizOprtNm}</p>
                                            </div>
                                        </div>
                                    </div>
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label class="lineOver">도시계획<br />[사업인정]관계
											</label>
										</div>
										<div class="ff_wrap">
											<c:forEach var="cityPlan" items="${formatter.cityPlans}" varStatus="status">
												<p>${cityPlan.planTitle}</p>
												<p>${cityPlan.planContent}</p>
											</c:forEach>
										</div>
									</div>
									<div class="f_field div2">
										<div class="ff_title">
											<label>협회설립</label>
										</div>
										<div class="ff_wrap">
											<p>${formatter.groupEstablishedDate}</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>고지사항</label>
										</div>
										<div class="ff_wrap">
											<p>-</p>
										</div>
									</div>
									<div class="f_field div2">
										<div class="ff_title">
											<label>기타이력</label>
										</div>
										<div class="ff_wrap">
											<p>-</p>
										</div>
									</div>
								</div>
				
							</div>
				
							
							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">재결신청 내역</h4>
							</div>
							<div class="c_table t3 land">
								<p class="s_title">- 총물량조서</p>
								<table class="reg_table">
									<caption>총물량조서</caption>
									<thead>
										<tr>
											<th rowspan="2">구 분</th>
											<th colspan="3">총 보상대상</th>
											<th colspan="3">협의성립 등</th>
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
																<td><fmt:formatNumber value="${csltList.cslt_land_cnt}" pattern="#,###" /></td>
																<td><fmt:formatNumber value="${csltList.cslt_area_amot}" pattern="#,###" /></td>
																<td><fmt:formatNumber value="${csltList.cslt_land_amt}" pattern="#,###" /></td>
																<td id="landCnt" class="conferVal">${landCnt}</td>
																<td id="landArea" class="conferVal">${landArea}</td>
																<td id="landPrice" class="conferVal">${landPrice}</td>
																<td><fmt:formatNumber value="${csltList.cslt_land_cnt}" pattern="#,###" /></td>
																<td><fmt:formatNumber value="${csltList.cslt_area_amot}" pattern="#,###" /></td>
																<td><fmt:formatNumber value="${csltList.cslt_land_amt}" pattern="#,###" /></td>
															</tr>
															<tr>
																<th>물건</th>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_cnt}" pattern="#,###" /></td>
																<td></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_amt}" pattern="#,###" /></td>
																<td id="objCnt" class="conferVal">${objCnt}</td>
																<td></td>
																<td id="objPrice" class="conferVal">${objPrice}</td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_cnt}" pattern="#,###" /></td>
																<td></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_amt}" pattern="#,###" /></td>
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
							</div>
							
							<div class="form t3 mt40">
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label>수용할 토지 및 물건의 소유자등</label>
										</div>
										<div class="ff_wrap">
											<p>-</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label>협의내역횟수, 다수 협의 날짜</label>
										</div>
										<div class="ff_wrap">
											<c:forEach var="consultationDate" items="${formatter.consultationDates}" varStatus="status">
												<p>${consultationDate.consultationDate}</p>
											</c:forEach>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label>재결신청사유</label>
										</div>
										<div class="ff_wrap">					
											<p>${formatter.decision.decisionReason}</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label>재결 신청일</label>
										</div>
										<div class="ff_wrap">
											<p>${formatter.applicationDTO.recvDt}</p>
										</div>
									</div>
								</div>
							</div>
							
				
							<div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                      	  관련 법령
                                    </h4>
                                </div>
                                <div class="form">
                                    <div class="f_wrap">
                                        <p class="textarea_view textarea_bd">${formatter.decision.relatedLaws}</p>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                      	  관련 법령 판례
                                    </h4>
                                </div>
                                <div class="form">
                                    <div class="f_wrap">
                                        <p class="textarea_view textarea_bd">${formatter.decision.relatedLaws2}</p>
                                    </div>
                                </div>
							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
							</div>
							<div class="form">
								<div class="f_wrap">
									<p class="textarea_view textarea_bd">${formatter.decision.reviewOpinion}</p>
								</div>
							</div>

							<!-- 1. 지연가산금 S -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
								</div>
								
								<c:if test="${deliberateOpinionDTO.landCheck}">
									
									<div class="cs_title">
										<h4 class="fl title t1 bold cb s1 bullet">필지</h4>
									</div>
									
									<div class="c_table t3 land">				
										<table>
											<thead>
												
												 <tr>                                      
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
												<tr>				                                   
			                                       <td>
			                                           <strong>소유자</strong>
			                                           <span>
			                                             ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
			                                           </span>
			                                       </td>
	
			                                       <td>
			                                           <strong>지분</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.land_shre}</span>
			                                       </td>
			                                       <td class="left">
			                                           <strong>소재지</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.rept_addr}</span>
			                                       </td>
			                                       <td>
			                                         <strong>지번</strong>
			                                         <span>${deliberateOpinionDTO.ownerViewInfo.sido_gungu_cd}</span>
			                                       </td>
			                                       <td>
			                                           <strong>본번</strong>
			                                          <span>${deliberateOpinionDTO.ownerViewInfo.main_strt_no}</span>
			                                       </td>
			                                       <td>
			                                           <strong>부번</strong>
			                                    	 <span>${deliberateOpinionDTO.ownerViewInfo.sub_strt_no}</span>
			                                       </td>
			                                       <td>
			                                           <strong>공</strong>
			                            	 			<span>${deliberateOpinionDTO.ownerViewInfo.obst_stuc1_nm}</span>
			                                       </td>
			                                       <td>
			                                           <strong>실</strong>
			                          					<span>${deliberateOpinionDTO.ownerViewInfo.obst_stuc2_nm}</span>
			                                       </td>
			                                       <td>
			                                           <strong>면적</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.area_amot}${deliberateOpinionDTO.ownerViewInfo.area_unit}</span>
			                                       </td>
			                                       <td>
			                                           <strong>단가</strong>
			                                   		   <span>${deliberateOpinionDTO.ownerViewInfo.bef_unit_cost}</span>
			                                       </td>
				                                        
				                         		</tr>                       
											</tbody>
											
										</table>
									</div>
								
								</c:if>
								
								
								<c:if test="${deliberateOpinionDTO.objectCheck}">
									
									<div class="cs_title">
										<h4 class="fl title t1 bold cb s1 bullet">지장물</h4>
									</div>
									
									<div class="c_table t3 land">				
										<table>
											<thead>
												
												  <tr>
	                                                         
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
												<tr>				                                   
			                                       <td>
			                                           <strong>소유자</strong>
			                                           <span>
			                                             ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
			                                           </span>
			                                       </td>
			                                       <td>
			                                           <strong>지분</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.land_shre}</span>
			                                       </td>
			                                       <td class="left">
			                                           <strong>소재지</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.rept_addr}</span>
			                                       </td>
			                          
			                                       <td>
			                                           <strong>본번</strong>
			                                          <span>${deliberateOpinionDTO.ownerViewInfo.main_strt_no}</span>
			                                       </td>
			                                       <td>
			                                           <strong>부번</strong>
			                                    	 <span>${deliberateOpinionDTO.ownerViewInfo.sub_strt_no}</span>
			                                       </td>
			                                            <td>
			                                           <strong>부번2</strong>
			                                    	 <span>${deliberateOpinionDTO.ownerViewInfo.strt_other}</span>
			                                       </td>
			                                   
	                                                 <td>
	                                                    <strong>물건종류</strong>
	                                        	 		<span>${deliberateOpinionDTO.ownerViewInfo.obst_stuc1_nm}</span>
	                                                </td>
				                                     <td>
	                                                    <strong>물건구조</strong>
	                                                  	<span>${deliberateOpinionDTO.ownerViewInfo.obst_kind_nm}</span>
	                                                </td>
			                                       <td>
			                                           <strong>면적</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.area_amot}${deliberateOpinionDTO.ownerViewInfo.area_unit}</span>
			                                       </td>
			                                       <td>
			                                           <strong>단가</strong>
			                                   		   <span>${deliberateOpinionDTO.ownerViewInfo.bef_unit_cost}</span>
			                                       </td>
				                                        
				                         		</tr>                       
											</tbody>
											
										</table>
									</div>
								
								</c:if>
							
					
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">소유자 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<p class="textarea_view textarea_bd">${deliberateOpinionDTO.ownerOpinion }</p>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">사업시행자 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<p class="textarea_view textarea_bd">${deliberateOpinionDTO.executorOpinion }</p>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<p class="textarea_view textarea_bd">${deliberateOpinionDTO.opinionText}</p>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<p class="textarea_view textarea_bd">${deliberateOpinionDTO.relatedLaws }</p>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<p class="textarea_view textarea_bd">${deliberateOpinionDTO.relatedLaws2 }</p>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<p class="textarea_view textarea_bd">${deliberateOpinionDTO.reviewOpinion }</p>
									</div>
								</div>
								
								<!-- view code -->
								
								 <%-- <c:if test="${deliberateOpinionDTO.itemCheck}">
									 <c:forEach var="deliberateOpinionItemDTO" items="${deliberateOpinionDTO.deliberateOpinionItemDTOS}" varStatus="status">
										<div class="c_table t1">
											<table class="mt40">
												<tbody>
													<tr>
														<th class="info_reg_th">제목</th>
														<td><p class="">${deliberateOpinionItemDTO.title }</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">내용
														</th>
														<td><p class="">${deliberateOpinionItemDTO.content }</p></td>
													</tr>
												<!-- 	<tr>
														<th class="info_reg_th">관련자료</th>
														<td class=""><img
															src="https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"
															alt=""></td>
													</tr> -->
												</tbody>
											</table>
										</div>
									</c:forEach>		  
								 </c:if> --%>
							
								
							
							
							</c:forEach>
												
							<!-- 1. 지연가산금 E -->
							<li><a href="#" class="btn t1 h50 big"
										onclick="goToDecisionRegisterList();return false;">확인</a>
									</li>
							
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
		<script src="../../lib/charts.js"></script>
		<script src="../../lib/jquery-ui.min.js"></script>
		<script src="../../lib/lib.js"></script>
<script src="../../js/common.js"></script>
<script src="../../js/implementer/content.js"></script>
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
			
		</script>
</body>
</html>