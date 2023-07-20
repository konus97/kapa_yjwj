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

        <title>재결정보지원센터 || 회원가입</title>

        <meta name="description" content="재결정보지원센터" />
        <meta name="keywords" content="재결정보지원센터" />
        <meta name="author" content="재결정보지원센터" />
        <meta name="format-detection" content="telephone=no" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="재결정보지원센터" />
        <meta property="og:site_name" content="재결정보지원센터" />
        <meta property="og:description" content="재결정보지원센터" />
        <meta property="og:image" content="../../css/favicon_1200x630.png" />
        <meta name="twitter:description" content="재결정보지원센터" />
        <meta name="twitter:image" content="../../css/favicon_270x270.png" />
        <link rel="shortcut icon" href="../../css/favicon_seoul.ico" />
        <link rel="icon" href="../../css/favicon_seoul.ico" />

        <link rel="apple-touch-icon" href="../../css/favicon_seoul.ico" />
        <link rel="stylesheet" href="../../css/init.css" />
        <link rel="stylesheet" href="../../css/common.css" />
        <link rel="stylesheet" href="../../css/layout.css" />
        <link rel="stylesheet" href="../../css/sub.css" />
        <link rel="stylesheet" href="../../css/member.css" />
        <link rel="stylesheet" href="../../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../../css/jquery-ui.css" />
		
		<style>
			.mypage1{
				margin: 50px;
				padding: 50px 0px;
				width: 1200px;
			}
			.mypageWrap{
				width: 1200px;
				margin : 0 auto;
			}
			.mypage_head{
				margin-top: 60px;
			}
			.mypageGrd{
				display: grid;
				grid-template-columns: 1fr 1fr;
				gap: 10px 70px;
			}
			.mypageSub{
				margin-top: 80px;
			}
			.mypageBody2{
				display: block;
	    		vertical-align: middle;
				width: 100%;
			    margin-top: 100px;
			}
			.mypageBody{
				display: block;
	    		vertical-align: middle;
				width: 100%;
			    margin-bottom: 40px;
			}
			#contents{
				min-height: calc(100vh - 263px);
			}
		</style>
        
    </head>
    <body>
        <div id="wrap">
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->
            <hr />
            
            
            <!-- contents start -->
            <div id="contents" class="c_sub mypage">
                <!-- cs_navi start -->
		            <div class="cs_navi">
						<ul class="center">
							<li>
								<a href="${pageContext.request.contextPath}/"><span class="blind">HOME</span></a>
							</li>
							<li>
								<a href="#">마이페이지</a>
							</li>
							<li>
								<div class="csn_menu">
									<button type="button" class="csnm_btn" id="subTitle">
										내 사건보기
									</button>
									<div class="csnm_wrap">
										<ul>
											<li><a href="${pageContext.request.contextPath}/member/mypage.do" id="mypageInfo">내 정보</a></li>
											<li><a href="#" id="mycase">내 사건보기</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- cs_navi end -->
					
                <div class="wrap mypageWrap">
                    <div class="mypage_head">
						<h3 class="title bold cb">내 사건보기</h3>
					</div>
                    
                    <!-- 시작 -->

					<div class="cs_title mypageBody2">
                           <h4 class="fl title t1 bold cb s1 bullet">
                             	  신청조회 목록
                           </h4>
                           <div class="cs_count">
                               <ul>
                                   <li>
                                       Total :
                                       <span id="allCount"><mark class="cm">2</mark></span>
                                   </li>
                                   <li>
                                       Page :
                                       <span id="currentPage"><mark class="cm">1</mark>/1</span>
                                   </li>
                               </ul>
                           </div>
                        </div>
                        
						<div class="cs_body mypageBody">
                            <div class="c_table t1">
                                <table>
                                    <caption>
                                       	 신청조회 목록
                                    </caption>
                                    <thead>
                                        <tr>
                                            <th>연번</th>
                                            <!-- <th>접수일</th> -->
                                            <th>접수일</th>
                                            <th>재결기관</th>
                                            <th>담당자</th>
                                            <th>사업시행자</th>
                                            <th>사건번호</th>
                                            <th>사업명</th>
                                            <th>소재지</th>
                                            <th>재결진행상황</th>
                                            <th>심사여부</th>
                                        </tr>
                                    </thead>
                                    <tbody id="contentList" data-cpage="1" data-tpage="1">
                                    	<tr>
                                    		<th>
                                    			<strong>2</strong>
                                    		</th>
                                    		<td>
                                   				<span>2022-11-04</span>
                                    		</td>
                                    		<td>
                                   				<span>서울지방토지수용위원회</span>
                                    		</td>
                                    		<td>
                                   				<span>조원재</span>
                                    		</td>
                                    		<td>
                                   				<span>길영준</span>
                                    		</td>
                                    		<td>
                                   				<span>22수용0144</span>
                                    		</td>
                                    		<td>
                                   				<a href="#">동선제2구역 주택재개발정비사업(4차)</a>
                                    		</td>
                                    		<td>
                                   				<span>성북구 동소문로 29길11</span>
                                    		</td>
                                    		<td>
                                   				<span>재결접수</span>
                                    		</td>
                                    		<td>
                                   				<span>심사</span>
                                    		</td>
										</tr>
										<tr>
                                    		<th>
                                    			<strong>1</strong>
                                    		</th>
                                    		<td>
                                   				<span>2022-05-20</span>
                                    		</td>
                                    		<td>
                                   				<span>서울지방토지수용위원회</span>
                                    		</td>
                                    		<td>
                                   				<span>길영준</span>
                                    		</td>
                                    		<td>
                                   				<span>조원재</span>
                                    		</td>
                                    		<td>
                                   				<span>22수용0144</span>
                                    		</td>
                                    		<td>
                                   				<a href="#">한양도성 산책로 조성 사업</a>
                                    		</td>
                                    		<td>
                                   				<span>성북구 동소문로 29길11</span>
                                    		</td>
                                    		<td>
                                   				<span>열람상황</span>
                                    		</td>
                                    		<td>
                                   				<span>심사</span>
                                    		</td>
										</tr>
										
										</tbody>
                                </table>
                            </div>
                            
							<div class="paging">
                                <div class="p_wrap" id="pageList"><div class="p_btn"><a href="#" id="page-1" class="on"><strong>1</strong></a></div><div class="p_btn"><a href="#" id="page-2">2</a></div></div>
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


        <script src="../../lib/jquery.3.1.0.min.js"></script>
        <script src="../../lib/owl.carousel.min.js"></script>
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>
      	<!--common start-->
		<script src="../../js/common.js"></script>
		
        <script type="text/javascript">
            $(document).ready(function () {});
        </script>
    </body>
</html>
