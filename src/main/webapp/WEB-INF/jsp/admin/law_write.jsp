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
						<h3 class="title bold cb">관련법령</h3>
					</div>
	            <div class="cs_body">
	                <%-- <form id="form" name="form" method="post" action ="<c:url value='/admin/law_write.do'/>"> --%>
	                <form id="form" name="form">
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
	                                <%-- <input type="hidden" name="id" value="${law.id}"> --%>
	                                <c:choose>
	                                <c:when test="${currentPage eq 'viewLaw' }">
		                                <td>
		                                    <strong>법령</strong>
		                                    <span><input type="text" class="input t1 middle" name="title" value="${law.title}" readonly></span>
		                                </td>
		                                <td>
		                                    <strong>조</strong>
		                                    <span><input type="text" class="input t1 middle" name="article" value="${law.article}" readonly></span>
		                                </td>
		                                <td>
		                                    <strong>항</strong>
		                                    <span><input type="text" class="input t1 middle" name="paragraph" value="${law.paragraph}" readonly></span>
		                                </td>
		                                <td>
		                                    <!-- <strong>내용</strong> -->
		                                    <span><textarea type="text" class="textarea autosize t1 middle" name="content" readonly>${law.content}</textarea></span>
		                                </td>
	                                </c:when>
	                                <c:otherwise>
		                                <td>
		                                    <strong>법령</strong>
		                                    <span><input type="text" class="input t1 middle" name="title" value="${law.title}" required></span>
		                                </td>
		                                <td>
		                                    <strong>조</strong>
		                                    <span><input type="text" class="input t1 middle" name="article" value="${law.article}" required></span>
		                                </td>
		                                <td>
		                                    <strong>항</strong>
		                                    <span><input type="text" class="input t1 middle" name="paragraph" value="${law.paragraph}" required></span>
		                                </td>
		                                <td>
		                                    <!-- <strong>내용</strong> -->
		                                    <span><textarea type="text" class="textarea autosize t1 middle" name="content">${law.content}</textarea></span>
		                                </td>
	                                
	                                </c:otherwise>
	                                
	                                </c:choose>
	                            </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                    <div class="btn_wrap">
	                        <ul>
		                        <li class="fl">
		                        	<a href="<c:url value='/admin/law.do'/>" class="btn ico t1 nohover list">목록</a>
		                        </li>
		                        <c:if test="${currentPage eq 'addLaw'}">
	                            	<li class="fr">
	                            		<button type="button" class="btn t4" onclick="addLaw(); return false;">
	                            			<i class="pluse icon white mr5"></i>
	                            			저장
	                            		</button>
	                            	</li>
	                            </c:if>
	                            <c:if test="${currentPage eq 'law'}">
	                                <li class="fr">
	                                	<button type="button" class="btn t2" onclick="deleteLaw('${law.id}')">
	                                		<i class="close icon white mr5"></i>
	                                		삭제
	                                	</button>
	                                </li>
	                            </c:if>
	                            <li class="fr">
		                        	<button type="button" class="btn t2" onclick="history.back()">
		                        		<i class="close icon white mr5"></i>
		                        		취소
		                        	</button>
		                        </li>
	                        </ul>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</div>
	
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

<script src="../js/admin/law.js"></script>

	<script>
	    $( document ).ready( function(){
	    	//getLawList(1);
	    });
	
	</script>

</body>

</html>