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
        <link rel="stylesheet" href="../css/member.css" />
        <link rel="stylesheet" href="../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../css/jquery-ui.css" />
		
		<style>
			.mypage1{
				margin: 50px;
				padding: 50px 0px;
				width: 1200px;
			}
			.mypageInfo{
				width: 1200px;
				margin: 0 auto;
				padding-top: 60px;
			}
			.mypage_head, .mypageSub{
				margin-top: 60px;
			}

			.mypageSub{
				margin-bottom: 70px;
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
                <div class="wrap">
                
                
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
										내 정보
									</button>
									<div class="csnm_wrap">
										<ul>
											<li><a href="#">내 정보</a></li>
											<li><a href="${pageContext.request.contextPath}/member/mypage/mycase.do" id="mycase">내 사건보기</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<!-- cs_navi end -->
					
                    <div class="mypage_head">
						<h3 class="title bold cb">내 정보</h3>
					</div>			
					
					<!-- mypageInfo start -->
					<div class="mypageInfo">
	                    <form name="mypage_list">
	                        <div class="form t1">
	                        
	                        
		                        <!-- 사업시행자 start -->
		                        <div class="myinform1">
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_id">아이디</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" placeholder="사업시행자" id="myPageId" name="myPageId" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_code">패스워드</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPagePwd" name="myPagePwd" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">이름</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageName" name="myPageName" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_name">소속</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageDept" name="myPageDept" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_id">이메일</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageEmail" name="myPageEmail" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_code">연락처</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageNumber" name="myPageNumber" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">시행사문서번호</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageCorp" name="myPageCorp" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_name">시행사 담당자명</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="charge" name="charge" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">시행사 연락처</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPagePhone" name="myPagePhone" class="input40 t1 w160">
		                                    </div>
		                                </div>
		                            </div>
	                            </div>
	                            <!-- 사업시행자 끝 -->
		                            
		                        
	                        	<!-- 감정평가사 시작 -->
	                        	<!-- 
	                        	<div class="myinform2">
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_id">아이디</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" placeholder="감정평가사" id="myPageId" name="myPageId" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_code">패스워드</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPagePwd" name="myPagePwd" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">이름</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageName" name="myPageName" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_name">소속</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageDept" name="myPageDept" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_id">이메일</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageEmail" name="myPageEmail" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_code">연락처</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageNumber" name="myPageNumber" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">평가법인</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageCorp" name="myPageCorp" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_name">담당자명</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="charge" name="charge" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">전화번호</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPagePhone" name="myPagePhone" class="input40 t1 w160">
		                                    </div>
		                                </div>
		                            </div>
	                            </div>
	                            -->
	                            <!-- 감정평가사 끝 -->
		                            
		                            
	                            <!-- 관리자, 시군구, 재결관, 심의위원 시작 -->
	                            <!--
	                            <div class="myinform3">
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_id">아이디</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" placeholder="관리자, 시군구, 재결관, 심의위원" id="myPageId" name="myPageId" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_code">패스워드</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPagePwd" name="myPagePwd" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_part">이름</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageName" name="myPageName" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_name">소속</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageDept" name="myPageDept" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
		                            <div class="f_wrap">
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_id">이메일</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageEmail" name="myPageEmail" class="input40 t1">
		                                    </div>
		                                </div>
		                                <div class="f_field div2">
		                                    <div class="ff_title">
		                                        <label for="myP_code">연락처</label>
		                                    </div>
		                                    <div class="ff_wrap">
		                                        <input type="text" id="myPageNumber" name="myPageNumber" class="input40 t1">
		                                    </div>
		                                </div>
		                            </div>
	                            </div>
	                            -->
	                            <!-- 관리자, 시군구, 재결관, 심의위원  끝 -->
	                            
	                            
	                        </div>
	                        
	                        <div class="btn_wrap mypageSub">
		                      <button class="btn middle" id="submit">수정</button>
		                      <button class="btn middle t1" id="cancel">취소</button>
		                  </div>
	                    </form>
	                </div>
					<!-- mypageInfo End -->
					
                </div>
            </div>
            <hr />
            
            <!-- footer start -->
		    <jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
		    <!-- footer end -->
        </div>

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
