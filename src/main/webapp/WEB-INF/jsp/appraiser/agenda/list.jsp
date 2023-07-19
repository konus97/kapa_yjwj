<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%> 

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
                    <div class="sub_title sub_title04">
                        <h2 class="title bold center">심의서작성</h2>
                    </div>
                    
                    
                	<!-- appraiser submenu start -->
		        	<jsp:include page="../../appraiser/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- appraiser submenu end -->
                    
                 
                    
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">심의서작성</h3>
                        </div>
                        <div class="cs_body">
                            <div class="cs_search">
                                <form name="inpuiry_list">
                                    <div class="form t1">
                                        <div class="f_wrap">
                                            <div class="f_field">
                                                <div class="ff_title">
                                                    <label for="il_input"
                                                        >검색</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <span class="ff_group">
                                                        <label
                                                            for="il_select"
                                                            class="blind"
                                                            >선택</label
                                                        >
                                                        <select
                                                            name="il_select"
                                                            id="il_select"
                                                            class="select t1"
                                                            required
                                                        >
                                                            <option value="">
                                                                전체
                                                            </option>
                                                            <option value="000">
                                                                중앙토지수용위원회
                                                            </option>
                                                            <option value="200">
                                                                서울지방토지수용위원회
                                                            </option>
                                                            <option value="201">
                                                                부산지방토지수용위원회
                                                            </option>
                                                            <option value="202">
                                                                대구지방토지수용위원회
                                                            </option>
                                                            <option value="203">
                                                                인천지방토지수용위원회
                                                            </option>
                                                            <option value="204">
                                                                광주지방토지수용위원회
                                                            </option>
                                                            <option value="205">
                                                                대전지방토지수용위원회
                                                            </option>
                                                            <option value="206">
                                                                울산지방토지수용위원회
                                                            </option>
                                                            <option value="207">
                                                                경기지방토지수용위원회
                                                            </option>
                                                            <option value="208">
                                                                강원지방토지수용위원회
                                                            </option>
                                                            <option value="209">
                                                                충북지방토지수용위원회
                                                            </option>
                                                            <option value="210">
                                                                충남지방토지수용위원회
                                                            </option>
                                                            <option value="211">
                                                                전북지방토지수용위원회
                                                            </option>
                                                            <option value="212">
                                                                전남지방토지수용위원회
                                                            </option>
                                                            <option value="213">
                                                                경북지방토지수용위원회
                                                            </option>
                                                            <option value="214">
                                                                경남지방토지수용위원회
                                                            </option>
                                                            <option value="215">
                                                                제주지방토지수용위원회
                                                            </option>
                                                            <option value="216">
                                                                세종지방토지수용위원회
                                                            </option>
                                                        </select>
                                                    </span>
                                                    <span class="ff_group w290">
                                                        <input
                                                            type="text"
                                                            id="il_input"
                                                            name="il_input"
                                                            class="input40 t1"
                                                            placeholder="사건번호 혹은 사업명 입력"
                                                            required
                                                        />
                                                    </span>
                                                    <span class="ff_group">
                                                        <button
                                                            type="submit"
                                                            id="il_submit"
                                                            name="il_submit"
                                                            class="btn small ico search"
                                                        >
                                                            검색
                                                        </button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="f_wrap">
                                            <div class="f_field">
                                                <div class="ff_title">
                                                    <label for="bw_subject"
                                                        >접수일</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <span class="ff_group">
                                                        <span class="w140"
                                                            ><label
                                                                for="il_date1"
                                                                class="blind"
                                                                >시작일</label
                                                            ><input
                                                                type="text"
                                                                name="il_date1"
                                                                id="il_date1"
                                                                class="datepicker input40 t1"
                                                                value="2021-10-05" /><i></i
                                                        ></span>
                                                        <span class="side"
                                                            >~</span
                                                        >
                                                        <span class="w140"
                                                            ><label
                                                                for="il_date2"
                                                                class="blind"
                                                                >종료일</label
                                                            ><input
                                                                type="text"
                                                                name="il_date2"
                                                                id="il_date2"
                                                                class="datepicker input40 t1"
                                                                value="2021-10-05" /><i></i
                                                        ></span>
                                                    </span>
                                                    <span class="ff_group">
                                                        <a
                                                            href="#"
                                                            class="btn t1 small w60"
                                                            >1개월</a
                                                        >
                                                        <a
                                                            href="#"
                                                            class="btn t1 small w60"
                                                            >3개월</a
                                                        >
                                                        <a
                                                            href="#"
                                                            class="btn t1 small w60"
                                                            >6개월</a
                                                        >
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="f_wrap">
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label for="il_subject"
                                                        >사업명</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        id="il_subject"
                                                        name="il_subject"
                                                        class="input40 t1"
                                                    />
                                                </div>
                                            </div>
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label for="il_code"
                                                        >사건번호</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        id="il_code"
                                                        name="il_code"
                                                        class="input40 t1"
                                                    />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="f_wrap">
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label for="il_part"
                                                        >소재지</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        id="il_part"
                                                        name="il_part"
                                                        class="input40 t1"
                                                    />
                                                </div>
                                            </div>
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label for="il_name"
                                                        >시행자명</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        id="il_name"
                                                        name="il_name"
                                                        class="input40 t1 w160"
                                                    />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="cs_title">
                                <h4 class="fl title t1 bold cb s1 bullet">
                                    신청조회 목록
                                </h4>
                                <div class="cs_count">
                                    <ul>
                                        <li>
                                            Total :
                                            <span
                                                ><mark class="cm"
                                                    >26</mark
                                                ></span
                                            >
                                        </li>
                                        <li>
                                            Page :
                                            <span
                                                ><mark class="cm">1</mark
                                                >/3</span
                                            >
                                        </li>
                                    </ul>
                                </div>
                                <div class="cs_option">
                                    <form name="stats_type">
                                        <div class="cs_category">
                                            <strong>리스트</strong>
                                            <span>
                                                <label for="pageLimit"
                                                    >10</label
                                                >
                                                <select
                                                    name="pageLimit"
                                                    id="pageLimit"
                                                    onchange="fn_goPage(1)"
                                                >
                                                    <option
                                                        value="10"
                                                        selected="selected"
                                                    >
                                                        10
                                                    </option>
                                                    <option value="20">
                                                        20
                                                    </option>
                                                    <option value="30">
                                                        30
                                                    </option>
                                                </select>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="c_table t1">
                                <table>
                                    <caption>
                                        사건조회 목록
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>연번</th>
                                            <th>접수일</th>
                                            <th>심의일자</th>
                                            <th>사건번호</th>
                                            <th>사업명</th>
                                            <th>심의번호</th>
                                            <th>차수</th>
                                            <th>진행상황</th>
                                            <th>문서보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th>
                                                <strong>1</strong>
                                            </th>
                                            <td>
                                                <strong>접수일자</strong>
                                                <span>2022.06.03</span>
                                            </td>
                                            <td>
                                                <strong>심의 일자</strong>
                                                <span>2022.10.31</span>                                                </span>
                                            </td>
                                            <td>
                                                <strong>사건번호</strong>
                                                <span>22이중0279</span>
                                            </td>
                                            <td class="left">
                                                <strong>사업명</strong>
                                                <span
                                                    >강화온수 마을정비형
                                                    공공주택사업, 1차</span
                                                >
                                            </td>
                                            <td>
                                                <strong>심의번호</strong>
                                                <span>123</span>
                                            </td>
                                            <td>
                                                <strong>차수</strong>
                                                <span>1회차</span>
                                            </td>
                                            <td>
                                                <strong>진행상황</strong>
                                                <span>3단계</span>
                                            </td>
                                            <td>
                                                <strong>문서보기</strong>
                                                <span>
                                                    <a
                                                        href="${pageContext.request.contextPath}/appraiser/decision/view.do"
                                                        class="btn small"
                                                    >
                                                        보기
                                                </a>
                                                </span>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>
                                                <strong>2</strong>
                                            </th>
                                            <td>
                                                <strong>접수일자</strong>
                                                <span>2022.08.18</span>
                                            </td>
                                            <td>
                                                <strong>회의일자</strong>
                                                <span></span>
                                            </td>
                                            <td>
                                                <strong>사건번호</strong>
                                                <span>22손실0005</span>
                                            </td>
                                            <td class="left">
                                                <strong>사업명</strong>
                                                <span
                                                    >밀양 가곡회전교차로
                                                    설치사업(잔여지
                                                    가치하락)</span
                                                >
                                            </td>
                                            <td>
                                                <strong>안건번호</strong>
                                                <span></span>
                                            </td>
                                            <td>
                                                <strong>차수</strong>
                                                <span></span>
                                            </td>
                                            <td>
                                                <strong>상태</strong>
                                                <span>1단계</span>
                                            </td>
                                            <td>
                                                <strong>문서보기</strong>
                                                <span>
                                                    <a
                                                        href="./agenda_view.html"
                                                        class="btn small"
                                                    >
                                                        작성
                                                </a>
                                                </span>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>
                                                <strong>3</strong>
                                            </th>
                                            <td>
                                                <strong>접수일자</strong>
                                                <span>2022.03.04</span>
                                            </td>
                                            <td>
                                                <strong>회의일자</strong>
                                                <span></span>
                                            </td>
                                            <td>
                                                <strong>사건번호</strong>
                                                <span>22이지0219</span>
                                            </td>
                                            <td class="left">
                                                <strong>사업명</strong>
                                                <span
                                                    >공주 동현일반산업단지</span
                                                >
                                            </td>
                                            <td>
                                                <strong>안건번호</strong>
                                                <span>3호</span>
                                            </td>
                                            <td>
                                                <strong>차수</strong>
                                                <span>3차</span>
                                            </td>
                                            <td>
                                                <strong>상태</strong>
                                                <span>3단계</span>
                                            </td>
                                            <td>
                                                <strong>문서보기</strong>
                                                <span>
                                                    <a
                                                        href="./agenda_view.html"
                                                        class="btn small"
                                                    >
                                                        보기
                                                </a>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="paging">
                                <div class="p_wrap">
                                    <div class="p_arrow start">
                                        <a href="#"
                                            ><i></i
                                            ><span class="blind">처음</span></a
                                        >
                                    </div>
                                    <div class="p_arrow prev">
                                        <a href="#"
                                            ><i></i
                                            ><span class="blind">이전</span></a
                                        >
                                    </div>
                                    <div class="p_btn">
                                        <a href="#" class="on"
                                            ><strong>1</strong></a
                                        >
                                        <a href="#">2</a>
                                        <a href="#">3</a>
                                        <a href="#">4</a>
                                        <a href="#">5</a>
                                    </div>
                                    <div class="p_arrow next">
                                        <a href="#"
                                            ><span class="blind">다음</span
                                            ><i></i
                                        ></a>
                                    </div>
                                    <div class="p_arrow end">
                                        <a href="#"
                                            ><span class="blind">끝</span><i></i
                                        ></a>
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


        <script src="../lib/jquery.3.1.0.min.js"></script>
        <script src="../lib/owl.carousel.min.js"></script>
        <script src="../lib/jquery-ui.min.js"></script>
        <script src="../lib/lib.js"></script>

		<!--common start-->
		<script src="../js/common.js"></script>
		
         <script type="text/javascript">
	
		    $(document).ready(function () {
	
		    });
	    	
		</script>
    </body>
</html>
