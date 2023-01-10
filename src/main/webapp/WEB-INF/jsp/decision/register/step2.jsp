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
									<tr>
										<td>1</td>
										<td>소유자 <br>
										<br> 주소주소주소주소노량진동313-31교회
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<h5 class="op_list__tit">수용재결 신청 각하 요청</h5>
												<p class="op_list__con">소유자의 요청에도 불구하고, 토지보상법에 규정된 30일
													이상의 협의기간을 준수하지 않았으며, 이에 대한 동작구청의</p>
											</div>
											<div class="op_list">
												<h5 class="op_list__tit">보상금 증액요구</h5>
												<p class="op_list__con">해당 재개발 사업으로 인하여 10여년 간 임대업에 대한
													소득을 얻지 못하여 손실이 발행하였고, 부동산의 실제가치 및</p>
											</div>
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<p class="op_list__con">본 건 사업시행자인 조합의 최초 조합설립인가 일자는
													2010년 06년 24일이므로 (구)도정법 제 40조 어쩌구</p>
											</div>
										</td>
									</tr>
									<tr>
										<td>2</td>
										<td>소유자 <br>
										<br> 주소주소주소주소노량진동313-31교회
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<h5 class="op_list__tit">수용재결 신청 각하 요청</h5>
												<p class="op_list__con">소유자의 요청에도 불구하고, 토지보상법에 규정된 30일
													이상의 협의기간을 준수하지 않았으며, 이에 대한 동작구청의</p>
											</div>
											<div class="op_list">
												<h5 class="op_list__tit">보상금 증액요구</h5>
												<p class="op_list__con">해당 재개발 사업으로 인하여 10여년 간 임대업에 대한
													소득을 얻지 못하여 손실이 발행하였고, 부동산의 실제가치 및</p>
											</div>
										</td>
										<td class="c_table__td--para">
											<div class="op_list">
												<p class="op_list__con">본 건 사업시행자인 조합의 최초 조합설립인가 일자는
													2010년 06년 24일이므로 (구)도정법 제 40조 어쩌구</p>
											</div>
										</td>
									</tr>
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
	        	
	         	const data = {
	         			"seqNo" : seqNo,
	         			"decisionId" : decisionId,
        				"content" : content,
        				"relatedLaws" : relatedLaws,
        				"relatedLaws2" : relatedLaws2,
        				"reviewOpinion" : reviewOpinion,
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
	        

            $(document).ready(function () {});
        </script>
    </body>
    
</html>