<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Cache-Control" content="no-cache">
	<title>재결정보지원센터</title>
	<meta name="description" content="재결정보지원센터">
	<meta name="keywords" content="재결정보지원센터">
	<meta name="author" content="재결정보지원센터" />
	<meta name="format-detection" content="telephone=no">
	<meta property="og:type" content="website">
	<meta property="og:title" content="재결정보지원센터">
	<meta property="og:site_name" content="재결정보지원센터">
	<meta property="og:description" content="재결정보지원센터">
	<meta property="og:image" content="../css/favicon_1200x630.png">
	<meta name="twitter:description" content="재결정보지원센터">
	<meta name="twitter:image" content="../css/favicon_270x270.png">
    <link rel="shortcut icon" href="../css/favicon_seoul.ico" />
    <link rel="icon" href="../css/favicon_seoul.ico" />
	<link rel="apple-touch-icon" href="../css/favicon_seoul.ico">

	<link rel="stylesheet" href="../css/init.css" />
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/layout.css" />
	<link rel="stylesheet" href="../css/sub.css" />
	<link rel="stylesheet" href="../css/owl.carousel.min.css" />
	<link rel="stylesheet" href="../css/jquery-ui.css" />
</head>
<body>
<div id="wrap">

	<form name="paging" method="get">
	    <input type="hidden" name="boardSeq" id="boardSeq" value="${boardSeq}">
	    <input type="hidden" name="viewSeq" id="viewSeq" value="">
	</form>


    <!-- header start -->
    <jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
		<jsp:param name="login" value="login" />
	</jsp:include> 
	<!-- header end -->
	
	<hr>
	<div id="contents" class="c_sub">
		<div class="wrap">
			<div class="sub_title sub_title07">
				<h2 class="title bold center">법률질의</h2>
			</div>
      	<!-- board submenu start -->
        	<jsp:include page="../../board/includes/submenu.jsp" flush="false">
				<jsp:param name="currentPage" value="${currentPage}" />
			</jsp:include> 
			<!-- board submenu end -->
			<div class="cs_wrap">
				<div class="cs_head">
					<h3 class="title bold cb">법률질의</h3>
				</div>
				<div class="cs_body">
					<div class="c_board">
						<div class="cb_lawyer">
							<div class="cbl_profile">
								<div class="cblp_pic">
									<img src="../images/common/pic_lawyer.jpg" alt="안재형 (安 宰 亨) 자문단" />
								</div>
								<span class="cblp_name">안재형 (安 宰 亨)</span>
								<span class="cblp_jop">변호사 / 감정평가사</span>
							</div>
							<div class="cbl_info">
								<ul class="cbli_list t1">
									<li><a href="tel:025695333">02-569-5333</a></li>
									<li><a href="mailto:jhahn@yoolhyun.com">jhahn@yoolhyun.com</a></li>
								</ul>
								<ul class="cbli_list t2">
									<li>
										<strong>학력</strong>
										<ul class="cbli_sub t1">
											<li><span><mark>2011</mark>건국대학교 부동산대학원 금육투자학과 졸업</span></li>
											<li><span><mark>2006</mark>제 48회 사법시험 합격</span></li>
											<li><span><mark>2003</mark>제 13회 공인중개사 시험합격</span></li>
											<li><span><mark>2002</mark>한국감정평가협회 부동산경매 컨설턴트과정 수료</span></li>
											<li><span><mark>2002</mark>한국해양대학교 졸업</span></li>
											<li><span><mark>2000</mark>제 11회 감정평가시험 합격</span></li>
										</ul>
									</li>
									<li>
										<strong>경력사항</strong>
										<ul class="cbli_sub">
											<li><span>제 48회 사법시험 합격</span></li>
											<li><span>제 38기 사법연수원 수료</span></li>
											<li><span>제 11회 감정평가사시험 합격</span></li>
											<li><span>제 13회 공인중개사시험 합격</span></li>
											<li><span>現 , 법무법인 율현 구성원 변호사</span></li>
										</ul>
									</li>
									<li>
										<strong>방송 출현</strong>
										<ul class="cbli_sub">
											<li><span>KBS 추적 60분</span></li>
											<li><span>MBC 아침마당</span></li>
											<li><span>MBC 리얼스토리 눈</span></li>
											<li><span>중앙일보 조인스랜드 </span></li>
											<li><span>  - ‘전문변호사를 만나다’</span></li>
										</ul>
									</li>
									<li>
										<strong>전문 분야</strong>
										<ul class="cbli_sub">
											<li><span>감정평가 관련 분쟁</span></li>
											<li><span>손실보상 분쟁</span></li>
											<li><span>어업피해 및 공해소송 분쟁</span></li>
											<li><span>공익사업 법률 자문</span></li>
											<li><span>부동산금융 및 투자 자문</span></li>
											<li><span>각종 건설 및 부동간 관연 분쟁 등</span></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						<div class="cb_total">
							<span id="allCount">전체 게시물 : <mark>0</marK></span>
						</div>
						<div class="cb_list">
							<div class="cbl_head">
								<div class="cbl_wrap">
									<div class="cbl_no">번호</div>
									<div class="cbl_subject">제목</div>
									<div class="cbl_name">작성자</div>
									<div class="cbl_date">날짜</div>
									<div class="cbl_hit">조회</div>
								</div>
							</div>
							<div class="cbl_body">
								<ul id="contentList">
									
								</ul>
							</div>
						</div>
						<div class="btn_wrap">
							<a href="${pageContext.request.contextPath}/board/inquiryLaw/write.do" class="fr btn t1">글쓰기</a>
						</div>
						<div class="paging">
							<div class="p_wrap" id="pageList">
								
							</div>
						</div>
						<div class="cb_search">
							<div class="cbs_wrap">
							<form id="cb_search">
								<fieldset>
									<legend>검색폼</legend>
									<select id="cbs_select" name="cbs_select" class="select">
										<option value="제목">제목</option>
										<option value="내용">내용</option>
									</select>
									<input type="text" id="cbs_input" name="cbs_input" class="input input40" placeholder="검색어를 입력하세요.">
									<button class="btn" type="submit">검색</button>
								</fieldset>
							</form>
							</div>
						</div>
					</div>
					<!-- 팝업, 사건번호 검색 S -->
					<div class="popup secret t1">
						<div class="p_box">
							<div class="p_head">
								<h3 class="p_title">비밀번호 확인</h3>
								<a href="#!" class="p_close"><span class="blind">닫기</span></a>
							</div>
							<div class="p_body">
								<form name="verify_password">
									<div class="p_password">
										<div class="pp_txt">비밀번호 입력</div>
										<input type="text" id="vp_pw" name="vp_pw" class="input" required/>
										<div class="mt30 btn_wrap">
											<ul>
												<li><a href="#!" class="btn">취소</a></li>
												<li><button type="submit" class="btn t1">확인</button></li>
											</ul>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- 팝업, 사건번호 검색 E -->
				</div>
			</div>
		</div>
	</div>
	<hr>
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
		
	<script src="../lib/jquery.min.js"></script>
	<script src="../lib/owl.carousel.min.js"></script>
	<script src="../lib/charts.js"></script>
	<script src="../lib/jquery-ui.min.js"></script>
	<script src="../lib/lib.js"></script>
	
	<!--common start-->
	<script src="../js/common.js"></script>
	
	<script src="../js/board/list/block.js"></script>
	<script src="../js/board/list/list.js"></script>
	
	<script>

        $(document).ready(function () {

          	//board content list
            getBoardContentList(1);

            //enter-event start
          /*   $('#searchInput').keydown(function(event){
                let keyCode = (event.keyCode ? event.keyCode : event.which);

                if (keyCode == 13) {
                    submitBLogList();
                }

            });


            $('#sButton').click(function(){
                submitBLogList();
            });

            $('#selectRow').change(function(){
                submitBLogList();
            });
 */

        });

    </script>
		

</body>
</html>