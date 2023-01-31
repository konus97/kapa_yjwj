<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
	<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
	
	<title>재결정보지원센터 || 관리자</title>
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
	<link rel="apple-touch-icon" href="../css/favicon_seoul.ico" />
	<link rel="stylesheet" href="../css/init.css" />
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/layout.css" />
	<link rel="stylesheet" href="../css/sub.css" />
	<link rel="stylesheet" href="../css/member.css" />
	<link rel="stylesheet" href="../css/owl.carousel.min.css" />
	<link rel="stylesheet" href="../css/jquery-ui.css" />
</head> 

<body>
	<div id="wrap">
	<!-- header start -->
	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
		<jsp:param name="login" value="login" />
	</jsp:include>
	<!-- header end -->
	<div id="contents" class="c_sub c_sub_admin">
	
	    <!-- admin submenu start -->
        <jsp:include page="includes/submenu.jsp" flush="false">
			<jsp:param name="currentPage" value="${currentPage}" />
		</jsp:include> 
		<!-- admin submenu end -->
			
		<div class="wrap">
			<div class="cs_wrap">
				<div class="cs_head">
					<h3 class="title bold cb">회원추가</h3>
				</div>
				<div class="cs_body">
					<form name="admin_user_add" class="admin_user_add" method="POST" id="admin_user_add">
						<input style="display:none" type="text" id="mode" name="mode" value="${mode}" class="input t1" />

						<div class="cs_title cs_title_adduser">
							<h4 class="fl title t1 bold cb s1 bullet">회원정보</h4>
							<select class="select t1" id="cbs_select">
								<option>시군구</option>
								<option value="temp_val_implementer">사업시행자</option>
								<option value="temp_val_appraiser">감정평가사</option>
								<option>심의위원</option>
								<option>재결관</option>
								<option>재결관리자</option>
								<option>관리자</option>
							</select>
						</div>
						<div class="form t1">
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_id">아이디</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_id" name="userId" class="input t1" placeholder="아이디를 입력하세요."
										<c:if test="${not empty adminVO.userId}">
											readonly
										</c:if>
										/>
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_password">패스워드</label>
									</div>
									<div class="ff_wrap">
										<input type="password" name="fakepasswordremembered" style="position:absolute; width:1px; height:1px; opacity:0; overflow:hidden;"/> <!-- 크롬 자동완성 방지 -->
										<input type="password" id="aua_password" name="password" class="input t1" required placeholder="패스워드를 입력하세요.">
									</div>
								</div>
							</div>
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_name">이름</label>
									</div>
									<div class="ff_wrap">
										<input type="text" name="fakepasswordrememberName" style="position:absolute; width:1px; height:1px; opacity:0; overflow:hidden;"/> <!-- 크롬 자동완성 방지 -->
										<input type="text" id="aua_name" name="userName" class="input t1" placeholder="이름을 입력하세요." />
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_org">소속</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_org" name="dept" class="input t1" placeholder="소속을 입력하세요."/>
									</div>
								</div>
							</div>
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_email">이메일</label>
									</div>
									<div class="ff_wrap ff_wrap--email">
										<input type="text" id="aua_email" name="userEmail" class="input t1" placeholder="이메일을 입력하세요."/>
										<span>&#64;</span>
										<input type="text" id="aua_domain" name="domain" class="input t1" placeholder="메일주소를 입력하세요."/>
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_call">연락처</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_call" name="mobile" class="input t1" placeholder="연락처를 입력하세요."/>
									</div>
								</div>
							</div>
							
							<!-- 사업 시행자일 때 추가되는 필드 시작 -->
							<div class="f_wrap f_wrap_implementer">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_doc_num">시행문서번호</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_doc_num" name="docNumber" class="input t1" placeholder="시행문서번호를 입력하세요."/>
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_implementer_responsibility_name">시행사 담당자명</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_implementer_responsibility_name" name="implementerResponsibilityName" class="input t1" placeholder="시행사 담당자명을 입력하세요."/>
									</div>
								</div>
							</div>
							<div class="f_wrap f_wrap_implementer">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_implementer_num">시행사 연락처</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_implementer_num" name="implementerNumber" class="input t1" placeholder="시행사 연락처를 입력하세요."/>
									</div>
								</div>
							</div>
							<!-- 사업 시행자일 때 추가되는 필드 끝 -->
							
							<!-- 감정평가사일 때 추가되는 필드 시작 -->
							<div class="f_wrap f_wrap_appraiser">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_company">평가법인</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_company" name="company" class="input t1" placeholder="평가법인을 입력하세요."/>
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_reponsibility_name">담당자명</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_reponsibility_name" name="responsibilityName" class="input t1" placeholder="담당자명을 입력하세요."/>
									</div>
								</div>
							</div>
							<div class="f_wrap f_wrap_appraiser">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_implementer_num">전화</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_implementer_num" name="phoneNumber" class="input t1" placeholder="연락처를 입력하세요."/>
									</div>
								</div>
							</div>
							<!-- 감정평가사일 때 추가되는 필드 끝 -->
							
