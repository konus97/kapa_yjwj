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
	<div id="contents" class="c_sub">
	    <div class="wrap">
	    
			<!-- header start -->
			<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include>
			<!-- header end -->
			
	      	<!-- admin submenu start -->
	        <jsp:include page="includes/submenu.jsp" flush="false">
				<jsp:param name="currentPage" value="${currentPage}" />
			</jsp:include> 
			<!-- admin submenu end -->
			
	        <div class="cs_wrap">
	            <div class="cs_head">
	                <h3 class="title bold cb">관련 법령</h3>
	            </div>
	            <div class="cs_body">
	                <form id="form" name="form" method="post" action ="<c:url value='/admin/law_write.do'/>">
	                    <input type="hidden" id="idDelete" name="idDelete" value="">
	                    <div class="cs_title">
	                        <h4 class="fl title t1 bold cb s1 bullet">등록</h4>
	                    </div>
	                    <div class="c_table t1">
	                        <table id="table00">
	                            <caption>관련법령 목록</caption>
	                            <thead>
	                            <tr>
	                                <th class="w200">법령</th>
	                                <th class="w80">조</th>
	                                <th class="w80">항</th>
	                                <th>내용</th>
	                            </tr>
	                            </thead>
	                            <tbody>
	                            <tr>
	                                <input type="hidden" name="id" value="${law.id}">
	                                <td>
	                                    <strong>법령</strong>
	                                    <span><input type="text" class="input t1 middle" name="name" value="${law.name}" required></span>
	                                </td>
	                                <td>
	                                    <strong>조</strong>
	                                    <span><input type="text" class="input t1 middle" name="jo" value="${law.jo}" required></span>
	                                </td>
	                                <td>
	                                    <strong>항</strong>
	                                    <span><input type="text" class="input t1 middle" name="hang" value="${law.hang}" required></span>
	                                </td>
	                                <td>
	                                    <strong>내용</strong>
	                                    <span><textarea type="text" class="textarea autosize t1 middle" name="text">${law.text}</textarea></span>
	                                </td>
	                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="btn_wrap">
	                        <li class="fl"><a href="<c:url value='/admin/law.do'/>" class="btn ico list">목록</a></li>
	                        <ul class="fr">
	<%--                            <li><button type="button" class="btn t2 ico delete" onclick="history.back()">취소</button></li>--%>
	                                <li><button type="button" class="btn t2 ico delete" onclick="deleteLaw('${law.id}')">삭제</button></li>
	                            <%-- <c:if test="${not empty law.id}">
	                                <li><button type="button" class="btn t2 ico delete" onclick="deleteLaw('${law.id}')">삭제</button></li>
	                            </c:if> --%>
	                            <li><button type="submit" class="btn t1 ico plus">저장</button></li>
	                        </ul>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	<script>
	    $( document ).ready( function(){
	    });
	
	</script>
</body>

</html>