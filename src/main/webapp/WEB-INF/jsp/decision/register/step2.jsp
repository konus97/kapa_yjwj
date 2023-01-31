<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%> 

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
        <meta property="og:image" content="../../css/favicon_1200x630.png" />
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
        <div id="wrap">
        
           	<input type="hidden" name="decisionId" id="decisionId" value="${decisionId}">
	        <input type="hidden" name="seqNo" id="seqNo" value="${seqNo}">

            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title05">
                        <h2 class="title bold center">심의안건 정보 등록</h2>
                    </div>
                    
                    <!-- decision submenu start -->
		        	<jsp:include page="../../decision/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- decision submenu end -->
					
                    
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">심의안건 등록</h3>
                        </div>
					<div class="cs_body">
					<div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	사업개요</h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업명</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.judgBizNm}</p>
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
                                              <p>${avo.recmReqStartDate} ~ ${avo.recmReqEndDate}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업시행자</label>
                                            </div>
                                            <div class="ff_wrap">
                                                    <p>${avo.bizOprtNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">                           
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>협회설립</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>${groupEstablishedDate}</p>
                                            </div>
                                        </div>
                                    </div>
                                 
                                     <div class="f_wrap">
	                                        <div class="f_field">
	                                            <div class="ff_title">
	                                                <label class="lineOver"
	                                                    >도시계획<br />
	                                                    [사업인정]관계</label
	                                                >
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
	                                                    <c:forEach var="cityPlan" items="${cityPlans}" varStatus="status">
	                                                        <tr class="relationItem" id="relationInfo0">
	                                                            <td>${cityPlan.planTitle}</td>
	                                                            <td>${cityPlan.planContent}</td>
	                                                        </tr>
	                                                    </c:forEach>
	                                                    </tbody>
	                                                </table>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    
                                </div>
                              
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	재결신청 내역
                                    </h4>
                                </div>
                                <div class="c_table t3 land">
                                    <p class="s_title">- 총물량조서</p>
                                   <table class="reg_table">
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
                                                <label class="lineOver">협의내역 횟수,<br />다수 협의 날짜</label>
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
                                                     <c:forEach var="consultationDate" items="${consultationDates}" varStatus="status">
                                                        <tr class="dateItem" id="dateInfo3">
                                                            <td>${consultationDate.consultationDate}</td>
                                                            <td>${consultationDate.consultationDateText}</td>
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
                                                <label>재결 신청일</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.recvDt}</p>
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
	                                                         <th rowspan="2">소재지<br />(소유자)</th>
	                                                         <th rowspan="2">지번</th>
	                                                         <th rowspan="2">지목</th>
	                                                         <th colspan="2">면적(m<sup>2</sup>)</th>
	                                                         <th rowspan="2">비고</th>
	                                                     </tr>
	                                                     <tr>
	                                                         <th>편입 전<br />면적</th>
	                                                         <th>편입<br />면적</th>
	                                                     </tr>
	                                                 </thead>
	                                                 <tbody id="targetList">
	                                                 <c:forEach var="targets" items="${targets}" varStatus="status">
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
                                 
                                </div>
               
               
                  
	                                    
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	재결심리 준비
                                    </h4>
                                </div>
                                <div class="form t3">
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>열람공고</label>
                                            </div>
                                            <div class="ff_wrap">
                                              	<p>${decisionNotice.docNumber}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>토지 등 소유자 의견</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>이종언</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>감정평가</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>평가의견서</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업시행자 평가기관</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>통일감정평가법인</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>우리위원회 평가기관</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>통일감정평가법인</p>
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
										<th class="c_table__th--owner_name">소유자</th>
										<th>소유자의 의견요지</th>
										<th>사업시행자 의견</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${ownrNm} 
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<h5 class="op_list__tit">${ownerOpinion}</h5>
											</div><%-- 
											<div class="op_list">
												<h5 class="op_list__tit">${ownerOpinion}</h5>
											</div> --%>
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<p class="op_list__con">${executorOpinion}</p>
											</div>
										</td>
									</tr>
									<tr>
										<th class="info_reg_th" >소재지</th>
										<td colspan="2"><p class="">${opinionTitle}</p></td>
									</tr>
									<tr>
										<th class="info_reg_th">이전비 평가사유</th>
										<td colspan="2"><p class="">${opinionContent}</p></td>
									</tr>
									<tr>
										<th class="info_reg_th" colspan="3">관련자료</th>
									</tr>
									<c:forEach var="opinionFileList" items="${opinionFileList}" varStatus="status">
									<c:choose>
									<c:when test="${opinionFileList.fileNameExtension eq 'PNG'}">
									<tr>
										<td class=""  colspan="3">
											<img
											src="${opinionFileList.fileFolder}${opinionFileList.fileNameChange}"
											alt="">
										</td>
									</tr>
									</c:when>
									<c:when test="${opinionFileList.fileNameExtension eq 'png'}">
									<tr>
										<td class=""  colspan="2">
											<img
											src="${opinionFileList.fileFolder}${opinionFileList.fileNameChange}"
											alt="">
										</td>
									</tr>
									</c:when>
									</c:choose>
									<c:choose>
									<c:when test="${opinionFileList.fileNameExtension eq 'pdf'}">
									<tr>
									<td colspan="3">
									<div class="file_flex"> 
								<input class="file_view" value="${opinionFileList.fileDescription}" readonly disabled />	
                         				<input class="file_view" value="${opinionFileList.fileNameChange}" readonly disabled />
                         				<button type="button" class="btn small02 t1 nohover downloadButton" id="${opinionFileList.fileSeq}">
                             			<i class="icon-block download"></i>
                         			</button>
                         			</div>	
                         			</td>
                         			</tr>								
									</c:when>
									<c:when test="${opinionFileList.fileNameExtension eq 'PDF'}">
									<tr>
									<td colspan="3">
									<div class="file_flex"> 
										<input class="file_view" value="${opinionFileList.fileDescription}" readonly disabled />	
                         				<input class="file_view" value="${opinionFileList.fileNameChange}" readonly disabled />
                         				<button type="button" class="btn small02 t1 nohover downloadButton" id="${opinionFileList.fileSeq}">
                             			<i class="icon-block download"></i>
                         			</button>
                         			</div>		
                         			</td>
                         			</tr>							
									</c:when>
									</c:choose>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">${getType}.
								${getTypeStr}</h4>
						</div>
						<div class="form">
							<div class="ff_wrap" id="boardContent"></div>
						</div>
						<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">관련 법령</h4>
						</div>
						<div class="form">
							<a href="#" class="cx"
								onclick="openPopupLaw();return false;">법령 찾아보기  <i
								class="icon search"></i>
							</a>

							<div id="contents" class="c_sub">
								<div class="c_table t1">
									<table>
										<caption>법령</caption>
										<thead>
											<tr>
												<th>법령</th>
												<th>조</th>
												<th>항</th>
												<th>내용</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody id="selectLawList">
		
										</tbody>
									</table>
								</div>
							</div>
							<!--  -->
						
							<div class="f_wrap">
								<textarea id="relatedLaws" class="textarea mt20"></textarea>
							</div>
							

						</div>
						<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">관련 법령 판례</h4>
						</div>
						<div class="form">
							<div class="f_wrap">
								<textarea id="relatedLaws2" class="textarea mt20"></textarea>
							</div>
						</div>
						<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">검토의견</h4>
						</div>
						<div class="form">
							<div class="f_wrap">
								<textarea id="reviewOpinion" class="textarea mt20"></textarea>
							</div>
						</div>
						<!-- 24. 소유자 의견 없음 E -->
						<div class="mt40 btn_wrap">
							<ul class="btns">
								<li><a href="#" class="btn h50 big"
									onclick="saveStep2();return false;">다음</a></li>
								<li><a href="#" class="btn h50 big"
									onclick="goToDecisionRegisterList();return false;">취소</a></li>
								<li>
									<button class="btn t4 h50 big">임시저장</button>
								</li>
							</ul>
						</div>

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

		<script src="../../lib/jquery.min.js"></script>
        <script src="../../lib/jquery.3.1.0.min.js"></script>
        <script src="../../lib/owl.carousel.min.js"></script>
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>
		<script src="../../lib/ckeditor/ckeditor.js"></script>
		<!--ckeditor5 start-->
		<!-- <script src="../../lib/ckeditor5/build/ckeditor.js"></script> -->
	
	
     	<!--common start-->
        <script src="../../js/common.js"></script>

        <script src="../../js/decision/content.js"></script>
            <!-- 팝업, 법령 검색 S -->
            <%@ include file="popup/law.jsp"%> 
            <!-- 팝업, 법령 검색 E -->

        <script type="text/javascript">

	/*         let editor;
	
	        ClassicEditor
	        	.create( document.querySelector( '#boardContent' ), {
	        		extraPlugins: [ MyCustomUploadAdapterPlugin ],
	        		toolbar: {
	        			items: [
	        				'heading',
	        				'|',
	        				'bold',
	        				'italic',
	        				'fontSize',
	        				'fontColor',
	        				'highlight',
	        				'link',
	        				'bulletedList',
	        				'numberedList',
	        				'|',
	        				'outdent',
	        				'indent',
	        				'|',
	        				'imageUpload',
	        				'insertTable',
	        				'mediaEmbed',
	        				'undo',
	        				'redo'
	        			]
	        		},
	        		language: 'ko',
	        		image: {
	        			toolbar: [
	        				'imageTextAlternative',
	        				'imageStyle:full',
	        				'imageStyle:side'
	        			]
	        		},
	        		table: {
	        			contentToolbar: [
	        				'tableColumn',
	        				'tableRow',
	        				'mergeTableCells'
	        			]
	        		},
	        		licenseKey: '',
	        	} )
	        	.then( newEditor => {
	        		editor = newEditor;
	        	} )
	        	.catch( error => {
	        		console.error( 'Oops, something went wrong!' );
	        		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
	        		console.warn( 'Build id: 95xpmoz2za9p-z7ulnbnv6nkk' );
	        		console.error( error );
	        	} ); */
	        	$(function () {
	                CKEDITOR.replace('boardContent');
	            });
	        	$(function () {
	                CKEDITOR.replace('relatedLaws');
	            });
	        	$(function () {
	                CKEDITOR.replace('relatedLaws2');
	            });
	        	
	        	$(function () {
	                CKEDITOR.replace('reviewOpinion');
	            });
        
	        

	        function saveStep2(){

	        	let csrfToken = $("meta[name='_csrf']").attr("content");
        		let csrfHeader = $("meta[name='_csrf_header']").attr("content");
        		
	        	let contextPath = $("#contextPath").val();
	        	let url = contextPath+"/api/decision/register/step2";

	        	let seqNo = $('#seqNo').val();
	        	let decisionId = $('#decisionId').val();
	        	
	        	let content = CKEDITOR.instances.boardContent.getData(); 
	        	let relatedLaws = CKEDITOR.instances.relatedLaws.getData();
	        	let relatedLaws2 = CKEDITOR.instances.relatedLaws2.getData();
	        	let reviewOpinion = CKEDITOR.instances.reviewOpinion.getData();
	     	
	           	if (content == null || content == "") {
	        		alert("내용을 입력해주세요");
	        		return false;
	        	}
	           	
	        	if (relatedLaws == null || relatedLaws == "") {
	        		alert("관련 법령을 입력해주세요");
	        		return false;
	        	}
	        	if (relatedLaws2 == null || relatedLaws2 == "") {
	        		alert("관련 법령 판례을 입력해주세요");
	        		return false;
	        	}
	        	
	        	if (reviewOpinion == null || reviewOpinion == "") {
	        		alert("검토의견을 입력해주세요");
	        		return false;
	        	}

	        	/* let list = $("input[name='lawSeqNo']");
	        	let relatedLawsCB = [];

	        	for (var i=0; i<list.length; i++){
	        		relatedLawsCB.push(list[i].value);
	        		console.log (relatedLawsCB);
	        	}  임시제거*/
	        	
	         	const data = {
	         			"seqNo" : seqNo,
	         			"decisionId" : decisionId,
        				"content" : content,
        				"relatedLaws" : relatedLaws,
        				"relatedLaws2" : relatedLaws2,
        				"reviewOpinion" : reviewOpinion,
        				/* "relatedLawsCB" : relatedLawsCB, */
		    		}

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
        			
        				let msg = data.msg;
        				console.log(msg);
        				
        				if(msg=="move"){
        					goToDecisionRegisterStep2(decisionId);
        				}else{    					
        					goToDecisionRegisterList();       				
        				}
           				
        			},
        			error : function(xhr, status, error) {
        				//에러!
        				//alert("code:"+xhr.status);
        			}
        		});

	        }
	        

            $(document).ready(function () {
            	
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