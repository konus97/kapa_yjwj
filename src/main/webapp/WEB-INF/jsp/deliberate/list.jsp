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
                    <div class="sub_title sub_title06">
                        <h2 class="title bold center">심의안건 정보</h2>
                    </div>
                    
                  
                    <!-- deliberate submenu start -->
		        	<jsp:include page="../deliberate/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- deliberate submenu end -->
					
  
                    
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">심의안건 조회</h3>
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
                                                            required=""
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
                
                                                        </select>
                                                    </span>
                                                    <span class="ff_group w290">
                                                        <input
                                                            type="text"
                                                            id="il_input"
                                                            name="il_input"
                                                            class="input40 t1"
                                                            placeholder="사건번호 혹은 사업명 입력"
                                                            required=""
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
                                                                class="datepicker input40 t1 hasDatepicker"
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
                                                                class="datepicker input40 t1 hasDatepicker"
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
                                        <div class="f_wrap">
                                            <div class="f_field">
                                                <div class="ff_title">
                                                    <label for="il_state"
                                                        >재결진행상황</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <div class="checkbox">
                                                        <input
                                                            type="checkbox"
                                                            id="decision_step01"
                                                        />
                                                        <label
                                                            for="decision_step01"
                                                            >심사대기</label
                                                        >
                                                    </div>
                                                    <div class="checkbox">
                                                        <input
                                                            type="checkbox"
                                                            id="decision_step02"
                                                        />
                                                        <label
                                                            for="decision_step02"
                                                            >승인</label
                                                        >
                                                    </div>
                                                    <div class="checkbox">
                                                        <input
                                                            type="checkbox"
                                                            id="decision_step03"
                                                        />
                                                        <label
                                                            for="decision_step03"
                                                            >반려</label
                                                        >
                                                    </div>
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
                                            <span id="allCount"></span>
                                        </li>
                                        <li>
                                            Page :
                                            <span id="currentPage"></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="c_table t1">
                                <table>
                                    <caption>
                                       	 신청조회 목록
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>연번</th>
                                            <!-- <th>접수일</th> -->
                                            <th>심의 일자</th>
                                            <th>사업명</th>
                                            <!-- <th>심의번호</th> -->
                                            <th>심의차수</th>
                                            <!-- <th>진행상황</th> -->
                                            <th style="min-width:300px">심사 진행</th>
                                            <!-- <th>심사</th> -->
                                        </tr>
                                    </thead>
                                    <tbody id="contentList">
                                       
                                    </tbody>
                                </table>
                            </div>
                            
                            <div class="paging">
	                           <div class="p_wrap" id="pageList">
	                             
	                           </div>
	                        </div>
                            
                            <div class="c_table t1" id="agendaDetaiShow" data-check="0" data-seq="0" style="display:none" >
                                <table>
                                    <thead>
                                        <tr>
                                            <th>연번</th>
                                            <th>접수일</th>
                                            <!-- <th>재결기관</th>
                                            <th>담당자</th>
                                            <th>사업시행자</th> -->
                                            <th>사건번호</th>
                                            <th>심의차수</th>
                                            <th>심의안 보기</th>
                                            <!-- <th>사업명</th>
                                            <th>소재지</th>
                                            <th>담당법인</th> -->
                                            <th>심사결과</th>
                                        </tr>
                                    </thead>
                                    <tbody id="agendaDetailList">
                      

                                    </tbody>
                                </table>
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
		
		<script src="../js/deliberate/content.js"></script>
		      
        <script src="../js/deliberate/list/block.js"></script>
        <script src="../js/deliberate/list/list.js"></script>
        
        <script type="text/javascript">
        
            $(document).ready(function(){

            	getDeliberateList(1);

            });
            
        </script>
    </body>
</html>
