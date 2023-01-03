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
                        <h2 class="title bold center">심의안건 정보</h2>
                    </div>
                   
         			<!-- appraiser submenu start -->
		        	<jsp:include page="../../appraiser/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- appraiser submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">심의안건 상세</h3>
                        </div>
                        <div class="cs_body">
                            <div class="mt20 box t2 text cb p30" id="editor">
                                <p><br /></p>
                            </div>
                            <div class="cs_title">
                                <h4 class="fl title t1 bold cb s1 bullet">
                                    관련자료
                                </h4>
                            </div>
                            <form
                                id="frm"
                                name="frm"
                                method="post"
                                enctype="multipart/form-data"
                            >
                                <input
                                    type="hidden"
                                    value="6049222"
                                    id="masterid"
                                    name="masterid"
                                />
                                <input
                                    type="hidden"
                                    value="557907"
                                    id="distributeid"
                                    name="distributeid"
                                />
                                <input
                                    type="hidden"
                                    value="1"
                                    id="pageNo"
                                    name="pageNo"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_keyword"
                                    name="srch_keyword"
                                />
                                <input
                                    type="hidden"
                                    value="2020-10-07"
                                    id="srch_startDt"
                                    name="srch_startDt"
                                />
                                <input
                                    type="hidden"
                                    value="2022-10-07"
                                    id="srch_endDt"
                                    name="srch_endDt"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_delay"
                                    name="srch_delay"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_title"
                                    name="srch_title"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_docid"
                                    name="srch_docid"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_appname"
                                    name="srch_appname"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_addr"
                                    name="srch_addr"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_custname"
                                    name="srch_custname"
                                />
                                <input
                                    type="hidden"
                                    value=""
                                    id="srch_pname"
                                    name="srch_pname"
                                />
                                <input
                                    type="hidden"
                                    value="6"
                                    id="pageGubun"
                                    name="pageGubun"
                                />
                                <div class="form t2">
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label
                                                    >심의 안건 감정평가서 첨부(*
                                                    PDF만 첨부
                                                    가능합니다)</label
                                                >
                                            </div>
                                            <div id="fileDiv3A_valuation">
                                                <div
                                                    class="ff_area"
                                                    id="valuationFileA_ff"
                                                >
                                                    <div class="ff_wrap">
                                                        <span
                                                            class="ff_group w250"
                                                            ><input
                                                                type="hidden"
                                                                id="valuationFileAId"
                                                                name="valuationFileAId"
                                                                value="new" /><input
                                                                type="file"
                                                                id="valuationFileA"
                                                                name="valuationFileA"
                                                                class="input40 t1 fileAdd" /></span
                                                        ><span class="ff_group"
                                                            ><button
                                                                type="button"
                                                                id="valuationFileB_delete"
                                                                name="valuationFileB_delete"
                                                                class="btn nohover t4 small"
                                                                onclick="deleteValuationFileB()"
                                                            >
                                                                <i
                                                                    class="close icon white"
                                                                ></i>
                                                                삭제
                                                            </button>
                                                            <button
                                                                type="button"
                                                                id="valuationFileB_delete"
                                                                name="valuationFileB_delete"
                                                                class="btn nohover t4 small"
                                                                onclick="deleteValuationFileB()"
                                                            >
                                                                <i
                                                                    class="pluse icon white"
                                                                ></i>
                                                                추가
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>기타 서류 첨부</label>
                                            </div>
                                            <div id="fileDiv3B_valuation">
                                                <div
                                                    class="ff_area"
                                                    id="valuationFileB_ff"
                                                    style="width: 100%"
                                                >
                                                    <div class="ff_wrap">
                                                        <span
                                                            class="ff_group w250"
                                                        >
                                                            <input
                                                                type="text"
                                                                class="input40"
                                                        /></span>
                                                        <span
                                                            class="ff_group w250"
                                                            ><input
                                                                type="hidden"
                                                                id="valuationFileBId"
                                                                name="valuationFileBId"
                                                                value="new" /><input
                                                                type="file"
                                                                id="valuationFileB"
                                                                name="valuationFileB"
                                                                class="input40 t1 fileAdd" /></span
                                                        ><span class="ff_group">
                                                            <button
                                                                type="button"
                                                                id="valuationFileB_delete"
                                                                name="valuationFileB_delete"
                                                                class="btn nohover t4 small"
                                                                onclick="deleteValuationFileB()"
                                                            >
                                                                <i
                                                                    class="close icon white"
                                                                ></i>
                                                                삭제
                                                            </button>
                                                            <button
                                                                type="button"
                                                                id="valuationFileB_delete"
                                                                name="valuationFileB_delete"
                                                                class="btn nohover t4 small"
                                                                onclick="deleteValuationFileB()"
                                                            >
                                                                <i
                                                                    class="pluse icon white"
                                                                ></i>
                                                                추가
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cs_title">
                                        <h4
                                            class="fl title t1 bold cb s1 bullet"
                                        >
                                            감정평가사 검토 의견
                                        </h4>
                                    </div>
                                    <div class="mt10 text cb">
                                        <textarea class="textarea"></textarea>
                                    </div>
                                </div>
                                <div class="mt40 btn_wrap">
                                    <ul class="btns">
                                        <li>
                                            <button
                                                type="button"
                                                class="btn big h50"
                                            >
                                                완료
                                            </button>
                                        </li>
                                        <li>
                                            <a
                                                href="./agenda.html"
                                                class="btn t1 big h50"
                                            >
                                                목록
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </form>
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


        <script src="../../lib/jquery.3.1.0.min.js"></script>
        <script src="../../lib/owl.carousel.min.js"></script>
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>

		<!--common start-->
		<script src="../../js/common.js"></script>
		
        <script type="text/javascript">
	
		    $(document).ready(function () {
	
		    });
	    	
		</script>
    </body>
</html>
