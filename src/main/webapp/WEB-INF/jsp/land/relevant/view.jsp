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
        <meta name="twitter:image" content="../css/favicon_270x270.png" />
        <link rel="shortcut icon" href="../css/favicon_seoul.ico" />
        <link rel="icon" href="../css/favicon_seoul.ico" />

        <link rel="apple-touch-icon" href="../css/favicon_seoul.ico" />
        <link rel="stylesheet" href="../css/init.css" />
        <link rel="stylesheet" href="../css/common.css" />
        <link rel="stylesheet" href="../css/layout.css" />
        <link rel="stylesheet" href="../css/sub.css" />
        <link rel="stylesheet" href="../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../css/jquery-ui.css" />
        
    </head>
    <body>
    
        
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title01">
                        <h2 class="title bold center">관련 법령</h2>
                    </div>
                    
            		<!-- land submenu start -->
		        	<jsp:include page="../includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- land submenu end -->
                    

                    <div class="content center">
                        <div class="func-top">
                            <div class="box-tip">
                                <span class="box-tip-label">TIP</span>
                                <ul class="box-tip-list">
                                    <li>
                                        - 법령명 또는 담당부서로 검색할 수
                                        있습니다. 검색어를 입력하고 검색버튼을
                                        눌러주세요.
                                    </li>
                                    <li>
                                        <em
                                            >- 찾고자 하는 법령명이
                                            "측량·수로조사 및 지적에관한
                                            법률"일경우, 올바른 검색어는 "측량"
                                            또는 "지적".
                                        </em>
                                    </li>
                                    <li>
                                        <em
                                            >- 찾고자 하는 부서명이
                                            "국토교통부"일경우, 올바른 검색어는
                                            "국토교통부" 또는 "국토".</em
                                        >
                                    </li>
                                </ul>
                            </div>
                            <form class="box-search" name="search">
                                <div class="mg-t15">
                                    <div class="box-search-line i1">
                                        <input
                                            type="search"
                                            class="basic wd100"
                                            id="searchContent"
                                            name="searchContent"
                                            value=""
                                            maxlength="40"
                                            title="검색어"
                                        />
                                    </div>
                                    <div class="txt-r">
                                        <input
                                            id="search"
                                            type="button"
                                            value="검색"
                                            class="btn"
                                        />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                        <!-- <div id="divTotalPage">
                            검색결과 :
                            <span style="font-weight: bold; color: #d03400"
                                >52항목 (1/4)</span
                            >&nbsp;페이지
                        </div> -->
                        <!-- <table class="basic alt" title="관련법령"> -->
                        
                        
	        			<div class="cs_wrap">
		            		<div class="cs_body">
		            		
	                			<div class="c_table t1">
		                        <table title="관련법령" id="table00">
		                            <thead>
		                                <tr>
		                                    <th scope="col">번호</th>
		                                    <th scope="col">법령명</th>
		                                    <th scope="col">조</th>
		                                    <th scope="col">항</th>
		                                    <th scope="col">내용</th>
		                                </tr>
		                            </thead>
									<tbody id="lawList">
		                            </tbody>
		                        </table>
		                        <div class="paging">
									<div class="p_wrap" id="pageList">
										
									</div>
								</div>
								
								
								
		            		</div>
	            		</div>
                </div>
            </div>
            <hr />
        </div>
            
			<!-- footer start -->
            <jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
            <!-- footer end -->
            
        

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
        <script src="../lib/jquery.3.1.0.min.js"></script>
        <script src="../lib/owl.carousel.min.js"></script>
        <script src="../lib/jquery-ui.min.js"></script>
        <script src="../lib/lib.js"></script>
        
        <!--common start-->
		<script src="../js/common.js"></script>
		
		<script src="../js/admin/law.js"></script>
	
	<script>
	    $( document ).ready( function(){
	    	getLawList(1);
	    });
	</script>

    </body>
</html>
