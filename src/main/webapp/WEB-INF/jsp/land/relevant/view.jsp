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
                        <div id="divTotalPage">
                            검색결과 :
                            <span style="font-weight: bold; color: #d03400"
                                >52항목 (1/4)</span
                            >&nbsp;페이지
                        </div>
                        <table class="basic alt" title="관련법령">
                            <caption class="hideCaption">
                                관련법령 - 번호, 법령명, 담당부서, 수용근거
                                항목으로 구성
                            </caption>
                            <colgroup>
                                <col style="width: 8%" />
                                <col style="width: 52%" />
                                <col style="width: 20%" />
                                <col style="width: 20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">법령명</th>
                                    <th scope="col">담당부서</th>
                                    <th scope="col">수용근거</th>
                                </tr>
                            </thead>
                            <tbody id="divListBodyPc">
                                <tr>
                                    <td align="center" width="60px">1</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("9411")'
                                            onclick="this.href"
                                            title='"경제자유구역의 지정 및 운영에 관한 특별법" 새창'
                                            >&nbsp;경제자유구역의 지정 및 운영에
                                            관한 특별법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        산업통상자원부
                                    </td>
                                    <td align="center">법 제9조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">2</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("240")'
                                            onclick="this.href"
                                            title='"골재채취법" 새창'
                                            >&nbsp;골재채취법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        국토교통부
                                    </td>
                                    <td align="center">법 제36조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">3</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("10372")'
                                            onclick="this.href"
                                            title='"공공기관 지방이전에 따른 혁신도시 건설 및 지원에 관한 특별법" 새창'
                                            >&nbsp;공공기관 지방이전에 따른
                                            혁신도시 건설 및 지원에 관한
                                            특별법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        건설교통부
                                    </td>
                                    <td align="center">법 제15조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">4</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("1744")'
                                            onclick="this.href"
                                            title='"관광진흥법" 새창'
                                            >&nbsp;관광진흥법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        문화체육관광부
                                    </td>
                                    <td align="center">법 제61조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">5</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("1865")'
                                            onclick="this.href"
                                            title='"광업법" 새창'
                                            >&nbsp;광업법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        산업통상자원부
                                    </td>
                                    <td align="center">법 제70조, 제71조</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">6</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("934")'
                                            onclick="this.href"
                                            title='"국방ㆍ군사시설 사업에 관한 법률" 새창'
                                            >&nbsp;국방ㆍ군사시설 사업에 관한
                                            법률</a
                                        >
                                    </td>
                                    <td align="center" width="100px">국방부</td>
                                    <td align="center">법 제6조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">7</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("9294")'
                                            onclick="this.href"
                                            title='"국토의 계획 및 이용에 관한 법률" 새창'
                                            >&nbsp;국토의 계획 및 이용에 관한
                                            법률</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        국토교통부
                                    </td>
                                    <td align="center">법 제95조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">8</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("9281")'
                                            onclick="this.href"
                                            title='"금강수계 물관리 및 주민지원 등에 관한 법률" 새창'
                                            >&nbsp;금강수계 물관리 및 주민지원
                                            등에 관한 법률</a
                                        >
                                    </td>
                                    <td align="center" width="100px">환경부</td>
                                    <td align="center">법 제25조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">9</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("9848")'
                                            onclick="this.href"
                                            title='"기업도시개발 특별법" 새창'
                                            >&nbsp;기업도시개발 특별법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        국토교통부
                                    </td>
                                    <td align="center">법 제14조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">10</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("9282")'
                                            onclick="this.href"
                                            title='"낙동강수계 물관리 및 주민지원 등에 관한 법률" 새창'
                                            >&nbsp;낙동강수계 물관리 및 주민지원
                                            등에 관한 법률</a
                                        >
                                    </td>
                                    <td align="center" width="100px">환경부</td>
                                    <td align="center">법 제27조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">11</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("996")'
                                            onclick="this.href"
                                            title='"농어촌도로 정비법" 새창'
                                            >&nbsp;농어촌도로 정비법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        안전행정부
                                    </td>
                                    <td align="center">법 제13조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">12</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("478")'
                                            onclick="this.href"
                                            title='"농어촌정비법" 새창'
                                            >&nbsp;농어촌정비법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        농림축산식품부
                                    </td>
                                    <td align="center">법 제110조제2항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">13</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("1981")'
                                            onclick="this.href"
                                            title='"댐건설 및 주변지역지원 등에 관한 법률" 새창'
                                            >&nbsp;댐건설 및 주변지역지원 등에
                                            관한 법률</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        국토교통부
                                    </td>
                                    <td align="center">법 제11조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">14</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("1821")'
                                            onclick="this.href"
                                            title='"도로법" 새창'
                                            >&nbsp;도로법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        국토교통부
                                    </td>
                                    <td align="center">법 제48조제1항</td>
                                </tr>
                                <tr>
                                    <td align="center" width="60px">15</td>
                                    <td align="left" width="350px">
                                        <a
                                            href='javascript:goApi("9410")'
                                            onclick="this.href"
                                            title='"도시 및 주거환경정비법" 새창'
                                            >&nbsp;도시 및 주거환경정비법</a
                                        >
                                    </td>
                                    <td align="center" width="100px">
                                        건설교통부
                                    </td>
                                    <td align="center">법 제38조</td>
                                </tr>
                            </tbody>
                        </table>
                        <div
                            id="divPaginator"
                            style="margin-top: 10px; text-align: center"
                        >
                            <a
                                id="firstA1"
                                href="javascript:_pager.firstBtnClick()"
                                style="display: none"
                                ><img
                                    id="firstBtn1"
                                    src="#"
                                    alt="목록 처음으로 가기 아이콘"
                                    title="처음"
                                    style="cursor: default; display: none" /></a
                            ><a
                                id="prevA1"
                                href="javascript:_pager.prevBtnClick()"
                                style="display: none"
                                ><img
                                    id="prevBtn1"
                                    src="#"
                                    alt="이전 페이지그룹으로 가기 아이콘"
                                    title="이전"
                                    style="cursor: default; display: none"
                            /></a>
                            <div
                                id="paginator1"
                                style="display: inline; margin-left: 5px"
                            >
                                <a id="a1" href="#" title="선택됨"
                                    ><span
                                        style="
                                            cursor: pointer;
                                            border: 1px solid #e3e3e3;
                                            display: inline-block;
                                            text-align: center;
                                            padding-top: 6px;
                                            padding-bottom: 5px;
                                            width: 30px;
                                            margin-left: -1px;
                                            font-weight: bold;
                                        "
                                        >1</span
                                    ></a
                                ><a id="a2" href="javascript:_pager.goPage(2)"
                                    ><span
                                        style="
                                            cursor: pointer;
                                            border: 1px solid #e3e3e3;
                                            display: inline-block;
                                            text-align: center;
                                            padding-top: 6px;
                                            padding-bottom: 5px;
                                            width: 30px;
                                            margin-left: -1px;
                                        "
                                        >2</span
                                    ></a
                                ><a id="a3" href="javascript:_pager.goPage(3)"
                                    ><span
                                        style="
                                            cursor: pointer;
                                            border: 1px solid #e3e3e3;
                                            display: inline-block;
                                            text-align: center;
                                            padding-top: 6px;
                                            padding-bottom: 5px;
                                            width: 30px;
                                            margin-left: -1px;
                                        "
                                        >3</span
                                    ></a
                                ><a id="a4" href="javascript:_pager.goPage(4)"
                                    ><span
                                        style="
                                            cursor: pointer;
                                            border: 1px solid #e3e3e3;
                                            display: inline-block;
                                            text-align: center;
                                            padding-top: 6px;
                                            padding-bottom: 5px;
                                            width: 30px;
                                            margin-left: -1px;
                                        "
                                        >4</span
                                    ></a
                                >&nbsp;
                            </div>
                            <a
                                id="nextA1"
                                href="javascript:_pager.nextBtnClick()"
                                style="display: none"
                                ><img
                                    id="nextBtn1"
                                    src="#"
                                    alt="다음 페이지그룹으로 가기 아이콘"
                                    title="다음"
                                    style="cursor: default; display: none" /></a
                            ><a
                                id="lastA1"
                                href="javascript:_pager.lastBtnClick()"
                                style="display: none"
                                ><img
                                    id="lastBtn1"
                                    src="#"
                                    alt="목록 끝으로 가기 아이콘"
                                    title="끝"
                                    style="cursor: default; display: none"
                            /></a>
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
