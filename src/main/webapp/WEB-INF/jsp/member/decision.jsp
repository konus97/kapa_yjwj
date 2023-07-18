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
		<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
		<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
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
    </head>
    <body>
        <div id="wrap">
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->
            <hr />
            <div id="contents" class="c_sub join">
                <div class="wrap">
                    <div class="cs_join">
                        <h2 class="title ck medium">
                            감정평가사 회원 정보 입력
                        </h2>
                    </div>
                    <form class="form" method="POST" id="registerForm">
                        <fieldset>
                            <legend>회원가입</legend>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">핸드폰 번호</span>
                                </div>
                                <div class="input-right">
                                    <input
                                        type="text"
                                        name="id"
                                        class="with-btn-input input40"
                                    />
                                    <button class="btn">인증</button>
                                </div>
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">비밀번호</span>
                                </div>
                                <input
                                    type="text"
                                    class="input-right input40"
                                    placeholder="8~12자 영문, 숫자, 특수문자"
                                    required
                                />
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">비밀번호 확인</span>
                                </div>
                                <input
                                    type="text"
                                    name="pwd"
                                    class="input-right input40"
                                    placeholder="8~12자 영문, 숫자, 특수문자"
                                    required
                                />
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">연락처</span>
                                </div>
                                <input
                                    type="text"
                                    class="input-right input40"
                                    placeholder="연락처를 입력하세요."
                                    name="mobile"
                                    required
                                />
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">소속</span>
                                </div>
                                <input
                                    type="text"
                                    class="input-right input40"
                                    placeholder="소속을 입력하세요."
                                    name="dept"
                                    required
                                />
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">이메일</span>
                                </div>
                                <div class="input-right">
                                    <input type="text" class="wid25 input40" required name="email"/>
                                    @
                                    <input type="text" class="wid25 input40" required name="domain"/>
                                    <select class="select">
                                        <option>직접 입력</option>
                                        <option>naver.com</option>
                                        <option>naver.com</option>
                                    </select>
                                </div>
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">평가법인</span>
                                </div>
                                <input type="text" class="input-right input40" name="company" required/>
                            </div>
                            <div class="input-wrap">
                                <div class="input-left">
                                    <span class="required">담당자명</span>
                                </div>
                                <input
                                    type="text"
                                    required
                                    class="input-right input40"
                                    name="responsibilityName"
                                />
                            </div>
                            <div class="input-wrap">
                                <div class="input-left"><span>전화</span></div>
                                <input type="text" class="input-right input40" name="phoneNumber"/>
                            </div>
                            <div class="btn_wrap">
                                <button class="btn middle" id="submit">확인</button>
                                <button class="btn middle t1" id="cancel">취소</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            <hr />
            <!-- footer start -->
		    <jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
		    <!-- footer end -->
        </div>

        <!-- 팝업, 로그인 S -->
        <div class="popup login">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">MEMBERSHIP LOGIN</h3>
                    <a href="#!" class="p_close"
                        ><span class="blind">닫기</span></a
                    >
                </div>
                <div class="p_body">
                    <form id="login_user" class="on">
                        <fieldset>
                            <legend>검색폼</legend>
                            <div class="tab div2">
                                <ul>
                                    <li class="on">
                                        <button type="button" class="l_user">
                                            휴대폰로그인
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="l_admin">
                                            계정로그인
                                        </button>
                                    </li>
                                </ul>
                            </div>
                            <div class="form login">
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title">
                                            <label for="lu_call"
                                                >핸드폰번호</label
                                            >
                                        </div>
                                        <div class="ff_wrap">
                                            <span class="ff_group tel">
                                                <label
                                                    for="lu_call_0"
                                                    class="blind"
                                                    >선택</label
                                                >
                                                <select
                                                    name="lu_call"
                                                    id="lu_call_0"
                                                    title="전화번호 첫번째 자리 선택"
                                                    class="input"
                                                    required
                                                >
                                                    <option value="010">
                                                        010
                                                    </option>
                                                    <option value="011">
                                                        011
                                                    </option>
                                                    <option value="017">
                                                        017
                                                    </option>
                                                    <option value="018">
                                                        018
                                                    </option>
                                                    <option value="019">
                                                        019
                                                    </option>
                                                </select>
                                            </span>
                                            <span class="ff_group tel">
                                                <input
                                                    type="text"
                                                    id="lu_call_2"
                                                    name="lu_call"
                                                    class="input"
                                                    maxlength="4"
                                                    required
                                                />
                                            </span>
                                            <span class="ff_group tel">
                                                <input
                                                    type="text"
                                                    id="lu_call_1"
                                                    name="lu_call"
                                                    class="input"
                                                    maxlength="4"
                                                    required
                                                />
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title">
                                            <label for="lu_name">담당자</label>
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="lu_name"
                                                name="lu_name"
                                                class="input"
                                                placeholder="담당자"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title">
                                            <label for="lu_agency"
                                                >기관구분</label
                                            >
                                        </div>
                                        <div class="ff_wrap">
                                            <ul>
                                                <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio1"
                                                            id="lu_radio1_1"
                                                            checked
                                                        />
                                                        <label for="lu_radio1_1"
                                                            ><i></i
                                                            ><span class="text"
                                                                >사업시행자</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li>
                                                <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio1"
                                                            id="lu_radio1_2"
                                                        />
                                                        <label for="lu_radio1_2"
                                                            ><i></i
                                                            ><span class="text"
                                                                >감정평가사</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_btn">
                                    <button class="btn" type="submit">
                                        로그인
                                    </button>
                                    <a
                                        class="btn join t1"
                                        href="./member/join.html"
                                        >회원가입</a
                                    >
                                </div>
                            </div>
                        </fieldset>
                    </form>

                    <form id="login_admin" action="./admin/user.html">
                        <fieldset>
                            <legend>검색폼</legend>
                            <div class="tab div2">
                                <ul>
                                    <li>
                                        <button type="button" class="l_user">
                                            휴대폰로그인
                                        </button>
                                    </li>
                                    <li class="on">
                                        <button type="button" class="l_admin">
                                            계정로그인
                                        </button>
                                    </li>
                                </ul>
                            </div>
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
                                                name="lu_id"
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
                                            <label for="lu_password"
                                                >비밀번호</label
                                            >
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="lu_password"
                                                name="lu_password"
                                                class="input"
                                                placeholder="비밀번호"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title">
                                            <label for="lu_agency"
                                                >기관구분</label
                                            >
                                        </div>
                                        <div class="ff_wrap">
                                            <ul>
                                                <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio2"
                                                            id="lu_radio2_1"
                                                            checked
                                                        />
                                                        <label for="lu_radio2_1"
                                                            ><i></i
                                                            ><span class="text"
                                                                >시·군·구</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li>
                                                <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio2"
                                                            id="lu_radio2_2"
                                                        />
                                                        <label for="lu_radio2_2"
                                                            ><i></i
                                                            ><span class="text"
                                                                >재결관</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li>
                                                <li>
                                                    <span class="radio">
                                                        <input
                                                            type="radio"
                                                            name="lu_radio2"
                                                            id="lu_radio2_3"
                                                        />
                                                        <label for="lu_radio2_3"
                                                            ><i></i
                                                            ><span class="text"
                                                                >심위의원</span
                                                            ></label
                                                        >
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_btn">
                                    <button class="btn" type="submit">
                                        로그인
                                    </button>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                    <p class="text tiny bold cb">
                        * 로그인 하시면 재결감정평가서정보지원센터 시스템의 모든
                        정보를 이용하실 수 있습니다.
                    </p>
                    <ul class="member_find">
                        <li><a href="#find">아이디/비밀번호 찾기</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 팝업, 로그인 E -->
        <!-- 아이디, 비번 찾기 S -->
        <div class="popup find">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">아이디 찾기</h3>
                    <a href="#!" class="p_close"><span class="blind">닫기</span></a>
                </div>
                <div class="p_body">
                    <form id="findId" class="on">
                        <fieldset>
                            <legend>검색폼</legend>
                            <div class="tab div2">
                                <ul>
                                    <li class="on">
                                        <button type="button" class="find_id">
                                            아이디 찾기
                                        </button>
                                    </li>
                                    <li>
                                        <button type="button" class="find_pw">
                                            비밀번호 찾기
                                        </button>
                                    </li>
                                </ul>
                            </div>
                            <div class="form find">
                                <div class="confirm_title">인증방법</div>
                                <div class="confirm_radio_wrap">
                                    <div class="radio">
                                        <input type="radio" id="idMail" name="confirm_radio" checked />
                                        <label for="idMail"><i></i> <span class="text">등록된 이메일로 찾기</span></label>
                                    </div>
                                    <div class="radio">
                                        <input type="radio" id="idNum" name="confirm_radio" />
                                        <label for="idNum"><i></i> <span class="text">등록된 휴대폰번호로 찾기</span></label>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_name">이름</label>
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="lu_name"
                                                name="lu_name"
                                                class="input40"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap confirm_box find_mail on">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_mail"
                                                >이메일</label
                                            >
                                        </div>
                                        <div class="ff_wrap input-wrap" style>
                                            <input type="text" class="wid25 input40" required="">
                                            @
                                            <input type="text" class="wid25 input40" required="">
                                            <select class="select">
                                                <option>직접 입력</option>
                                                <option>naver.com</option>
                                                <option>naver.com</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap confirm_box find_num">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_num"
                                                >핸드폰번호</label
                                            >
                                        </div>
                                        <div class="ff_wrap input-wrap" style>
                                            <input type="text" class="input40" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_btn btn_wrap mt30">
                                    <button class="btn" type="submit">
                                       	 확인
                                    </button>
                                    <!-- 확인 버튼 클릭 시 
                                        성공 : #id_show 모달창 노출해야합니다. 
                                        실패 : alert('입력하신 정보와 일치하는 아이디가 없습니다.\n정보를 다시 확인하시고 시도해 주세요.');
                                    -->
                                </div>
                            </div>
                        </fieldset>
                    </form>

                    <form id="findPw">
                        <fieldset>
                            <legend>검색폼</legend>
                            <div class="tab div2">
                                <ul>
                                    <li>
                                        <button type="button" class="find_id">
                                            	아이디 찾기
                                        </button>
                                    </li>
                                    <li class="on">
                                        <button type="button" class="find_pw">
                                           	 비밀번호 찾기
                                        </button>
                                    </li>
                                </ul>
                            </div>
                            <div class="form find">
                                <div class="confirm_title">인증방법</div>
                                <div class="confirm_radio_wrap">
                                    <div class="radio">
                                        <input type="radio" id="pwMail" name="confirm_radio2" checked />
                                        <label for="pwMail"><i></i> <span class="text">등록된 이메일로 찾기</span></label>
                                    </div>
                                    <div class="radio">
                                        <input type="radio" id="pwNum" name="confirm_radio2" />
                                        <label for="pwNum"><i></i> <span class="text">등록된 휴대폰번호로 찾기</span></label>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_id">아이디</label>
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="lu_id"
                                                name="lu_id"
                                                class="input40"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_name">이름</label>
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="lu_name"
                                                name="lu_name"
                                                class="input40"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap confirm_box find_mail on">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_mail"
                                                >이메일</label
                                            >
                                        </div>
                                        <div class="ff_wrap input-wrap" style>
                                            <input type="text" class="wid25 input40" required="">
                                            @
                                            <input type="text" class="wid25 input40" required="">
                                            <select class="select">
                                                <option>직접 입력</option>
                                                <option>naver.com</option>
                                                <option>naver.com</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap confirm_box find_num">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="lu_num"
                                                >핸드폰번호</label
                                            >
                                        </div>
                                        <div class="ff_wrap input-wrap" style>
                                            <input type="text" class="input40" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="f_btn btn_wrap mt30">
                                    <button class="btn" type="submit">
                                        확인
                                    </button>
                                    <!-- 확인 버튼 클릭 시 
                                        이메일로 찾기 성공 : alert('이메일 임시 비밀번호를 발급합니다./n로그인 후 비밀번호를 변경해주세요.'); 
                                        폰번호로 찾기 성공 : .findPwModal 모달창 노출
                                        실패 : alert('입력하신 정보와 일치하는 아이디가 없습니다./n정보를 다시 확인하시고 시도해 주세요.'); 
                                    -->
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <!-- 아이디, 비번 찾기 E -->

        <!-- 아이디 노출 popup S -->
        <div class="popup id_show modal">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">아이디 찾기</h3>
                    <a href="#!" class="p_close"
                        ><span class="blind">닫기</span></a
                    >
                </div>
                <div class="p_body">
                    <p class="txt-c">
                        입력하신 정보와 일치하는 아이디는 다음과 같습니다.
                    </p>
                    <ul class="txt-c mt40">
                        <li class="bold text">test****</li>
                        <li class="bold text">2022.03.01 가입</li>
                    </ul>
                    <div class="btn_wrap txt-c">
                        <a href="#!" class="btn t3">확인</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 아이디 노출 popup E -->
        <!-- 비밀번호 찾기 popup S -->
        <div class="popup pw_show findPwModal">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">비밀번호 찾기</h3>
                    <a href="#!" class="p_close"
                        ><span class="blind">닫기</span></a
                    >
                </div>
                
                <div class="p_body">
                    <form id="findId" class="on">
                        <fieldset>
                            <legend>검색폼</legend>
                            <p class="text txt-c">
                                인증번호가 발송되었습니다.<br/>
                                알림톡 또는 SMS에서 인증번호를 확인해 주세요.<br/>
                                인증번호는 10분간 유효하며 이후에는 인증이 불가합니다.
                            </p>
                            <div class="confirm_num_wrap input-wrap mt40">
                                <label for="confirmNum">인증번호 : </label>
                                <input type="text" class="input40 wid75 ml10" id="confirmNum" placeholder="인증번호를 입력하세요" />
                            </div>
                            <div class="f_btn btn_wrap mt30">
                                <button class="btn" type="submit">
                                    확인
                                </button>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <form class="p_body">
                    <p class="text txt-c">
                    </p>
                    <div class="btn_wrap mt40 txt-c">
                        <button class="btn t3">확인</button>
                        <!-- 확인버튼 클릭시 .newPwModal 모달창 노출  -->
                    </div>
                </form>
            </div>
        </div>
        <!-- 비밀번호 찾기 popup E -->
        <!-- 임시 비밀번호 popup S -->
        <div class="popup pw_show newPwModal">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">임시 비밀번호</h3>
                    <a href="#!" class="p_close"><span class="blind">닫기</span></a>
                </div>
                <div class="p_body">
                    <form id="findId" class="on">
                        <fieldset>
                            <legend>검색폼</legend>
                            <p class="text txt-c">
                                휴대폰 확인이 완료되었습니다. 비밀번호를 설정해 주세요.
                            </p>
                            <div class="form t1 wide mt40">
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="newPw">새 비밀번호</label>
                                        </div>
                                        <div class="ff_wrap">
                                            <input
                                                type="text"
                                                id="newPw"
                                                name="newPw"
                                                class="input40"
                                                required
                                            />
                                        </div>
                                    </div>
                                </div>
                                <div class="f_wrap">
                                    <div class="f_field">
                                        <div class="ff_title h40">
                                            <label for="newPwRe"
                                                >새 비밀번호 확인</label
                                            >
                                        </div>
                                        <div class="ff_wrap input-wrap">
                                            <input
                                                type="text"
                                                id="newPw"
                                                name="newPwRe"
                                                class="input40"
                                                required
                                            />
                                    </div>
                                </div>
                            </div>
                            <div class="f_btn btn_wrap mt30">
                                <button class="btn" type="submit">
                                    확인
                                </button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
        <div class="popup">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">비밀번호 찾기</h3>
                    <a href="#!" class="p_close"
                        ><span class="blind">닫기</span></a
                    >
                </div>
                <form class="p_body on">
                    <p class="text txt-c">
                        휴대폰 확인이 완료되었습니다. 비밀번호를 설정해 주세요.
                    </p>
                    <div class="new_pw_wrap input-wrap mt40">
                        <label for="newPw">새 비밀번호 : </label>
                        <input type="text" class="input40 wid75 ml10" id="newPw">
                    </div>
                    <div class="new_pw_wrap input-wrap ">
                        <label for="newPwRe">새 비밀번호 확인 : </label>
                        <input type="text" class="input40 wid75 ml10" id="newPwRe">
                    </div>
                    <div class="btn_wrap mt40 txt-c">
                        <button class="btn t3">확인</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- 비밀번호 찾기 popup E -->

        <script src="../../lib/jquery.3.1.0.min.js"></script>
        <script src="../../lib/owl.carousel.min.js"></script>
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>
      	<!--common start-->
		<script src="../../js/common.js"></script>
		
        <script type="text/javascript">
  
        var csrfToken = $("meta[name='_csrf']").attr("content");
        var csrfHeader = $("meta[name='_csrf_header']").attr("content");
        $(document).ready(function () {
        	let contextPath = $('#contextPath').val();
        	let url = contextPath + "/api/join/appraiser"
        	
        	$('#registerForm').on('submit', function(e){
        		e.preventDefault();
	        	const data = {
		    			"id" : $("input[name=id]")[0].value,
		    			"pwd" : $("input[name=pwd]")[0].value,
		    			"email" : $("input[name=email]")[0].value,
		    			"domain" : $("input[name=domain]")[0].value,
		     			"company" : $("input[name=company]")[0].value,
		     			"responsibilityName" : $("input[name=responsibilityName]")[0].value,
		     			"phoneNumber" : $("input[name=phoneNumber]")[0].value,
			     		"mobile" : $("input[name=mobile]")[0].value,
			     		"dept" : $("input[name=dept]")[0].value,
		    		}
		        	
		        	            		
		        		$.ajax({
		        			url : url,
		        			type : "POST",
		        			contentType : "application/json; charset=UTF-8",
		        			data : JSON.stringify(data),
		        			async: false, 
		        			beforeSend : function(xhr){
		        				xhr.setRequestHeader(csrfHeader, csrfToken);
		        			},
		        			success : function(data) {
		        				alert("회원가입이 완료됐습니다.");
		        				location.href=contextPath + "/#login"
		        			},
		        			error : function(xhr, status, error) {
		        				//에러!
		        				alert("code:"+xhr.status);
		        			}
		        		});
        	})
        	$('#cancel').on('click', function(){
        		location.href=contextPath + "/#login"
        	})
        	
        	
        	
        	
        	
        });
        </script>
    </body>
</html>
