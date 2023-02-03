<%@	page contentType="text/html;charset=utf-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%>

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
<meta property="og:image" content="../../css/favicon_1200x630.png" />
<meta name="twitter:description" content="재결정보지원센터" />
<meta name="twitter:image" content="../../css/favicon_270x270.png" />

<link rel="shortcut icon" href="../../css/favicon_seoul.ico" />
<link rel="icon" href="../../css/favicon_seoul.ico" />

<link rel="stylesheet" href="../../css/init.css" />
<link rel="stylesheet" href="../../css/common.css" />
<link rel="stylesheet" href="../../css/layout.css" />
<link rel="stylesheet" href="../../css/sub.css" />
<link rel="stylesheet" href="../../css/owl.carousel.min.css" />
<link rel="stylesheet" href="../../css/jquery-ui.css" />
</head>
<body>
	<div id="wrap">

		<input type="hidden" name="masterId" id="masterId" value="${masterId}">

		<!-- header start -->
		<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
			<jsp:param name="login" value="login" />
		</jsp:include>
		<!-- header end -->

		<hr />
		<div id="contents" class="c_sub">
			<div class="wrap">
				<div class="sub_title sub_title02">
					<h2 class="title bold center">LTIS입력정보확인</h2>
				</div>

				<!-- implementer submenu start -->
				<jsp:include page="../../implementer/includes/submenu.jsp"
					flush="false">
					<jsp:param name="currentPage" value="${currentPage}" />
				</jsp:include>
				<!-- implementer submenu end -->

				<div class="cs_wrap">
					<div class="cs_head">
						<h3 class="title bold cb">LTIS입력정보확인</h3>
					</div>

					<div class="cs_body">
						<form name="inquiry_view">

							<!-- step start -->
							<jsp:include page="/WEB-INF/jsp/components/view/step.jsp"
								flush="false">
								<jsp:param name="currentStep" value="${avo.decisionState}" />
							</jsp:include>
							<!-- step end -->

							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">사업 정보</h4>
							</div>
							<div class="form t1">
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>사건번호</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.caseNo}</p>
										</div>
									</div>
									<div class="f_field div2">
										<div class="ff_title">
											<label>사건명</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.judgBizNm}</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>접수일자</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.recvDt}</p>
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
											<p>${avo.csltApprInstNm}</p>
										</div>
									</div>
								</div>

								<c:if test="${decisionCheck}">

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label>사업기간</label>
											</div>
											<div class="ff_wrap">
												<p>${avo.recmReqStartDate}~ ${avo.recmReqEndDate}</p>
											</div>
										</div>
									</div>

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label class="lineOver">도시계획<br> 조합설립
												</label>
											</div>

											<div class="ff_wrap ff_wrap_inner">

												<p>${groupEstablishedDate}</p>

											</div>

										</div>
									</div>

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label class="lineOver">도시계획<br />
													[사업인정]관계
												</label>
											</div>
											<div class="ff_wrap ff_wrap_inner">
												<table class="table reg_table">
													<thead>
														<tr>
															<th>제목</th>
															<th>내용</th>
														</tr>
													</thead>
													<tbody id="relationList">
														<c:forEach var="cityPlans" items="${cityPlans}"
															varStatus="status">
															<tr class="relationItem" id="relationInfo0">
																<td>${cityPlans.planTitle}</td>
																<td>${cityPlans.planContent}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>


									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label class="lineOver">협의내역 횟수,<br />다수 협의 날짜
												</label>
											</div>
											<div class="ff_wrap">
												<table class="table reg_table">
													<thead>
														<tr>
															<th>협의일</th>
															<th>내용</th>
														</tr>
													</thead>
													<tbody id="dateList">
														<c:forEach var="consultationDates" items="${consultationDates}" varStatus="status">
															<tr class="dateItem" id="dateInfo3">
																<td>${consultationDates.consultationDate}</td>
																<td>${consultationDates.consultationDateText}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label>재결신청사유</label>
											</div>
											<div class="ff_wrap">
												<p class="p_view">${decision.decisionReason}</p>
											</div>
										</div>
									</div>

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label class="lineOver">감정평가 법인 및 <br />사무소 선정 현황
												</label>
											</div>
											<div class="ff_wrap">
												<table class="table reg_table">
													<thead>
														<tr>
															<th>사업시행자</th>
															<th>시도지사 추천</th>
															<th>토지소유자추천</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>${decision.businessOperator}</td>
															<td>${decision.governor}</td>
															<td>${decision.landowner}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
                                                <label>추천요청을 하지 <br />않은 이유</label>
											</div>
											<div class="ff_wrap">
												<p class="p_view">${decision.notReqReason}</p>
											</div>
										</div>
									</div>
									
									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label class="lineOver">협의 <br />감정평가액
												</label>
											</div>
											<div class="ff_wrap">
												<table class="table reg_table">
													<thead>
														<tr>
															<th id="titleBusinessOperator">${decision.businessOperator}</th>
															<th id="titleGovernor">${decision.governor}</th>
															<th id="titleLandowner">${decision.landowner}</th>
															<th>합계 평균</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>${amountA}</td>
															<td>${amountB}</td>
															<td>${amountC}</td>
															<td id="amountAverage">${averageAmount}</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>

									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label>총물량조서</label>
											</div>
											<div class="ff_wrap">
												<table class="table reg_table" style="text-align: center">
													<thead>

														<tr>
															<th rowspan="2">구 분</th>
															<th colspan="3">총 보상대상</th>
															<th colspan="3">협의취득 등</th>
															<th colspan="3">재결신청</th>
														</tr>
														<tr>
															<th>필,건</th>
															<th>면적(m<sup>2</sup>)
															</th>
															<th>금액(천 원)</th>
															<th>필,건</th>
															<th>면적(m<sup>2</sup>)
															</th>
															<th>금액(천 원)</th>
															<th>필,건</th>
															<th>면적(m<sup>2</sup>)
															</th>
															<th>금액(천 원)</th>
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
										</div>
									</div>



									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label>대상(건축물)</label>
											</div>
											<div class="ff_wrap">
												<table class="table reg_table">
													<thead>
														<tr>
															<th rowspan="2">소재지<br />(소유자)
															</th>
															<th rowspan="2">지번</th>
															<th rowspan="2">지목</th>
															<th colspan="2">면적(M2)</th>
															<th rowspan="2">비고</th>
														</tr>
														<tr>
															<th>편입 전<br />면적
															</th>
															<th>편입<br />면적
															</th>
														</tr>
													</thead>
													<tbody id="targetList">
														<c:forEach var="targets" items="${targets}"
															varStatus="status">
															<tr class="targetItem" id="targetInfo0">
																<td>${targets.targetInfo}</td>
																<td>${targets.BUN1}</td>
																<td>${targets.BUN2}</td>
																<td>${targets.area_Before_Transfer}</td>
																<td>${targets.area_After_Transfer}</td>
																<td>${targets.etc}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>


									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label>파일첨부</label>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>1. 적정성 검토서</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '1'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view" value="${decisionFiles.fileDescription}" readonly disabled />
																		<input class="file_view" value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>

											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>2. 재결 신청서</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '2'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>3. 재결신청 청구서</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '3'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>4. 사업계획서</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '4'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>5. 사업인정 고지문</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '5'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>6. 중토위 의견청취
														관련 문서</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '6'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>7.
														소유자별서류(제시액조서,토지&물건 조서,협위경위서등)</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '7'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>8. 사업도면</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '8'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>9.
														협의관계서류(보상계획공고,협의요청서,공시송달문서)</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '9'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>10. 감정 평가서</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
	                                                					<c:if test="${decisionFiles.fileType eq '10' or decisionFiles.fileType eq '13' or  decisionFiles.fileType eq '12'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
												<label class="file_label"><span>11. 기타</span></label>
												<div>
													<c:choose>
														<c:when test="${fn:length(decisionFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="decisionFiles" items="${decisionFiles}"
																varStatus="status">
																<c:if test="${decisionFiles.fileType eq '11'}">
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view"
																			value=${decisionFiles.fileDescription } readonly
																			disabled /> <input class="file_view"
																			value=${decisionFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${decisionFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
																</c:if>
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</div>
									</div>

								</c:if>
							</div>

							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">담당자 정보</h4>
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
											<p>${avo.reptLoc}</p>
										</div>
									</div>
								</div>
							</div>
							<div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">조서 정보</h4>
							</div>
							<div class="form t1">
								<div class="f_wrap">


									<div class="f_field div2">
										<div class="ff_title">
											<label>지장물수</label>
										</div>
										<div class="ff_wrap">
											<p>
												<a href="#" class="cx"
													onclick="openPopup('goods','${objectCount}');return false;">${objectCount}건<i
													class="icon search"></i></a>
											</p>
										</div>
									</div>

									<div class="f_field div2">
										<div class="ff_title">
											<label>필지수</label>
										</div>
										<div class="ff_wrap">
											<p>
												<a href="#" class="cx"
													onclick="openPopup('land','${landCount}');return false;">${landCount}건<i
													class="icon search"></i></a>
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
												<a href="#" class="cx"
													onclick="openPopup('goodsowner','${objectRightCount}');return false;">${objectRightCount}명<i
													class="icon search"></i></a>
											</p>
										</div>
									</div>
									<div class="f_field div2">
										<div class="ff_title">
											<label>필지소유자수</label>
										</div>
										<div class="ff_wrap">
											<p>
												<a href="#" class="cx"
													onclick="openPopup('landsowner','${landRightCount}');return false;">${landRightCount}명<i
													class="icon search"></i></a>
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
								<h4 class="fl title t1 bold cb s1 bullet">비고</h4>
							</div>
							<div class="form t2">
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label for="bw_subject">제출기한</label>
										</div>
										<div class="ff_wrap">
											<p>-</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label for="bw_subject">사업시행자 담당자(연락처) </label>
										</div>
										<div class="ff_wrap">
											<p>
												${avo.bizOprtIchrNm} <a href="tel:${avo.bizOprtPhoneNo}"
													class="cx">${avo.bizOprtPhoneNo}</a>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="mt40 btn_wrap">
								<ul class="btns">

									<c:if test="${avo.nextStepCheck}">
										<li><a
											href="${pageContext.request.contextPath}/implementer/decision/signup.do?masterId=${masterId}"
											class="btn h50 big">LTIS입력정보확인</a>
										</li>
									</c:if>

									<li><a
										href="${pageContext.request.contextPath}/implementer/application.do"
										class="btn t1 h50 big">확인</a>
									</li>
								</ul>
							</div>


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
							<div class="popup info">
								<div class="p_box">
									<div class="p_head">
										<h3 class="p_title">평가사 상세보기</h3>
										<a href="#!" class="p_close"><span
											class="blind">닫기</span></a>
									</div>
									<div class="p_body">
										<div class="wrap">
											<div class="form t1">
												<div class="f_wrap">
													<div class="f_field">
														<div class="ff_title">
															<label>사진</label>
														</div>
														<div class="ff_wrap">
															<div class="img">
																<img
																	src="https://search.pstatic.net/common?type=a&amp;size=120x150&amp;quality=95&amp;direct=true&amp;src=http%3A%2F%2Fsstatic.naver.net%2Fpeople%2F170%2F201410201856016791.jpg"
																	alt="파일명" />
															</div>
														</div>
													</div>
												</div>
												<div class="f_wrap">
													<div class="f_field div2">
														<div class="ff_title">
															<label>이름</label>
														</div>
														<div class="ff_wrap">
															<p>미정</p>
														</div>
													</div>
													<div class="f_field div2">
														<div class="ff_title">
															<label>나이</label>
														</div>
														<div class="ff_wrap">
															<p>미정</p>
														</div>
													</div>
												</div>
												<div class="f_wrap">
													<div class="f_field">
														<div class="ff_title">
															<label>소속</label>
														</div>
														<div class="ff_wrap">
															<p>미정</p>
														</div>
													</div>
												</div>
												<div class="f_wrap">
													<div class="f_field div2">
														<div class="ff_title">
															<label>핸드폰</label>
														</div>
														<div class="ff_wrap">
															<p>미정</p>
														</div>
													</div>
													<div class="f_field div2">
														<div class="ff_title">
															<label>이메일</label>
														</div>
														<div class="ff_wrap">
															<p>미정</p>
														</div>
													</div>
												</div>
												<div class="f_wrap">
													<div class="f_field">
														<div class="ff_title">
															<label>기타</label>
														</div>
														<div class="ff_wrap">
															<p>미정</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 팝업, 평가사 정보 E -->
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

	<script src="../../js/implementer/popup/block.js"></script>
	<script src="../../js/implementer/popup/content.js"></script>

	<script type="text/javascript">
		$(document).ready(
				function() {

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

					const downloadButtons = document
							.querySelectorAll('.downloadButton');
					let contextPath = $("#contextPath").val();
					const url = contextPath + '/file/download';
					for (let i = 0; i < downloadButtons.length; i++) {
						downloadButtons[i].addEventListener("click",
								function(e) {
									let seqNo = e.currentTarget.id;
									window.location = url + "?seqNo=" + seqNo;
								})
					}
					;

				});
		
		
		
		
	</script>
</body>
</html>