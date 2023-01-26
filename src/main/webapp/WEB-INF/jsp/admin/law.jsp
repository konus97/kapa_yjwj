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
		
	        <div class="cs_hero">
	            <h2>통합 관리</h2>
	        </div>
	        
	        <div class="cs_wrap">
	            <div class="cs_head">
	                <h3 class="title bold cb">관련 법령</h3>
	            </div>
	            <form id="form">
	                <input type="hidden" id="pageNo" name="pageNo" value="${adminVO.pageIndex}"/>
	            </form>
	            <div class="cs_body">
	                <div class="cs_title">
	                    <h4 class="fl title t1 bold cb s1 bullet">참고 자료</h4>
	                    <!-- <div class="cs_option w100p">
	                        <div class="cso_btnwrap">
	                            <button type="button" class="btn t2 small" onclick="selectExcelFile()">엑셀로 업로드</button>
	                            <button type="button" class="btn t2 small" onclick="downloadExcelTemplate()">엑셀 템플릿 다운로드</button>
	                        </div>
	                    </div> -->
	                </div>
	                <div class="c_table t1">
	                    <table id="table00">
	                        <caption>관련법령 목록</caption>
	                        <thead>
	                        <tr>
	                            <th class="w50">연번</th>
	                            <th class="w150">법령</th>
	                            <th class="w50">조</th>
	                            <th class="w50">항</th>
	                            <th>내용</th>
	                        </tr>
	                        </thead>
							<tbody id="lawList">
	                        	
	                        
	                        
	                        
	                        
	                        
	                        <c:forEach var="result" items="${resultList}" varStatus="status">
	                            <tr>
	                                <th>
	                                    <strong>${result.row_num}</strong>
	                                </th>
	                                <td>
	                                    <strong>법령</strong>
	                                    <span>${result.name}</span>
	                                </td>
	                                <td>
	                                    <strong>조</strong>
	                                    <span>${result.jo}</span>
	                                </td>
	                                <td>
	                                    <strong>항</strong>
	                                    <span>${result.hang}</span>
	                                </td>
	                                <td>
	                                    <strong>내용</strong>
	                                    <span><a href="/admin/law_write.do?id=${result.id}">${result.text}</a></span>
	                                </td>
	                            </tr>
	                        </c:forEach>
	                        </tbody>
	                    </table>
	                </div>
	                
					<div class="paging">
						<div class="p_wrap" id="pageList">
							
						</div>
					</div>
	                <div class="btn_wrap">
	                    <a href="${pageContext.request.contextPath}/admin/addLaw.do" class="fr btn t1 ico plus">등록</a>
	                </div>
	            </div>
	        </div>
	    </div>
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

<script src="../js/admin/law.js"></script>
	
	<script>
	    $( document ).ready( function(){
	    	getLawList(1);
	    });
	</script>
</body>

</html>
