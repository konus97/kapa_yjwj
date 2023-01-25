<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%> 

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
	<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
	<title>재결정보지원센터</title>
	<meta name="description" content="재결정보지원센터">
	<meta name="keywords" content="재결정보지원센터">
	<meta name="author" content="재결정보지원센터" />
	<meta name="format-detection" content="telephone=no">
	<meta property="og:type" content="website">
	<meta property="og:title" content="재결정보지원센터">
	<meta property="og:site_name" content="재결정보지원센터">
	<meta property="og:description" content="재결정보지원센터">
		
	<meta property="og:image" content="../../css/favicon_1200x630.png">
	<meta name="twitter:description" content="재결정보지원센터">
	<meta name="twitter:image" content="../../css/favicon_270x270.png">
    <link rel="shortcut icon" href="../../css/favicon_seoul.ico" />
    <link rel="icon" href="../../css/favicon_seoul.ico" />
	<link rel="apple-touch-icon" href="../../css/favicon_seoul.ico">
	
	<link rel="stylesheet" href="../../css/init.css" />
	<link rel="stylesheet" href="../../css/common.css" />
	<link rel="stylesheet" href="../../css/layout.css" />
	<link rel="stylesheet" href="../../css/sub.css" />
	<link rel="stylesheet" href="../../css/owl.carousel.min.css" />
	<link rel="stylesheet" href="../../css/jquery-ui.css" />
	
    <style>
          .ck-editor__editable {
              min-height: 340px;
          }
    </style>
        
</head>
<body>
<div id="wrap">


	<form name="paging" method="get">
	    <input type="hidden" name="boardSeq" id="boardSeq" value="${boardSeq}">
	    <input type="hidden" name="viewSeq" id="viewSeq" value="">
	</form>

   
    <!-- header start -->
      	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
		<jsp:param name="login" value="login" />
	</jsp:include> 
	<!-- header end -->
	
	<hr>
	<div id="contents" class="c_sub">
		<div class="wrap">
			<div class="sub_title sub_title07">
				<h2 class="title bold center">게시판</h2>
			</div>
			
			<!-- board submenu start -->
        	<jsp:include page="../../board/includes/submenu.jsp" flush="false">
				<jsp:param name="currentPage" value="${currentPage}" />
			</jsp:include> 
			<!-- board submenu end -->
			
			<div class="cs_wrap">
				<div class="cs_head">
					<h3 class="title bold cb">${currentPageTitle}</h3>
				</div>
				<div class="cs_body">
					<div class="c_board">
						<div class="cb_write">
							<form id="board_write">
								<div class="form">
						
									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label for="bw_option">옵션</label>
											</div>
											<div class="ff_wrap">
												<div class="checkbox t2">
													<input type="checkbox" id="bw_option" name="bw_option" class="checkbox" style="display: none;"/>
													<label for="bw_option"><i></i><span>비밀글</span></label>
												</div>
											</div>
										</div>
									</div>
									
									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label for="bw_subject">제목<i class="cm">*</i><mark class="blind">필수입력</mark></label>
											</div>
											<div class="ff_wrap">
												<input type="text" id="boardTitle" name="boardTitle" class="input" required />
											</div>
										</div>
									</div>
									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label for="bw_contents">내용<i class="cm">*</i><mark class="blind">필수입력</mark></label>
											</div>
											<div class="ff_wrap" >
												<div id="boardContent">
												</div>
											</div>
										</div>
									</div>
									<div class="f_wrap">
										<div class="f_field">
											<div class="ff_title">
												<label for="bw_link">관련기사</label>
											</div>
											<div class="ff_wrap">
												<input type="text" id="link" name="link" class="input" />
											</div>
										</div>
									</div>		
								</div>
								<div class="btn_wrap">
									<ul class="input-wrap" style="justify-content:center;">
										<li><a href="#" class="btn" onclick="goToBoardList();return false;">취소</a></li>
										<li><button type="submit" class="btn t1">작성</button></li>
									</ul>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<hr>
	
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
	<script src="../../lib/owl.carousel.min.js"></script>
	<script src="../../lib/jquery-ui.min.js"></script>
	<script src="../../lib/lib.js"></script>
	
	<!--ckeditor5 start-->
	<script src="../../lib/ckeditor/ckeditor.js"></script>
	<!-- <script src="../../lib/ckeditor5/build/upload.js"></script> -->

	<!--board start-->
	<script src="../../js/common.js"></script>
		
	<script src="../../js/board/content.js"></script>
	<script src="../../js/board/write.js"></script>
	
	
	<script>
	
	    $(document).ready(function () {
	    	$('#board_write').on('submit', function(e){
	    		e.preventDefault();
	    		saveBoardContent();	
	    	})
	    });
	    
	
	</script>

</body>
</html>