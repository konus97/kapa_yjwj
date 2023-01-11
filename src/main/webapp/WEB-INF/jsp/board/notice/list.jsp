<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

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
	<meta property="og:image" content="../css/favicon_1200x630.png">
	<meta name="twitter:description" content="재결정보지원센터">
	<meta name="twitter:image" content="../css/favicon_270x270.png">
    <link rel="shortcut icon" href="../css/favicon_seoul.ico" />
    <link rel="icon" href="../css/favicon_seoul.ico" />
	<link rel="apple-touch-icon" href="../css/favicon_seoul.ico">

	<link rel="stylesheet" href="../css/init.css" />
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/layout.css" />
	<link rel="stylesheet" href="../css/sub.css" />
	<link rel="stylesheet" href="../css/owl.carousel.min.css" />
	<link rel="stylesheet" href="../css/jquery-ui.css" />
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
				<h2 class="title bold center">공지사항</h2>
			</div>
			
      		<!-- board submenu start -->
        	<jsp:include page="../../board/includes/submenu.jsp" flush="false">
				<jsp:param name="currentPage" value="${currentPage}" />
			</jsp:include> 
			<!-- board submenu end -->
			
			<div class="cs_wrap">
				<div class="cs_head">
					<h3 class="title bold cb">공지사항</h3>
				</div>
				<div class="cs_body">
					<div class="c_board">
						<div class="cb_total">
							<span id="allCount">전체 게시물 : <mark>0</marK></span>
						</div>
						<div class="cb_list">
							<div class="cbl_head">
								<div class="cbl_wrap">
									<div class="cbl_no">번호</div>
									<div class="cbl_subject">제목</div>
									<div class="cbl_name">작성자</div>
									<div class="cbl_date">날짜</div>
									<div class="cbl_hit">조회</div>
								</div>
							</div>
							<div class="cbl_body">
								<ul id="contentList">
									
								</ul>
							</div>
						</div>
						<div class="btn_wrap">
							<a href="${pageContext.request.contextPath}/board/notice/write.do" class="fr btn t1">글쓰기</a>
						</div>
						<div class="paging">
							<div class="p_wrap" id="pageList">
								
							</div>
						</div>
						
						<div class="cb_search">
							<div class="cbs_wrap">
							<form id="cb_search">
								<fieldset>
									<legend>검색폼</legend>
									<select id="cbs_select" name="cbs_select" class="select">
										<option value="제목">제목</option>
										<option value="내용">내용</option>
									</select>
									<input type="text" id="cbs_input" name="cbs_input" class="input input40" placeholder="검색어를 입력하세요.">
									<button class="btn" type="button" onclick="getSearchBoardContentList();return false;">검색</button>
								</fieldset>
							</form>
							</div>
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
		
	<script src="../lib/jquery.min.js"></script>
	<script src="../lib/owl.carousel.min.js"></script>
	<script src="../lib/jquery-ui.min.js"></script>
	<script src="../lib/lib.js"></script>
	
	<!--common start-->
	<script src="../js/common.js"></script>
	
	<script src="../js/board/list/block.js"></script>
	<script src="../js/board/list/list.js"></script>
	
	<script>

        $(document).ready(function () {

            //board content list
            getBoardContentList(1);
            

            
            //enter-event start
          /*   $('#searchInput').keydown(function(event){
                let keyCode = (event.keyCode ? event.keyCode : event.which);

                if (keyCode == 13) {
                    submitBLogList();
                }

            });


            $('#sButton').click(function(){
                submitBLogList();
            });

            $('#selectRow').change(function(){
                submitBLogList();
            });
 */

        });

    </script>
	

</body>
</html>