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
		                          <!-- 항목 시작 -->
		                          <c:forEach var="typeList" items="${typeList}" varStatus="status">
		                          	<li>
		                          		<a href="#index${typeList.decisionId}_${typeList.opinionType}">
		                          			${typeList.opinionType}. ${typeList.getTypeStr}
		                          		</a>
		                          		<!-- 소유자 시작 -->
		                          		<ul class="opinion_index_list--sub2">
		                          		<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
											<c:if test="${typeList.opinionType eq deliberateOpinionDTO.type}">
												<c:if test="${deliberateOpinionDTO.landCheck}">
				                          			<li>
				        	                  			<a href="#index${typeList.decisionId}_${typeList.opinionType}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}">
				        	                  				${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
				        	                  			</a>
				                          			</li>
		                          				</c:if>
		                          				<c:if test="${deliberateOpinionDTO.objectCheck}">	                          			<li>
				        	                  			<a href="#index${typeList.decisionId}_${typeList.opinionType}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}">
				        	                  				${deliberateOpinionDTO.ownerViewInfo.ownr_nm}
				        	                  			</a>
				                          			</li>
		                          				</c:if>
		                          			</c:if>
		                          		</c:forEach>
		                          		</ul>
		                          		<!-- 소유자 끝 -->
		                          	</li>
		                          </c:forEach>
		                          <!-- 항목 끝 -->
		                          </ul>
	                        	</li>
                        	</ul>
                        </div>
                       </div>
                 <!-- 목차 끝 -->

				<div class="cs_wrap">
					<div class="cs_head">
						<h3 class="title bold cb">심의안건 상세</h3>
					</div>
					
					
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
							
							<!-- 감정평가정보 시작 -->
               					<!--<div class="cs_title">
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
			                    </div>-->
			                    <!-- 감정평가정보 끝 -->
							
							<div id="index${formatter.applicationDTO.judgSeq}_tit04" class="blind"></div>
							<!-- 1. 지연가산금 S -->
							<c:forEach var="typeList" items="${typeList}" varStatus="status">
							<div class="cs_title">
								<h4 class="title--optype" id="index${typeList.decisionId}_${typeList.opinionType}">
									${typeList.opinionType}. ${typeList.getTypeStr}
								</h4>
							</div>
							<c:forEach var="deliberateOpinionDTO" items="${formatter.deliberateOpinionDTOS}" varStatus="status">
							<c:if test="${typeList.opinionType eq deliberateOpinionDTO.type}">
								
								
								<c:if test="${deliberateOpinionDTO.landCheck}">
									<div class="cs_title">
										<h4 id="index${typeList.decisionId}_${typeList.opinionType}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">
											필지
										</h4>
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
			                                             ${deliberateOpinionDTO.ownerViewInfo.pname}
			                                           </span>
			                                       </td>
	
			                                       <td>
			                                           <strong>지분</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.interests}</span>
			                                       </td>
			                                       <td class="left">
			                                           <strong>소재지</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.addr}</span>
			                                       </td>
			                                       <td>
			                                         <strong>지번</strong>
			                                         <span>${deliberateOpinionDTO.ownerViewInfo.reg}</span>
			                                       </td>
			                                       <td>
			                                           <strong>본번</strong>
			                                          <span>${deliberateOpinionDTO.ownerViewInfo.bun1}</span>
			                                       </td>
			                                       <td>
			                                           <strong>부번</strong>
			                                    	 <span>${deliberateOpinionDTO.ownerViewInfo.bun2}</span>
			                                       </td>
			                                       <td>
			                                           <strong>공</strong>
			                            	 			<span>${deliberateOpinionDTO.ownerViewInfo.gm1}</span>
			                                       </td>
			                                       <td>
			                                           <strong>실</strong>
			                          					<span>${deliberateOpinionDTO.ownerViewInfo.gm2}</span>
			                                       </td>
			                                       <td>
			                                           <strong>면적</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.area}</span>
			                                       </td>
			                                       <td>
			                                           <strong>단가</strong>
			                                   		   <span>${deliberateOpinionDTO.ownerViewInfo.priceK}</span>
			                                       </td>
				                                        
				                         		</tr>                       
											</tbody>
											
										</table>
									</div>
									<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">소유자 및 사업시행자 의견</h4>
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
										<td>${deliberateOpinionDTO.ownerViewInfo.pname} 
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
											</div><%-- 
											<div class="op_list">
												<h5 class="op_list__tit">${opinionList.ownerOpinion}</h5>
											</div> --%>
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<p class="op_list__con">${deliberateOpinionDTO.executorOpinion}</p>
											</div>
										</td>
									</tr>
													<tr>
														<th class="info_reg_th">제목</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.opinionTitle}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">내용</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.opinionContent}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
									  <c:forEach var="fileList" items="${registerFileList}" varStatus = "status">
									 	<c:if test="${deliberateOpinionDTO.type eq fileList.fileType }">
									 	<c:if test="${deliberateOpinionDTO.reptOwnrSeq eq fileList.reptSeq }">
													
													<c:choose>
													<c:when test="${fileList.fileNameExtension eq 'pdf'}">
													<tr>
													<div class="file_flex"> 
													<input class="file_view" value="pdf다운로드" readonly disabled />	
					                         		<input class="file_view" value="${fileList.fileNameChange}" readonly disabled />
					                         				<button type="button" class="btn small02 t1 nohover downloadButton" id="${fileList.fileSeq}">
					                             			<i class="icon-block download"></i>
					                         			</button>
					                         			</div>
					                         			</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'PDF'}">
													<tr>
													<div class="file_flex"> 
								<input class="file_view" value="pdf다운로드" readonly disabled />	
                         				<input class="file_view" value="${fileList.fileNameChange}" readonly disabled />
                         				<button type="button" class="btn small02 t1 nohover downloadButton" id="${opinionFileList.fileSeq}">
                             			<i class="icon-block download"></i>
                         			</button>
                         			</div>
                         			</tr>
													</c:when><c:when test="${fileList.fileNameExtension eq 'png'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when><c:when test="${fileList.fileNameExtension eq 'PNG'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'jpeg'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'JPEG'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'jpg'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'JPG'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													</c:choose>
													</c:if>
													</c:if>
								  </c:forEach> 
								</tbody>
							</table>
						</div>
									
								
								</c:if>
								
								
								<c:if test="${deliberateOpinionDTO.objectCheck}">
									
									<div class="cs_title">
										<h4 id="index${typeList.decisionId}_${typeList.opinionType}_${deliberateOpinionDTO.ownerViewInfo.rept_seq}" class="fl title t1 bold cb s1 bullet">
											지장물
										</h4>
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
			                                             ${deliberateOpinionDTO.ownerViewInfo.pname}
			                                           </span>
			                                       </td>
			                                       <td>
			                                           <strong>지분</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.interests}</span>
			                                       </td>
			                                       <td class="left">
			                                           <strong>소재지</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.addr}</span>
			                                       </td>
			                          
			                                       <td>
			                                           <strong>본번</strong>
			                                          <span>${deliberateOpinionDTO.ownerViewInfo.bun1}</span>
			                                       </td>
			                                       <td>
			                                           <strong>부번</strong>
			                                    	 <span>${deliberateOpinionDTO.ownerViewInfo.bun2}</span>
			                                       </td>
			                                            <td>
			                                           <strong>부번2</strong>
			                                    	 <span>${deliberateOpinionDTO.ownerViewInfo.bun3}</span>
			                                       </td>
			                                   
	                                                 <td>
	                                                    <strong>물건종류</strong>
	                                        	 		<span>${deliberateOpinionDTO.ownerViewInfo.kind}</span>
	                                                </td>
				                                     <td>
	                                                    <strong>물건구조</strong>
	                                                  	<span>${deliberateOpinionDTO.ownerViewInfo.gujo}</span>
	                                                </td>
			                                       <td>
			                                           <strong>면적</strong>
			                                           <span>${deliberateOpinionDTO.ownerViewInfo.unit}</span>
			                                       </td>
			                                       <td>
			                                           <strong>단가</strong>
			                                   		   <span>${deliberateOpinionDTO.ownerViewInfo.priceK}</span>
			                                       </td>
				                                        
				                         		</tr>                       
											</tbody>
											
										</table>
									</div>
									<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">소유자 및 사업시행자 의견</h4>
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
										<td>${deliberateOpinionDTO.ownerViewInfo.pname} 
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<h5 class="op_list__tit">${deliberateOpinionDTO.ownerOpinion}</h5>
											</div><%-- 
											<div class="op_list">
												<h5 class="op_list__tit">${opinionList.ownerOpinion}</h5>
											</div> --%>
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<p class="op_list__con">${deliberateOpinionDTO.executorOpinion}</p>
											</div>
										</td>
									</tr>
									<tr>
														<th class="info_reg_th">제목</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.opinionTitle}</p></td>
													</tr>
													<tr>
														<th class="info_reg_th">내용</th>
														<td colspan="2"><p class="">${deliberateOpinionDTO.opinionContent}</p></td>
													</tr>
									<tr>
														<th class="info_reg_th" colspan="3">관련자료</th>
													</tr>
									  <c:forEach var="fileList" items="${registerFileList}" varStatus = "status">
									 	<c:if test="${deliberateOpinionDTO.type eq fileList.fileType }">
									 	<c:if test="${deliberateOpinionDTO.reptSeq eq fileList.reptSeq }">
													
													<c:choose>
													<c:when test="${fileList.fileNameExtension eq 'pdf'}">
													<tr>
													<div class="file_flex"> 
													<input class="file_view" value="pdf다운로드" readonly disabled />	
					                         		<input class="file_view" value="${fileList.fileNameChange}" readonly disabled />
					                         				<button type="button" class="btn small02 t1 nohover downloadButton" id="${fileList.fileSeq}">
					                             			<i class="icon-block download"></i>
					                         			</button>
					                         			</div>
					                         			</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'PDF'}">
													<tr>
													<div class="file_flex"> 
								<input class="file_view" value="pdf다운로드" readonly disabled />	
                         				<input class="file_view" value="${fileList.fileNameChange}" readonly disabled />
                         				<button type="button" class="btn small02 t1 nohover downloadButton" id="${opinionFileList.fileSeq}">
                             			<i class="icon-block download"></i>
                         			</button>
                         			</div>
                         			</tr>
													</c:when><c:when test="${fileList.fileNameExtension eq 'png'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when><c:when test="${fileList.fileNameExtension eq 'PNG'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'jpeg'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'JPEG'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'jpg'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													<c:when test="${fileList.fileNameExtension eq 'JPG'}">
													<tr>
														<td class=""  colspan="3">
															<img
															src="${fileList.fileFolder}${fileList.fileNameChange}"
															alt="">
														</td>
													</tr>
													</c:when>
													</c:choose>
													</c:if>
													</c:if>
								  </c:forEach> 
								</tbody>
							</table>
						</div>
									
								
								</c:if>
							
					
								<%-- <div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">소유자 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.ownerOpinion }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">사업시행자 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.executorOpinion}</div>
									</div>
								</div> --%>
								
								
								
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
							
								
							
							</c:if>
							</c:forEach>
							<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">재결관 의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${typeList.opinionText}</div>
									</div>
								</div>
								
								
								<%-- <div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${deliberateOpinionDTO.relatedLaws }</div>
									</div>
								</div> --%>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${typeList.relatedLaws2 }</div>
									</div>
								</div>
								
								<div class="cs_title">
									<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
								</div>
								<div class="form">
									<div class="f_wrap">
										<div class="textarea_view textarea_bd fr_editor_wr">${typeList.reviewOpinion }</div>
									</div>
								</div>
							</c:forEach>	
							<!-- 1. 지연가산금 E -->
							<div class="btn_wrap mt60 mb60">
								<a href="#" class="btn t1 h50 big"
										onclick="goToDecisionRegisterList();return false;">확인</a>
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
							const downloadButtons = document.querySelectorAll('.downloadButton');
			    			let contextPath = $("#contextPath").val();
			    			const url = contextPath+'/file/download';
			    			for (let i=0; i<downloadButtons.length; i++){
			    				downloadButtons[i].addEventListener("click", function(e) {
			    				    let seqNo = e.currentTarget.id;
			    				    window.location = url + "?seqNo=" + seqNo;
			    				})
			    			}
							
			});
			
		</script>
</body>
</html>