<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
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
	
	
	<title>재결정보지원센터 || 관리자</title>
	<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
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
						<h3 class="title bold cb">회원관리</h3>
					</div>
					<div class="cs_body">
						<div class="cs_search">
							<form id="admin_user" name="admin_user"
								action="<c:url value='/admin/user.do'/>">
								<input type="hidden" id="pageNo" name="pageNo"
									value="${adminVO.pageIndex}" />
								<div class="form t1">
									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label for="au_name">이름</label>
											</div>
											<div class="ff_wrap">
												<span class="ff_group ff_group--name"> 
													<input type="text" id="au_name" name="userName" class="input t1" placeholder="이름을 입력하세요."
													 required />
												</span> <span class="ff_group">
													<button type="button" id="au_submit" name="au_submit"
														class="btn t2 small ico search" onclick="getUserList(1)">검색</button>
												</span>
											</div>
										</div>
									</div>
									<div class="f_wrap">
										<div class="f_field div3">
											<div class="ff_title">
												<label for="au_org">소속</label>
											</div>
											<div class="ff_wrap">
												<input type="text" id="au_dept" name="dept" class="input t1" placeholder="소속을 입력하세요."/>
											</div>
										</div>
										<div class="f_field div3">
											<div class="ff_title">
												<label for="au_email">이메일</label>
											</div>
											<div class="ff_wrap">
												<input type="text" id="au_email" name="userEmail" class="input t1" placeholder="이메일을 입력하세요."/>
											</div>
										</div>
										<div class="f_field div3">
											<div class="ff_title">
												<label for="au_level">권한구분</label>
											</div>
											<div class="ff_wrap">
												<select name="groupCode" id="au_level" class="select t1" required>
													<option value=1>관리자</option>
													<option value=2>회원</option>
													<c:forEach var="result" items="${authList}"
														varStatus="status">
														<option value="${result.groupCode }"
															<c:if
                                                            test="${result.groupCode eq adminVO.groupCode }">
                                                            selected
                                                            </c:if>>
															${result.groupName }</option>
													</c:forEach>
												</select>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="cs_title">
							<%-- <h4 class="fl title t1 bold cb s1 bullet">회원
								(${allCount}명)</h4> --%>
							<!-- <div class="cs_option">
    <button type="button" class="btn t2 small ico download" onclick="excelDownload();">리스트 다운로드</button>
</div> -->
						</div>
						<div class="c_table">
							<table>
								<caption>회원 목록</caption>
								<thead>
									<tr>
										<th>순번</th>
										<th>아이디</th>
										<th>이름</th>
										<th>소속</th>
										<th>이메일</th>
										<th>연락처</th>
										<th>권한</th>
										<th>옵션</th>
									</tr>
								</thead>
								<tbody id="userList">
									
								</tbody>
							</table>
						</div>
						<div class="btn_wrap">
							<a href="${pageContext.request.contextPath}/admin/user_add.do"
								class="fr btn t2 ico plus">회원추가</a>
						</div>
						

						<div class="paging">
							<div class="p_wrap" id="pageList">
								
							</div>
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
        
	<script src="../lib/jquery.min.js"></script>
	<script src="../lib/owl.carousel.min.js"></script>
	<script src="../lib/jquery-ui.min.js"></script>
	<script src="../lib/lib.js"></script>
	
	<script src="../js/admin/admin.js"></script>
	<script>

		$(document).ready(function () {
			getUserList(1);
		});
		
		

    </script>
</body>

</html>