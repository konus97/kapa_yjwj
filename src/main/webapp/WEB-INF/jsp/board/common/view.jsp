<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

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
       	<meta name="twitter:image" content="../../css/favicon_270x270.png">
		<link rel="shortcut icon" href="../../css/favicon_seoul.ico">
		<link rel="icon" href="../../css/favicon_seoul.ico">

		<link rel="apple-touch-icon" href="../../css/favicon_seoul.ico" />
		
		<link rel="stylesheet" href="../../css/init.css" />
		<link rel="stylesheet" href="../../css/common.css" />
		<link rel="stylesheet" href="../../css/layout.css" />
		<link rel="stylesheet" href="../../css/sub.css" />
		<link rel="stylesheet" href="../../css/owl.carousel.min.css" />
		<link rel="stylesheet" href="../../css/jquery-ui.css" />
    </head>
    <body>


		<form name="paging" method="get">
		    <input type="hidden" name="boardSeq" id="boardSeq" value="${boardSeq}">
		    <input type="hidden" name="viewSeq" id="viewSeq" value="${viewSeq}">
		</form>
	
        <div id="wrap">
                     <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->
            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title07">
                        <h2 class="title bold center">${currentPageTitle}</h2>
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
                                <div class="cb_view">
                                    <div class="cbv_head">
                                        <ul>
                                            <li>
                                                <strong class="cbvh_title">제목</strong>
                                                <h3 class="cbvh_txt">
					                                 ${bvo.title }
                                                </h3>
                                                <ul class="cbvh_info">
                                                    <li class="cbvhi_name">
                                                        <strong class="cbvh_mobile">작성자</strong>
                                                        <span>감정평가추천센터</span>
                                                    </li>
                                                    <li class="cbvhi_date">
                                                        <strong class="cbvh_mobile">등록일</strong >
                                                        <span>${bvo.regdateStr}</span>
                                                    </li>
                                                </ul>
                                            </li>
                                            <!-- <li>
                                                <strong class="cbvh_title" >관련기사</strong   >
                                                <span class="cbvh_txt" >
                                                	<a
                                                        href="http://www.ikld.kr/news/articleView.html?idxno=208081"
                                                        target="_blank">
                                                        <span class="cbvh_mobile" >기사원문보기</span>
                                                        <span class="cbvh_pc">
                                                        http://www.ikld.kr/news/articleView.html?idxno=208081
                                                        </span>
                                                     </a>
                                                </span>
                                            </li>
                                            <li>
                                                <strong class="cbvh_title" >첨부파일</strong >
                                                <span class="cbvh_txt" >
                                                	<a href="#"><span>파일명.jpg (200kb)</span>
                                                	</a>
                                                </span >
                                            </li> -->
                                        </ul>
                                    </div>
                                    <div class="cbv_body" id="content">
                                       ${bvo.content}
                                    </div>
                                    <!-- 답글 있을 때 S -->
                                    
                                    <!-- 답글 있을 때 E -->
                                </div>
                                <div class="btn_wrap">
                                    <ul class="fl div3 input-wrap">
                                        <li>
                                            <a href="#" class="btn t1"onclick="goToBoardList();return false;" >확인</a>
                                        </li>
<!--                                         <li> -->
<!--                                             <a href="#" class="btn">답글</a> -->
<!--                                         </li> -->
                                    </ul>
                                    <ul class="fr div3 input-wrap">
                                        <li>
                                            <a href="#" class="btn" onclick="deleteBoardContent();return false;">삭제</a>
                                        </li>
                                        <li>
                                            <a href="#" class="btn" onclick="goToBoardEdit();return false;" >수정</a>
                                        </li>
                                        <li>
                                            <a href="#" class="btn t1" onclick="goToBoardWrite();return false;">글쓰기</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="mt50 cb_total">
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
                                
                                
              
						
                                <div class="paging">
                             
                                    <div class="p_wrap" id="pageList">
                                        
                                    </div>
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
		
		<!--common start-->
		<script src="../../js/common.js"></script>
	
		<!--board start-->
		<script src="../../js/board/content.js"></script>
	
		<script src="../../js/board/list/block.js"></script>
		<script src="../../js/board/list/list.js"></script>
		
		<script>
	
	        $(document).ready(function () {
	
	        	//board content list
	            getBoardContentList(1);
	
	
	        });
	
	    </script>
		
	
    </body>
</html>
