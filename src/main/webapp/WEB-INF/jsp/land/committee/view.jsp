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
                            서울지방토지 수용위원회
                        </h2>
                    </div>
                    
       				<!-- land submenu start -->
		        	<jsp:include page="../includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- land submenu end -->
					
                    <div class="content center">
                        <section class="basic">
                            <div class="title-s">
                                서울특별시 지방토지수용위원회 위원명단
                            </div>

                            <div class="title-v-s-only-text txt-r">
                                (2022. 6.현재)
                            </div>
                            <table
                                class="commit_table pro_table"
                                title="서울특별시 지방토지수용위원회 위원명단"
                            >
                                <caption class="hideCaption">
                                    서울특별시 지방토지수용위원회 위원명단 -
                                    연번, 구분, 성명, 현직, 비고 항목으로 구성
                                </caption>
                                <colgroup>
                                    <col style="width: 15%" />
                                    <col style="width: 15%" />
                                    <col style="width: 15%" />
                                    <col style="width: 40%" />
                                    <col style="width: 15%" />
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>연번</th>
                                        <th>구분</th>
                                        <th>성명</th>
                                        <th>현직</th>
                                        <th>비고</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>위원장</td>
                                        <td>오 세 훈</td>
                                        <td>서울특별시장</td>
                                        <td>내부</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>위원</td>
                                        <td>최 진 석</td>
                                        <td>서울특별시 도시계획국장</td>
                                        <td>내부</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>위원</td>
                                        <td>황 경 남</td>
                                        <td>법무법인 로월드(변호사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>위원</td>
                                        <td>김 길 량</td>
                                        <td>서울고등법원(판사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>위원</td>
                                        <td>이 의 영</td>
                                        <td>서울고등법원(판사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>위원</td>
                                        <td>김 태 윤</td>
                                        <td>김태윤법률사무소(변호사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>위원</td>
                                        <td>신 정 근</td>
                                        <td>법무법인 백석(변호사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>위원</td>
                                        <td>유 선 종</td>
                                        <td>건국대학교(교수)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>위원</td>
                                        <td>최 윤 수</td>
                                        <td>서울시립대학교(교수)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>위원</td>
                                        <td>이 동 일</td>
                                        <td>
                                            미래새한감정평가법인(감정평가사)
                                        </td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>위원</td>
                                        <td>노 꽃 분 이</td>
                                        <td>나라감정평가법인(감정평가사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>위원</td>
                                        <td>정 승 희</td>
                                        <td>태양감정평가법인(감정평가사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>위원</td>
                                        <td>이 숙 희</td>
                                        <td>가람감정평가법인(감정평가사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>위원</td>
                                        <td>이 승 선</td>
                                        <td>가원감정평가사무소(감정평가사)</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>위원</td>
                                        <td>조 재 익</td>
                                        <td>㈜감정평가법인 삼일(감정평가사)</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
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
