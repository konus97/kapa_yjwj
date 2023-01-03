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
        <div id="wrap">
        
        
             <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title01">
                        <h2 class="title bold center">수용재결 절차안내</h2>
                    </div>
                   
   		         	 <!-- land submenu start -->
		        	<jsp:include page="../includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- land submenu end -->
					
                    <div class="pro_con content center">
                        <ul class="tab unit2">
                            <li>
                                <a
                               		href="${pageContext.request.contextPath}/land/procedure.do"
                                    title="이의신청절차 - 선택됨"
                                    ><span>이의신청절차</span></a
                                >
                            </li>
                            <li class="on">
                                <a
                                    href="${pageContext.request.contextPath}/land/procedure02.do"
                                    title="수용신청후절차"
                                    ><span>수용신청후절차</span></a
                                >
                            </li>
                        </ul>
                        <section class="basic">
                            <div class="subconts">
                                <div class="title-s">
                                    토지수용위원회 및 토지소재지 시·군·구가 하는
                                    일
                                </div>
                                <div class="mg-t10">
                                    <div class="mg-l20">
                                        ·&nbsp;토지수용위원회의 열람공고지시
                                    </div>
                                    <div class="mg-l27">
                                        사업시행자가 협의매수가 되지 않은
                                        토지등에 대하여 토지수용위원회에
                                        수용재결신청을 하게되면 토지수용위원회는
                                        수용신청토지 소재지의 시·군·구 에
                                        관련서류를 송부하여 열람공고 지시를 하게
                                        됩니다
                                    </div>
                                </div>
                                <div class="mg-t10">
                                    <div class="mg-l20">
                                        ·&nbsp;시·군·구의 열람공고
                                    </div>
                                    <div class="mg-l27">
                                        시·군·구 의 장은 토지수용위원회로 부터
                                        열람공고 지시를 받으면 이를 게시판에
                                        14일간 게시공고함과 아울러
                                        토지소유자에게 개별적으로 공고내용을
                                        통지하여 열람하도록 하고 있습니다
                                    </div>
                                </div>
                                <div class="mg-t10">
                                    <div class="mg-l20">·&nbsp;의견서제출</div>
                                    <div class="mg-l27">
                                        토지소유자는 열람공고기간중에 수용신청
                                        서류를 열람하고 의견서를
                                        토지수용위원회나 열람공고한 시·군·구에
                                        제출합니다. 의견서의 내용은 수용과
                                        관련된 희망이나 요구사항
                                        <br />(예를 들면 보상 가격, 잔여지
                                        수용청구, 물건의 누락, 기타
                                        권리주장등)을 기재하면 됩니다
                                        <br /><br />
                                        ※ 토지수용위원회에서는 소유자가 제출한
                                        의견내용을 토대로 감정평가 할때 참고하고
                                        법적 다툼이 있을때에는 이를 검토 심사한
                                        후에 수용재결을 하게 되므로 의견내용은
                                        가급적 구체적으로 자세히 기재하여야
                                        합니다
                                    </div>
                                </div>
                            </div>
                        </section>
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

        <script src="../lib/jquery.3.1.0.min.js"></script>
        <script src="../lib/owl.carousel.min.js"></script>
        <script src="../lib/jquery-ui.min.js"></script>
        <script src="../lib/lib.js"></script>

        <!--common start-->
		<script src="../js/common.js"></script>
		
        <script type="text/javascript">
  

            $(document).ready(function () {});
        </script>
    </body>
</html>
