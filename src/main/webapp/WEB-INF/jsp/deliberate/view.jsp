<%@	page contentType="text/html;charset=utf-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.net.URLEncoder" %>

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

				<!-- deliberate submenu start -->
				<jsp:include page="../deliberate/includes/submenu.jsp" flush="false">
					<jsp:param name="currentPage" value="${currentPage}" />
				</jsp:include>
				<!-- deliberate submenu end -->

				<div class="cs_wrap cs_wrap--agenda_view">
					<div class="cs_head">
						<h3 class="title bold cb">심의안건 상세</h3>
					</div>
					
					<c:forEach var="formatter" items="${formatterList}" varStatus="status">
					
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
			                        		<a href="#index${formatter.applicationDTO.judgSeq}_tit01">기본 항목</a>
			                        	</li>
			                        	<li>
			                        		<a href="#index${formatter.applicationDTO.judgSeq}_tit02">사업개요</a>
			                        	</li>
			                        	<li>
			                        		<a href="#index${formatter.applicationDTO.judgSeq}_tit03">재결신청 내역</a>
			                        	</li>
			                        	<li>
			                        		<a href="#index${formatter.applicationDTO.judgSeq}_tit04">소유자 및 사업시행자 의견</a>
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
		                        	</ul>
		                        </div>
	                        </div>
		                 <!-- 목차 끝 -->
					
						<div class="cs_body">
		                    
							<div class="cs_title">
								<h4 id="index${formatter.applicationDTO.judgSeq}_tit01" class="fl title t1 bold cb s1 bullet">기본 항목
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
								<h4 id="index${formatter.applicationDTO.judgSeq}_tit02" class="fl title t1 bold cb s1 bullet">사업개요</h4>
							</div>
							
							<div class="form t1">
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>사업명</label>
										</div>
										<div class="ff_wrap">
											<p>${formatter.applicationDTO.title}</p>
										</div>
									</div>
							         <div class="f_field div2">
                                           <div class="ff_title">
                                               <label>위치/규모</label>
                                           </div>
                                           <div class="ff_wrap">
                                              <p>-</p>
                                           </div>
                                       </div>
								</div>
							      <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업기간</label>
                                            </div>
                                            <div class="ff_wrap">
                                              <p>-</p>
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
								<h4 id="index${formatter.applicationDTO.judgSeq}_tit03" class="fl title t1 bold cb s1 bullet">재결신청 내역</h4>
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
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_cnt}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_area_amot}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_amt}" pattern="#,###" /></td>
																<td id="landCnt" class="conferVal">${landCnt}</td>
																<td id="landArea" class="conferVal">${landArea}</td>
																<td id="landPrice" class="conferVal">${landPrice}</td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_cnt}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_area_amot}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_amt}" pattern="#,###" /></td>
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
							<h4 class="fl title t1 bold cb s1 bullet">1. 지연가산금(재결신청 청구)</h4>
							</div>
							<!-- 1. 지연가산금 S -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 1}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							<!-- 1. 지연가산금 E -->
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">2. 보상금 증액</h4>
							</div>
							<!-- 2 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 2}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">3. 협의 미이행(불이행,미준수)</h4>
							</div>
							<!-- 3 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 3}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">4. 사업폐지(취소,중단,변경,보류,제외)</h4>
							</div>
							<!-- 4 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 4}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">5. 재결 보류(기각,반려,취소)</h4>
							</div>
							<!-- 5 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 5}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">6. 무허가건물 부지면적 보상</h4>
							</div>
							<!-- 6 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 6}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">7. 잔여지/잔여건물 가치 하락</h4>
							</div>
							<!-- 7 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 7}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">8. 잔여지/잔여건물 매수 청구(확대보상)</h4>
							</div>
							<!-- 8 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 8}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">9. 사도평가 적정성</h4>
							</div>
							<!-- 9 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 9}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">10. 일단지 보상</h4>
							</div>
							<!-- 10 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 10}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">11. 미지급 용지</h4>
							</div>
							<!-- 11 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 11}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">12. 영업보상(이전비) 적정성</h4>
							</div>
							<!-- 12 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 12}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">13. 누락 물건 반영</h4>
							</div>
							<!-- 13 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 13}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">14. 폐업 보상</h4>
							</div>
							<!-- 14 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 14}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">15. 영농손실보상</h4>
							</div>
							<!-- 15 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 15}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">16. 휴직(실직)보상</h4>
							</div>
							<!-- 16 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 16}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">17. 이주대책 수립</h4>
							</div>
							<!-- 17 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 17}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">18. 이주정착금, 주거이전비, 이사비</h4>
							</div>
							<!-- 18 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 18}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">19. 구분지상권</h4>
							</div>
							<!-- 19 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 19}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">20. 10% 변동 내역</h4>
							</div>
							<!-- 20 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 20}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">21. 기타(임료손실,대토보상 등)</h4>
							</div>
							<!-- 21 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 21}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							
							<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">22. 소유자 의견 없음</h4>
							</div>
							<!-- 22 -->
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${deliberateOpinionDTO.type eq 22}">
								<div class="cs_title">
									<h4 id="index${formatter.applicationDTO.judgSeq}_${deliberateOpinionDTO.type}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">${deliberateOpinionDTO.type }. ${deliberateOpinionDTO.typeStr }</h4>
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
                                    <h4 id="index${formatter.applicationDTO.judgSeq}_tit04" class="fl title t1 bold cb s1 bullet">
                                      	  	 소유자 및 사업시행자 의견
                                    </h4>
                               </div>
                               <div class="c_table c_table--opinion">
	             	               <table>
	                                    <thead>
	                                        <tr>
	                                            <th class="c_table__th--owner_name">소유자</th>
	                                            <th>소유자의 의견요지</th>
	                                            <th>사업시행자 의견</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                    
	                                        <tr>
	                                        	<td>
	                                        	   ${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
	                                        	</td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                            <td class="c_table__td--para">
	                                            	<div class="op_list">
	                                            		<h5 class="op_list__tit">${deliberateOpinionDTO.executorOpinion}</h5>
	                                            	</div>
	                                            </td>
	                                        </tr>
	                                        <tr>
														<th class="info_reg_th">소재지</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.title}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">이전비 평가사유</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.content}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
													<tr>
														<td class=""  colspan="3">
															<img
															src="${deliberateOpinionDTO.fileFolder}${deliberateOpinionDTO.fileNameChange}"
															alt="">
														</td>
													</tr>
	                                    	</tbody>
	                                	</table>
                               		</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.opinionText}</div>
									</div>
								</div>
								
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div>
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.reviewOpinion }</div>
									</div>
								</div>
								
							</c:if>
							</c:forEach>
							 
					</div>
					
					</c:forEach>
					
					
				
				</div>
			</div>
			<hr />

			<!-- footer start -->
			<jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include>
			<!-- footer end -->

		</div>

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
				var offset = 200;
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
			
 			window.addEventListener('scroll',function(){
				$('.opinion_index_container').each(function(i,el){
					console.log($(this).offset().top)
 					if ($(this).offset().top > ($(this).next().offset().top + $(this).next().height() - 200)) {
 						$(this).css('opacity','0')
					} else {
						$(this).css('opacity','1')
					}
				})
			})
		});
		
		
	    
			
		</script>
</body>
</html>
