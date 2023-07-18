<%@ page contentType="text/html;charset=utf-8" language="java"
pageEncoding="utf-8"%>

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
    <meta id="_csrf" name="_csrf" content="${_csrf.token}" />
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
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
  </head>
  <body>
    <div id="wrap">
      <!-- header start -->
      <jsp:include page="./components/header.jsp" flush="false">
        <jsp:param name="login" value="login" />
      </jsp:include>
      <!-- header end -->

      <hr />
      <div id="contents" class="c_main">
        <div class="wrap center">
          <div class="cm_service">
            <div class="cms_box t1">
              <div class="cms_title">
                <h3>
                  사업시행자 <br />
                  재결신청
                </h3>
              </div>
              <div class="cms_wrap">
                <div class="cms_form">
                  <form id="cms_form1" name="cms_form1">
                    <fieldset>
                      <legend>검색폼</legend>
                      <input
                        type="text"
                        id="cmsf1_input"
                        name="cmsf1_input"
                        class="s_input"
                        placeholder="사건번호 혹은 사업명 입력"
                      />
                      <button type="submit" class="cpf_btn">
                        <span class="blind">검색</span>
                      </button>
                    </fieldset>
                  </form>
                </div>
                <div class="cms_list">
                  <ul>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/implementer/application.do"
                        >LTIS입력정보확인</a
                      >
                    </li>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/implementer/opinion.do"
                        >재결의견작성</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="cms_box t2">
              <div class="cms_title">
                <h3>
                  시·군·구<br />
                  열람공고
                </h3>
              </div>
              <!-- <div class="cms_info">
                                <ul>
                                    <li>금월 전체 2건</li>
                                    <li>재결완료 2건</li>
                                </ul>
                            </div> -->
              <div class="cms_wrap">
                <div class="cms_form">
                  <form id="cms_form2" name="cms_form2">
                    <fieldset>
                      <legend>검색폼</legend>
                      <input
                        type="text"
                        id="cmsf2_input"
                        name="cmsf2_input"
                        placeholder="사건번호 혹은 사업명 입력"
                      />
                      <button type="submit" class="cpf_btn">
                        <span class="blind">검색</span>
                      </button>
                    </fieldset>
                  </form>
                </div>
                <div class="cms_list">
                  <ul>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/cities/announcement.do"
                        >열람공고</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="cms_box t3">
              <div class="cms_title">
                <h3>
                  감정평가사 <br />
                  의견등록
                </h3>
              </div>
              <div class="cms_wrap">
                <div class="cms_form">
                  <form id="cms_form3" name="cms_form3">
                    <fieldset>
                      <legend>검색폼</legend>
                      <input
                        type="text"
                        id="cmsf3_input"
                        name="cmsf3_input"
                        placeholder="사건번호 혹은 사업명 입력"
                      />
                      <button type="submit" class="cpf_btn">
                        <span class="blind">검색</span>
                      </button>
                    </fieldset>
                  </form>
                </div>
                <div class="cms_list">
                  <ul>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/appraiser/application.do"
                        >재결신청</a
                      >
                    </li>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/appraiser/agenda.do"
                        >심의안건 정보</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="cms_box t4">
              <div class="cms_title">
                <h3>재결관 전용</h3>
              </div>
              <div class="cms_wrap">
                <div class="cms_form">
                  <form id="cms_form3" name="cms_form3">
                    <fieldset>
                      <legend>검색폼</legend>
                      <input
                        type="text"
                        id="cmsf3_input"
                        name="cmsf3_input"
                        placeholder="사건번호 혹은 사업명 입력"
                      />
                      <button type="submit" class="cpf_btn">
                        <span class="blind">검색</span>
                      </button>
                    </fieldset>
                  </form>
                </div>
                <div class="cms_list">
                  <ul>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/decision/agenda.do"
                        >나의 심의 안건정보</a
                      >
                    </li>
                  </ul>
                </div>
                <div class="cms_latest">
                  <ul>
                    <li>
                      <a href="#" onclick="readyAlert();return false;"
                        >12월 2일 (5건)</a
                      >
                    </li>
                    <li>
                      <a href="#" onclick="readyAlert();return false;"
                        >12월 23일 (6건)</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="cms_box t5">
              <div class="cms_title">
                <h3>심의위원 전용</h3>
              </div>
              <div class="cms_wrap">
                <div class="cms_form">
                  <form id="cms_form3" name="cms_form3">
                    <fieldset>
                      <legend>검색폼</legend>
                      <input
                        type="text"
                        id="cmsf3_input"
                        name="cmsf3_input"
                        placeholder="사건번호 혹은 사업명 입력"
                      />
                      <button type="submit" class="cpf_btn">
                        <span class="blind">검색</span>
                      </button>
                    </fieldset>
                  </form>
                </div>
                <div class="cms_list">
                  <ul>
                    <li>
                      <a
                        href="${pageContext.request.contextPath}/deliberate/agenda.do"
                        >나의 심의 안건정보</a
                      >
                    </li>
                  </ul>
                </div>
                <div class="cms_latest">
                  <ul>
                    <li>
                      <a href="#" onclick="readyAlert();return false;"
                        >12월 2일 (5건)</a
                      >
                    </li>
                    <li>
                      <a href="#" onclick="readyAlert();return false;"
                        >12월 23일 (6건)</a
                      >
                    </li>
                    <li>
                      <a href="#" onclick="readyAlert();return false;"
                        >1월 4일 (3건)</a
                      >
                    </li>
                    <li>
                      <a href="#" onclick="readyAlert();return false;"
                        >1월 25일 (7건)</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="cm_wrap">
            <div class="cm_quick">
              <div class="cmq_title">
                <h3>
                  <mark>빠른</mark>
                  서비스
                </h3>
                <p>필요한 서비스로<br />빠르게 이동하세요!</p>
              </div>
              <div class="cmq_wrap">
                <ul>
                  <li>
                    <a href="#" onclick="readyAlert();return false;"
                      ><i class="cmq_icon t1"></i><span>재결사건 검색</span></a
                    >
                  </li>
                  <li>
                    <a href="#" onclick="readyAlert();return false;"
                      ><i class="cmq_icon t2"></i><span>재결관련</span>
                      <span>서류 업로드</span></a
                    >
                  </li>
                  <li>
                    <a href="#" onclick="readyAlert();return false;"
                      ><i class="cmq_icon t6"></i><span>열람공고</span></a
                    >
                  </li>
                  <li>
                    <a
                      href="${pageContext.request.contextPath}/land/committee.do"
                      ><i class="cmq_icon t3"></i><span>서울특별시</span>
                      <span>지방토지수용위원회</span> <span>위원명단</span></a
                    >
                  </li>
                </ul>
              </div>
            </div>
            <div class="cm_verdict">
              <div class="cmv_list t1">
                <h3><span>수용</span>재결</h3>
                <ul>
                  <li>
                    <span>금일</span> <span><mark>0</mark></span>
                  </li>
                  <li>
                    <span>금년</span> <span><mark>0</mark></span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <hr />

      <!-- footer start -->
      <jsp:include page="./components/footer.jsp" flush="false">
        <jsp:param name="login" value="login" />
      </jsp:include>
      <!-- footer end -->
    </div>

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
      $(document).ready(function () {
        console.log("배포됐는지 확인");
        let contextPath = $("#contextPath").val();
        let url = contextPath + "/api/join/judge";
        console.log("url", url);
        const join = $("#join");
        const caseNo = $("#caseNo");
        
        join.on("click", function () {
          console.log("data", caseNo.val());
          $.ajax({
            url: url + "?caseNo=" + caseNo.val(),
            type: "GET",
            //contentType : "application/json; charset=UTF-8",
            //data : JSON.stringify(data),
            async: false,
            success: function (data) {
                if (data.message === "success") {
                    if ($("#lu_radio11_1").is(":checked")) {
                      location.href =
                        contextPath +
                        "/member/implementer/join.do?caseNo=" +
                        data.caseNo;
                    } else if ($("#lu_radio22_2").is(":checked")) {
                      location.href =
                        contextPath +
                        "/member/cities/join.do?caseNo=" +
                        data.caseNo;
                    } else if ($("#lu_radio33_3").is(":checked")) {
                      location.href =
                        contextPath +
                        "/member/decision/join.do?caseNo=" +
                        data.caseNo;
                    }
                  } else {
                    alert(data.message);
                  }
                },
            error: function (xhr, status, error) {
              //에러!
              //alert("code:"+xhr.status);
            },
          });
        });
      });

      function readyAlert() {
        alert("준비중입니다.");
        return;
      }
    </script>
  </body>
</html>
