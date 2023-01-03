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
                        <h2 class="title bold center">
                            토지수용제도 및 보상금 안내
                        </h2>
                    </div>
                   
                    <!-- land submenu start -->
		        	<jsp:include page="../includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- land submenu end -->
					
                   
                    <div class="compensation_con content center">
                        <ul class="tab unit2">
                            <li class="on">
                                <a
                                    href="${pageContext.request.contextPath}/land/compensation.do"
                                    title="토지수용제도란 - 선택됨"
                                    ><span>토지수용제도란</span></a
                                >
                            </li>
                            <li>
                                <a
                                    href="${pageContext.request.contextPath}/land/compensation02.do"
                                    title="수용보상금안내"
                                    ><span>수용보상금안내</span></a
                                >
                            </li>
                        </ul>
                        <section class="basic">
                            <div class="dotbox_blue">
                                <b
                                    >국가나 공공기관에서는 다목적댐을 건설하고
                                    도로, 철도, 항만,산업단지를 조성하며
                                    주택건설과 교육시설을 설치하는 등 많은
                                    공익사업을 시행하고 있습니다. <br /><br />
                                    이러한 공익사업을 시행하기 위하여는 사업에
                                    쓸 토지 등이 필요하기 때문에 국가나
                                    공공단체에서는 이들 토지 등을 취득하기
                                    위하여 토지,물건 등 소유자 (이하
                                    "토지소유자"라 한다)와 먼저 매수 협의를 하고
                                    이 때에 원만한 협의가 이루어지게 되면
                                    상호간에 계약을 체결하여 필요한 토지등을
                                    매수하게 됩니다.
                                    <br /><br />
                                    그러나 협의매수가 불가능한 경우도 있으므로
                                    이를 대비하여 사유재산제를 인정하고 있는
                                    모든 민주국가에서는 공익사업 용지를 강제로
                                    취득할 수 있는 토지수용제도를 마련하고
                                    있으며 우리나라에서도 이 제도를 시행하고
                                    있습니다.</b
                                >
                            </div>

                            <div class="title-s">
                                공익사업을위한토지등의취득및보상에관한법률에
                                정해져 있는 공익사업
                            </div>
                            <div class="dotbox_blue">
                                <b
                                    >토지수용을 할 수 있는 공익사업은
                                    공익사업을위한토지등의취득및보상에관한법률(이하
                                    “토지보상법"이라 한다)에 그 종류가 자세히
                                    정하여져 있으며 여기에 해당하는 경우에도
                                    국토교통부장관이 특별히 수용을 할 수 있는
                                    사업으로 인정을 해야만 수용을 할 수가
                                    있습니다.</b
                                >
                            </div>
                            <div class="title-v-s-only-text">
                                토지보상법에 정해져 있는 공익사업 (토지보상법
                                제4조)
                            </div>
                            <dl>
                                <dt></dt>
                                <dd class="inner">
                                    1. &nbsp;국방·군사에 관한 사업
                                </dd>
                                <dd class="inner">
                                    2. &nbsp;관계 법률에 따라
                                    허가ㆍ인가ㆍ승인ㆍ지정 등을 받아 공익을
                                    목적으로 시행하는
                                    철도ㆍ도로ㆍ공항ㆍ항만ㆍ주차장ㆍ공영차고지ㆍ화물터미널ㆍ궤도(軌道)ㆍ
                                    &nbsp;&nbsp;하천ㆍ제방ㆍ댐ㆍ운하ㆍ수도ㆍ하수도ㆍ하수종말처리ㆍ폐수처리ㆍ사방(砂防)ㆍ방풍(防風)ㆍ방화(防火)ㆍ방조(防潮)ㆍ방수(防水)ㆍ저수지ㆍ용수로ㆍ<br />
                                    &nbsp;&nbsp;배수로ㆍ석유비축ㆍ송유ㆍ폐기물처리ㆍ전기ㆍ전기통신ㆍ방송ㆍ가스
                                    및 기상 관측에 관한 사업
                                </dd>
                                <dd class="inner">
                                    3. &nbsp;국가나 지방자치단체가 설치하는
                                    청사ㆍ공장ㆍ연구소ㆍ시험소ㆍ보건시설ㆍ문화시설ㆍ공원ㆍ수목원ㆍ광장ㆍ운동장ㆍ시장ㆍ묘지ㆍ화장장ㆍ도축장
                                    또는 <br />
                                    &nbsp;&nbsp;그 밖의 공공용 시설에 관한 사업
                                </dd>
                                <dd class="inner">
                                    4. &nbsp;관계 법률에 따라
                                    허가ㆍ인가ㆍ승인ㆍ지정 등을 받아 공익을
                                    목적으로 시행하는 학교ㆍ도서관ㆍ박물관 및
                                    미술관 건립에 관한 사업
                                </dd>
                                <dd class="inner">
                                    5. &nbsp;국가, 지방자치단체, 「공공기관의
                                    운영에 관한 법률」 제4조에 따른 공공기관,
                                    「지방공기업법」에 따른 지방공기업 또는
                                    국가나 지방자치단체가 지정한<br />
                                    &nbsp;&nbsp;자가 임대나 양도의 목적으로
                                    시행하는 주택 건설 또는 택지 및 산업단지
                                    조성에 관한 사업
                                </dd>
                                <dd class="inner">
                                    6. &nbsp;제1호부터 제5호까지의 사업을
                                    시행하기 위하여 필요한 통로, 교량, 전선로,
                                    재료 적치장 또는 그 밖의 부속시설에 관한
                                    사업
                                </dd>
                                <dd class="inner">
                                    7. &nbsp;제1호부터 제5호까지의 사업을
                                    시행하기 위하여 필요한 주택, 공장 등의
                                    이주단지 조성에 관한 사업
                                </dd>
                                <dd class="inner">
                                    8. &nbsp;그 밖에 별표에 규정된 법률에 따라
                                    토지등을 수용하거나 사용할 수 있는 사업
                                </dd>
                                <dd class="inner">
                                    그 밖에 별표에 규정된 법률에 따라 토지등을
                                    수용하거나 사용할 수 있는 사업(제4조제8호
                                    관련) [시행일: 2022. 6.
                                    16.]&nbsp;&nbsp;&nbsp;
                                    <a
                                        class="btn"
                                        title="공익사업을 위한 토지 등의 취득 및 보상에 관한 법률 다운로드"
                                        >다운로드</a
                                    >
                                </dd>
                            </dl>
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
