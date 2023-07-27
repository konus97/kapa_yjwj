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
             <meta id="_csrf" name="_csrf" content="${_csrf.token}" />
		<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
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
                        <h2 class="title bold center">감정평가사 의견조회</h2>
                    </div>
                    
       				<!-- appraiser submenu start -->
		        	<jsp:include page="../../appraiser/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- appraiser submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">감정평가사 의견조회</h3>
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
                                                            type="button"
                                                            id="il_submit"
                                                            name="il_submit"
                                                            class="btn small ico search"
															 onclick="getAppraiserApplicationList(1);return false;"
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
                                        	사건조회 목록
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>연번</th>
                                            <th>접수일</th>
                                            <th>재결기관</th>
                                            <th>담당자</th>
                                            <th>사업시행자</th>
                                            <th>사건번호</th>
                                            <th>사업명</th>
                                            <th>소재지</th>
                                            <th>담당법인</th>
                                            <th>재결 진행상황</th>
                                            <th>의견작성</th>
                                        </tr>
                                    </thead>
                                  <tbody id="contentList">
                                       
                                       
                                  </tbody>
                                </table>
                            </div>
                             <!-- 감정평가사 재결(의견조회) 추가 사항 1 -->
                       <div class="cs_wrap_ad">
                            <div class="cs_title">
								<h4 class="fl title t1 bold cb s1 bullet">-<mark class="cs"> 안건 정보</mark></h4>
							</div>
							<div class="form t1">
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>안건번호</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.custName}테스트</p>
										</div>
									</div>

									<div class="f_field div2">
										<div class="ff_title">
											<label>회의일자</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.bizTpCd}테스트</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field div2">
										<div class="ff_title">
											<label>사건번호</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.custName}22수용0436-1</p>
										</div>
									</div>

									<div class="f_field div2">
										<div class="ff_title">
											<label>담당자</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.bizTpCd}테스트</p>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label>사 업 명</label>
										</div>
										<div class="ff_wrap">
											<p>${avo.bizTpCd}주소</p>
										</div>
									</div>
								</div>
								<h5 class="cs_ad">- 본 자료가 대외유출되지 않도록 협조하여 주시기 바랍니다.</h5>
							</div>
							
							<div class="cs_title">
                            	<h4 class="fl title t1 bold cb s1 bullet">-<mark class="cs"> 전문검증단 심의대상</mark></h4>
                            <div class="form t1">
                                    <div class="f_wrap">
                                    	<div class="f_field">
											<div class="ff_title">
												<label>제 1항</label>
											</div>
											<div class="ff_wrap">
												<p>${avo.bizTpCd}개인별 감정평가액 증액비율이 20% 이상이고, 3천만 원 이상 증액 평가된 경우</p>
											</div>
										</div>
                             		</div>
                           </div>
                           
                           <div class="cs_title">
                            	<h4 class="fl title t1 bold cb s1 bullet">-<mark class="cs"> 전문검증단 심의대상</mark></h4>
                            </div>
                            <div class="form t1">
                                    <div class="f_wrap">
                                    	<div class="f_field">
											<div class="ff_title">
												<label>제 1항</label>
											</div>
											<div class="ff_wrap">
												<p>${avo.bizTpCd}개인별 감정평가액 증액비율이 20% 이상이고, 3천만 원 이상 증액 평가된 경우</p>
											</div>
										</div>
                             		</div>
                           </div>
                           
                           <div class="cs_title">
                            	<h4 class="fl title t1 bold cb s1 bullet">-<mark class="cs"> 전문검증단 회의 검토사유</mark></h4>
                            </div>
                            <div class="form t2">
                                    <div class="f_wrap">
                                    	<div class="f_field">
											<div class="ff_wrap">
												<p><a href="tel:" class="cx"></a></p>
											</div>
										</div>
                             		</div>
                           </div>
                           
                           <div class="cs_title">
                            	<h4 class="fl title t1 bold cb s1 bullet">-<mark class="cs"> 사업개요</mark></h4>
                            </div>
                            <div class="form t1">
                                    <div class="f_wrap">
                                    	<div class="f_field">
											<div class="ff_title">
												<label>사업 시행자</label>
											</div>
											<div class="ff_wrap">
												<p>${avo.bizTpCd}경기도지사</p>
											</div>
										</div>
                             		</div>
                             		<div class="f_wrap">
                                    	<div class="f_field">
											<div class="ff_title">
												<label>사업 인정일</label>
											</div>
											<div class="ff_wrap">
												<p>${avo.bizTpCd}2018-12-20</p>
											</div>
										</div>
                             		</div>
                             		<div class="f_wrap">
                                    	<div class="f_field">
											<div class="ff_title">
												<label>사업 기간</label>
											</div>
											<div class="ff_wrap">
												<p>${avo.bizTpCd}-</p>
											</div>
										</div>
                             		</div>
                           </div>
                           
                           <div class="cs_title">
                            	<h4 class="fl title t1 bold cb s1 bullet">-<mark class="cs"> 심의 대상 소유자 정보</mark></h4>
                            </div>
                            <div class="c_table t1">
                                <table>
                                    <caption>
                                        	사건조회 목록
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>연번</th>
                                            <th>소유자</th>
                                            <th>협의 평균 평가금액(원)<br>A</th>
                                            <th>수용재결 평균 평가금액(원)<br>B</th>
                                            <th>증감액(원)증감율<br>C=B-A</th>
                                            <th>지가변동률(%)<br>D=E/A</th>
                                            <th>자가상승금액(원)<br>E</th>
                                            <th>격차액(원)(증감율)<br>F=C-E</th>
                                        </tr>
                                    </thead>
                                  <tbody id="">
                                  		<tr>
                                  			<td>1</td>
                                  			<td>최종윤</td>
                                  			<td>68,401,060</td>
                                  			<td>68,401,060</td>
                                  			<td>0(0%)</td>
                                  			<td>0.00000</td>
                                  			<td>0</td>
                                  			<td>0(0%)</td>
                                  		</tr>
                                       
                                       
                                  </tbody>
                                </table>
                            </div>
                           
                           
                           
                        </div>
                          
                       
                       
                       
                       <!------------------------------ 여기까지 ---------------------------->
                            
                            <div class="paging">
                                <div class="p_wrap" id="pageList">
                                    
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
        <script src="../lib/charts.js"></script>
        <script src="../lib/jquery-ui.min.js"></script>
        <script src="../lib/lib.js"></script>

		<!--common start-->
		<script src="../js/common.js"></script>
		
        <script src="../js/appraiser/application/block.js"></script>
        <script src="../js/appraiser/application/list.js"></script>
		
        <script type="text/javascript">
	
		    $(document).ready(function () {
		    	document.getElementById('il_date1').value = new Date().toISOString().substring(0,10);
	        	document.getElementById('il_date2').value = new Date().toISOString().substring(0,10);
		    	getAppraiserApplicationList(1);
		    	
		    });
	    	
		</script>
		
       
    </body>
</html>
