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
								<table>
									<caption>총물량조서</caption>
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
										<tr>
											<th>토 지</th>
											<td>71</td>
											<td>5,535</td>
											<td>2,471,691</td>
											<td>4</td>
											<td>598</td>
											<td>132,242</td>
											<td>4</td>
											<td>598</td>
											<td>132,242</td>
										</tr>
										<tr>
											<th>물 건</th>
											<td>90</td>
											<td>-</td>
											<td>1,691</td>
											<td>-</td>
											<td>-</td>
											<td>-</td>
											<td>90</td>
											<td>-</td>
											<td>132,242</td>
										</tr>
										<tr>
											<th>기 타</th>
											<td>2</td>
											<td>-</td>
											<td>-</td>
											<td>-</td>
											<td>-</td>
											<td>-</td>
											<td>2</td>
											<td>-</td>
											<td>-</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<th>계</th>
											<td>163</td>
											<td>5,525</td>
											<td>565,525</td>
											<td>4</td>
											<td>598</td>
											<td>132,242</td>
											<td>159</td>
											<td>4,937</td>
											<td>2,496,807</td>
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
							<h4 class="fl title t1 bold cb s1 bullet">소유자 및 사업시행자 의견</h4>
						</div>
						
						<div class="c_table c_table--opinion">
							<table>
								<thead>
									<tr>
										<th class="c_table__th--num">연번</th>
										<th class="c_table__th--owner_name">소유자</th>
										<th>소유자의 의견요지</th>
										<th>사업시행자 의견</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="opinionList" items="${opinionList}" varStatus="status">
									<tr>
										<td>1</td>
										<td>소유자 
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<h5 class="op_list__tit">${opinionList.ownerOpinion}</h5>
												<p class="op_list__con">${opinionList.ownerOpinion}</p>
											</div>
											<div class="op_list">
												<h5 class="op_list__tit">${opinionList.ownerOpinion}</h5>
												<p class="op_list__con">${opinionList.ownerOpinion}</p>
											</div>
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<p class="op_list__con">${opinionList.executorOpinion}</p>
											</div>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
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
								
								 <c:if test="${deliberateOpinionDTO.itemCheck}">
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
								 </c:if>
							
								
							
							
							</c:forEach>
												
							<!-- 1. 지연가산금 E -->
							
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


		<script src="../../js/jquery.3.1.0.min.js"></script>
		<script src="../../js/owl.carousel.min.js"></script>
		<script src="../../js/charts.js"></script>
		<script src="../../js/jquery-ui.min.js"></script>
		<script src="../../js/lib.js"></script>

		<script type="text/javascript">


			$(document).ready(function() {
				
			});
			
		</script>
</body>
</html>
