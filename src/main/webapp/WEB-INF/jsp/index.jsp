<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <meta
      id="_csrf"
      name="_csrf"
      content="3bc805b8-9517-44b9-8cb2-3e23244bf438"
    />
    <meta id="_csrf_header" name="_csrf_header" content="X-CSRF-TOKEN" />
    <title>재결정보지원센터</title>

   <meta name="description" content="재결정보지원센터" />
    <meta name="keywords" content="재결정보지원센터" />
    <meta name="author" content="재결정보지원센터" />
    <meta name="format-detection" content="telephone=no" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="재결정보지원센터" />
    <meta property="og:site_name" content="재결정보지원센터" />
    <meta property="og:description" content="재결정보지원센터" />
    <meta property="og:image" content="./css/favicon_1200x630.png" />
    <meta name="twitter:description" content="재결정보지원센터" />
    <meta name="twitter:image" content="./css/favicon_270x270.png" />
    <link rel="shortcut icon" href="./css/favicon_seoul.ico" />
    <link rel="icon" href="./css/favicon_seoul.ico" />
    <link rel="apple-touch-icon" href="./css/favicon_seoul.ico" />

    <link rel="stylesheet" href="./css/init.css" />
    <link rel="stylesheet" href="./css/common.css" />
    <link rel="stylesheet" href="./css/layout.css" />
    <link rel="stylesheet" href="./css/owl.carousel.min.css" />
    <link rel="stylesheet" href="./css/jquery-ui.css" />


    <style>
      html {
        background: url(../images/common/bg_main.svg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
      }
      body {
        margin: 0 auto;
      }
      nav {
        background-color: #ffffff;
        height: 100px;
      }
      h1 {
        margin: 0 auto;
        text-align: center;
      }
      #header {
        background-color: white;
        padding: 0px;
      }
      #header .mm_logo a {
        display: inline-block;
        width: 300px;
        height: 100px;
        background-image: url("../images/common/h_logo.svg");
        background-repeat: no-repeat;
        background-size: 100% auto;
        background-position: center;
      }
      .blind {
        visibility: hidden;
      }
      /*로그인폼*/
      .popup {
        display: inline-block;
        position: fixed;
        left: 0;
        right: 0;
        top: -100%;
        bottom: 100%;
        z-index: 100;
        background-color: none;
      }
      .member_find {
        display: flex;
        justify-content: center;
        text-align: center;
        margin-top: 2rem;
      }
      li {
        list-style: none;
      }
      li a {
        display: block;
        color: #666;
        margin: 0 20px;
        padding-bottom: 7px;
        border-bottom: 1px solid #999;
      }
      .popup.login .p_box {
        height: 280px;
      }
      .popup {
        background-color: rgba(255, 255, 255, 0);
      }

      .pouter {
        width: 100%;
        height: 100%;
        background-color: #045093;
        margin: 0 auto;
        margin-top: 90px;
        /* border-radius: 10px; */
        background-image: url(../images/common/img_cms_box_tit_after.png);
        background-repeat: no-repeat;
        background-size: 100%;
        position: relative;
      }
    </style>
  </head>
  <body>
    <nav id="header">
      <div class="wrap center">
        <div class="mm_logo">
          <h1>
            <a href="/" title="재결정보지원센터"
              ><span class="blind">재결정보지원센터</span></a
            >
          </h1>
        </div>
        <div class="popup login on">
          <div class="popup login on">
            <div class="pouter">
              <div class="p_box">
                <div class="p_head">
                  <h3 class="p_title">LOGIN</h3>
                </div>
                <div class="p_body">
                  <form id="login_user" class="on" action='${pageContext.request.contextPath}/api/login' method="post">
                    <fieldset>
                      <div class="form login">
                        <div class="f_wrap">
                          <div class="f_field">
                            <div class="ff_title">
                              <label for="lu_id">아이디</label>
                            </div>
                            <div class="ff_wrap">
                              <input
                                type="text"
                                id="lu_id"
                                name="loginId"
                                class="input"
                                placeholder="아이디"
                                required
                              />
                            </div>
                          </div>
                        </div>
                        <div class="f_wrap">
                          <div class="f_field">
                            <div class="ff_title">
                              <label for="lu_name">비밀번호</label>
                            </div>
                            <div class="ff_wrap">
                              <input
                                type="password"
                                id="lu_name"
                                name="loginPwd"
                                class="input"
                                placeholder="비밀번호"
                                required
                              />
                            </div>
                            
                             <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                             
                          </div>
                        </div>
                          <div class="f_btn">
                               <button class="btn" type="submit">
                                  	 로그인
                               </button>
                           </div>
                        </div>
                      </div>
                    </fieldset>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <div></div>
    <!-- join popup S -->
	<jsp:include page="./components/join.jsp" flush="false">
		<jsp:param name="login" value="login" />
	</jsp:include>
	<!-- join popup E -->

	<!-- 팝업, 로그인 S -->
	<jsp:include page="./components/login.jsp" flush="false">
		<jsp:param name="login" value="login" />
	</jsp:include>
	<!-- 팝업, 로그인 E -->

	<script src="./lib/jquery.3.1.0.min.js"></script>
	<script src="./lib/owl.carousel.min.js"></script>
	<script src="./lib/jquery-ui.min.js"></script>
	<script src="./lib/lib.js"></script>

	<!--common start-->
	<script src="./js/common.js"></script>

	<script type="text/javascript">
  </body>
  
</html>