<%-- 							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_level">권한</label>
									</div>
									<div class="ff_wrap">
										<select name="groupCode" id="au_level" class="select t1" required>
											<c:forEach var="result" items="${authList}" varStatus="status">
												<option
													value="${result.groupCode }"
													<c:if test="${result.groupCode eq adminVO.groupCode }">
														selected
													</c:if>
												>
												${result.groupName }</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div> --%>
							
						</div>
						<div class="mt30 btn_wrap">
							<ul class="full">
								<li class="fl"><a href="<c:url value='/admin/user.do'/>" class="btn ico list t1 nohover">목록</a></li>
								<li class="fr"><button type="submit" class="btn t2 ico write">등록</button></li>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<hr>
</div>
<!-- footer start -->
<jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
<jsp:param name="login" value="login" />
</jsp:include> 
<!-- footer end -->


<script src="../lib/jquery.min.js"></script>
<script src="../lib/owl.carousel.min.js"></script>
<script src="../lib/jquery-ui.min.js"></script>
<script src="../lib/lib.js"></script>

<script src="../js/admin/admin.js"></script>

<script>
	var csrfToken = $("meta[name='_csrf']").attr("content");
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	
	$(document).ready(function() {
		var url = new URL(window.location.href);
		var urlParams = url.searchParams;
		if(urlParams.get('mode')){
			document.getElementById('mode').value='moduser';
		}
		
		$('.f_wrap_implementer,.f_wrap_appraiser').hide();
		$('.cs_title_adduser select').change(function(){
			$('.f_wrap_implementer,.f_wrap_appraiser').hide();
			var optVal = $('.cs_title_adduser option:selected').val();
			if ( optVal == 'temp_val_implementer' ) {
				$('.f_wrap_implementer').show();
			} else if( optVal == 'temp_val_appraiser' ) {
				$('.f_wrap_appraiser').show();
			}
		});
		
		$('#admin_user_add').on('submit', function(e){
			let contextPath = $("#contextPath").val();
			let url = contextPath + "/api/admin/add.do";
			var userType = document.getElementById("cbs_select").selectedIndex;
			console.log(url);
			e.preventDefault();
			const data = {
				"userType" : userType,
				"id": $("input[name=userId]")[0].value,
				"pwd": $("input[name=password]")[0].value,
				"name": $("input[name=userName]")[0].value,
				"dept" : $("input[name=dept]")[0].value,
				"email" : $("input[name=userEmail]")[0].value,
				"domain" : $("input[name=domain]")[0].value,
				"mobile" : $("input[name=mobile]")[0].value,
				
				/* 사업 시행자일때 추가되는 컬럼 */
				"docNumber" : $("input[name=docNumber]")[0].value,
				"implementerResponsibilityName" : $("input[name=implementerResponsibilityName]")[0].value,
				"implementerNumber" : $("input[name=implementerNumber]")[0].value,
				
				/* 감정 평가사일때 추가되는 컬럼 */
				"company" : $("input[name=company]")[0].value,
				"responsibilityName" : $("input[name=responsibilityName]")[0].value,
				"phoneNumber" : $("input[name=phoneNumber]")[0].value,
			};
				
			$.ajax({
				url: url,
				type: "POST",
	    		contentType : "application/json; charset=UTF-8",
	    		data : JSON.stringify(data),
				async: false,
	        	beforeSend : function(xhr){
	        		xhr.setRequestHeader(csrfHeader, csrfToken);
	        	},
				success: function(data) {
					alert("회원가입이 완료되었습니다.");
					location.href=contextPath+"/admin/user.do";
				},
				error: function(xhr, status, error) {
					
						//에러!
						//alert("code:"+xhr.status);
					}
				});
		});
	});


</script>

</body>
</html>
