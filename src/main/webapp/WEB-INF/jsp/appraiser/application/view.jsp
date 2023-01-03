<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        <meta name="twitter:image" content="../../css/favicon_270x270.png" />
        <link rel="shortcut icon" href="../../css/favicon_seoul.ico" />
        <link rel="icon" href="../../css/favicon_seoul.ico" />

        <link rel="apple-touch-icon" href="../../css/favicon_seoul.ico" />
        <link rel="stylesheet" href="../../css/init.css" />
        <link rel="stylesheet" href="../../css/common.css" />
        <link rel="stylesheet" href="../../css/layout.css" />
        <link rel="stylesheet" href="../../css/sub.css" />
        <link rel="stylesheet" href="../../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../../css/jquery-ui.css" />
    </head>
    <body>
		<div id="wrap">
        
        	<input type="hidden" name="decisionId" id="decisionId" value="${decisionId}">
            <input type="hidden" name="masterId" id="masterId" value="${masterId}">
       
        
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title02">
                        <h2 class="title bold center">재결접수</h2>
                    </div>
                   
					<!-- implementer submenu start -->
		          	<jsp:include page="../../decision/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- implementer submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">재결의견작성 상세</h3>
                        </div>
                        <div class="cs_body">
                            <form class="decision_form" name="inquiry_view">
                                <div class="step div6">
                                    <ol>
                                        <li class="start">
                                            <div class="s_wrap">
                                                <strong
                                                    >STEP
                                                    <mark>01</mark></strong
                                                >
                                                <span>재결신청</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="s_wrap">
                                                <strong
                                                    >STEP
                                                    <mark>02</mark></strong
                                                >
                                                <span>재결접수</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="s_wrap">
                                                <strong
                                                    >STEP
                                                    <mark>03</mark></strong
                                                >
                                                <span>열람공고</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="s_wrap on">
                                                <strong
                                                    >STEP
                                                    <mark>04</mark></strong
                                                >
                                                <span>심의안건의뢰</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="s_wrap ">
                                                <strong
                                                    >STEP
                                                    <mark>05</mark></strong
                                                >
                                                <span>재결 진행중</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="s_wrap">
                                                <strong
                                                    >STEP
                                                    <mark>06</mark></strong
                                                >
                                                <span>심사완료</span>
                                            </div>
                                        </li>
                                    </ol>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	사업 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건번호</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                	${avo.caseNo}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건명</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>
                                            	 ${avo.judgBizNm}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>접수일자</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>
                                                	${avo.recvDt}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>진행상태</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>-</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>시행자가격시점</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.priceDt}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>재결구분</label>
                                            </div>
                                            <div class="ff_wrap">
                                            	<p>${avo.judeDivCdName}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>수용재결법인</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p></p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>협의법인</label>
                                            </div>
                                            <div class="ff_wrap">
                                     		  <p>${avo.csltApprInstNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                      	  담당자 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>시행자명</label>
                                            </div>
                                            <div class="ff_wrap">
                                            	<p>${avo.bizOprtNm}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업유형</label>
                                            </div>
                                            <div class="ff_wrap">
                                              <p>${avo.bizTpCd}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>소재지</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                  ${avo.reptLoc}	
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	조서 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>지장물수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('goods','${objectCount}');return false;" >${objectCount}건<i class="icon search"></i ></a>
                                                </p>
                                            </div>
                                        </div>
                                  		<div class="f_field div2">
                                            <div class="ff_title">
                                                <label>필지수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx" onclick="openPopup('land','${landCount}');return false;">${landCount}건<i class="icon search" ></i></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                       <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>지장물소유자수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('goodsowner','${objectRightCount}');return false;" >${objectRightCount}명<i class="icon search"></i></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>필지소유자수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('landsowner','${landRightCount}');return false;" >${landRightCount}명<i class="icon search"></i ></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>면적</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${totalAreaAmot}㎡</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>종전금액합계(원)</label>
                                            </div>
                                            <div class="ff_wrap">
                                                 <p>${totalCost}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                      	  비고
                                    </h4>
                                </div>
                                <div class="form t2">
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label for="bw_subject"
                                                    >제출기한
                                                </label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>-</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label for="bw_subject"
                                                    >사업시행자
                                                  	  담당자(연락처)</label
                                                >
                                            </div>
                                            <div class="ff_wrap">
                                                 <p>
                                                	${avo.bizOprtIchrNm}                                             	
                                                   	 <a
                                                        href="tel:${avo.bizOprtPhoneNo}"
                                                        class="cx"
                                                        >${avo.bizOprtPhoneNo}</a
                                                    >
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	 소유자의견 및 사업시행자 의견 작성 (필지)
                                    </h4>
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
                                                <th>지분</th>
                                                <th>소재지</th>
                                                <th>지번</th>
                                                <th>본번</th>
                                                <th>부번</th>
                                                <th>공</th>
                                                <th>실</th>
                                                <th>면적</th>
                                                <th>단가</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        
                                        <c:forEach var="applicationLandDTO" items="${landList}" varStatus="status">
										<c:set var ="i" value="${i+1}"/>
								
											<tr>
                                                <th>
                                                    <strong>${i}</strong>
                                                </th>
                                                <td>
                                                    <strong>소유자</strong>
                                                    <span>
                                                        <a
                                                            href="#!"
                                                            class="cx owner"
                                                            >${applicationLandDTO.ownrNnm}</a>
                                                    </span>
                                                </td>
                                                <td>
                                                    <strong>지분</strong>
                                                    <span>${applicationLandDTO.landShre}</span>
                                                </td>
                                                <td class="left">
                                                    <strong>소재지</strong>
                                                    <span>${applicationLandDTO.reptAddr}</span>
                                                </td>
                                                <td>
                                                    <strong>지번</strong>
                                                    <span>${applicationLandDTO.sidoGunguCd}</span>
                                                </td>
                                                <td>
                                                    <strong>본번</strong>
                                                    <span>${applicationLandDTO.mainStrtNo}</span>
                                                </td>
                                                <td>
                                                    <strong>부번</strong>
                                                    <span>${applicationLandDTO.subStrtNo}</span>
                                                </td>
                                                <td>
                                                    <strong>공</strong>
                                                    <span>${applicationLandDTO.obstStuc1Nm}</span>
                                                </td>
                                                <td>
                                                    <strong>실</strong>
                                                    <span>${applicationLandDTO.obstStuc2Nm}</span>
                                                </td>
                                                <td>
                                                    <strong>면적</strong>
                                                    <span>${applicationLandDTO.areaAmot}${applicationLandDTO.areaUnit}</span>
                                                </td>
                                                <td>
                                                    <strong>단가</strong>
                                                    <span>${applicationLandDTO.befUnitCost}</span>
                                                </td>
                                            </tr>
                                            
                               <tr class="check_wrap opinionData"  data-seq="${i}">
                                                <td colspan="14">
                                                    <div class="check_inner">
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                01
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-1"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="1"
                                                                    data-title="지연가산금"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >지연가산금</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                02
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-2"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="2"
                                                                    data-title="보상금 증액"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >보상금 증액</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                03
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-3"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="3"
                                                                    data-title="허가건축물 등 불법형질변경"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >허가건축물 등 불법형질변경</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                04
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-4"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="4"
                                                                    data-title="일단지  보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >일단지  보상</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                05
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-5"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="5"
                                                                    data-title="미지금 용지"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >미지금 용지</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                06
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-6"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="6"
                                                                    data-title="사도평가"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >사도평가</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                07
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-7"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="7"
                                                                    data-title="잔여지 매수청구"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여지 매수청구</label  >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                08
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationLandDTO.reptSeq}-8"
                                                           			class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="8"
                                                                    data-title="잔여지  가치하락"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여지  가치하락</label >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                09
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-9"
                                                          			class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="9"
                                                                    data-title="잔여건물 가치감소"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여건물 가치감소</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                10
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-10"
                                                           			class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="10"
                                                                    data-title="잔여건물 매수청구"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여건물 매수청구</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                11
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-11"
                                                              		class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="11"
                                                                    data-title="누락 물건 반영"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >누락 물건 반영</label >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                12
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-12"
                                                             		class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="12"
                                                                    data-title="휴업보상(이전비)평가"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >휴업보상(이전비)평가</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                13
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-13"
                                                               		class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="13"
                                                                    data-title="폐업보상"
                                                                    disabled
                                                                />
                                                                <label for="opinion_check">폐업보상 </label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                14
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-14"
                                                             		class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="14"
                                                                    data-title="영농손실보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >영농손실보상</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                15
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-15"
                                                             		class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="15"
                                                                    data-title="휴직(실직)보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >휴직(실직)보상</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                16
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-16"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="16"
                                                                    data-title="사업폐지(취소, 변경, 중단)"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >사업폐지(취소, 변경, 중단)
																</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                17
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-17"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="17"
                                                                    data-title="이주대책 수립 "
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >이주대책 수립
																</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                18
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationLandDTO.reptSeq}-18"
                                                                	class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="18"
                                                                    data-title="이주정착금, 주거이전비, 이사비 "
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >이주정착금, 주거이전비, 이사비</label
                                                               >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                19
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationLandDTO.reptSeq}-19"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="19"
                                                                    data-title="임료손실"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >임료손실</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                20
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationLandDTO.reptSeq}-20"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="20"
                                                                    data-title="대토보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >대토보상</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                21
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                                	
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationLandDTO.reptSeq}-21"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="21"
                                                                    data-title="구분지상권"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >구분지상권</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                22
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                   
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationLandDTO.reptSeq}-22"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="22"
                                                                    data-title="10%이상 변동"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >10%이상 변동
																</label >
                                                            </div>
                                                        </div>
                                                        
                                                                                  <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                23
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                               	
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationLandDTO.reptSeq}-23"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="23"
                                                                    data-title="기타(그 외)"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                  >기타(그 외)

																</label>
                                                            </div>
                                                        </div>
                                                        
                                                                                  <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                24
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                                  
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationLandDTO.reptSeq}-24"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationLandDTO.reptSeq}"
                                                                    data-type="24"
                                                                    data-title="소유자 의견 없음"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >소유자 의견 없음
																</label>
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                    
                                                    <div class="c_board checkContentList" >
                                                    
	                                                    <div class="cb_list">
															<div class="cbl_head">
																<div class="cbl_wrap">
																	<div class="cbl_no">번호</div>
														
																	<div class="cbl_subject">제목</div>
																	<div class="cbl_name2">파일수</div>
																	<div class="cbl_date2">항목</div>
											
																</div>
															</div>
															<div class="cbl_body">

																<ul id="contentList${applicationLandDTO.reptSeq}" >
																
																  
																  
																</ul>
															</div>
														</div>
                                                    
                                                    </div>
                                                    
                                                    <div
                                                        class="check_area_wrap">
                                                        <div>
                                                            <label
                                                                for="check_textarea"
                                                                class="check_area_label"
                                                                >소유자  의견</label
                                                            >
                                                            <textarea
                                                            	id="ownerOpinion${applicationLandDTO.reptSeq}"
                                                                class="check_area textarea ownerOpinion"
                                                                data-seq="${applicationLandDTO.reptSeq}"
                                                                cols="30"
                                                                rows="10"
                                                                disabled
                                                            ></textarea>
                                                        </div>
                                                        <div>
                                                            <label
                                                                for="check_textarea2"
                                                                class="check_area_label"
                                                                >사업시행자  의견</label
                                                            >
                                                            <textarea
                                                            	id="executorOpinion${applicationLandDTO.reptSeq}"
                                                                class="check_area textarea executorOpinion"
                                                                data-seq="${applicationLandDTO.reptSeq}"
                                                                cols="30"
                                                                rows="10"
                                                                disabled
                                                            ></textarea>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
									
                                     	</c:forEach>
                                            
                                            
                                        </tbody>
                                    </table>
                                </div>
                                
                                  <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	 소유자의견 및 사업시행자 의견 작성 (지장물)
                                    </h4>
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
				                                   <th>지분</th>
				                                   <th>소재지</th>
				                                   <th>본번</th>
				                                   <th>부번</th>
				                                   <th>부번2</th>
				                                   <th>
				                                  	     물건종류
				                                   </th>
				                                   <th>
				                                   	    물건구조
				                                   </th>
				                                   <th>
				                                      	 면적/수량
				                                   </th>
				                                   <th>단가</th>
				                               </tr>
                                        </thead>
                                        <tbody>
                                     
                                     <c:forEach var="applicationGoodsDTO" items="${goodList}" varStatus="status">
										<c:set var ="i" value="${i+1}"/>
								
											<tr>
                                                <th>
                                                    <strong>${i}</strong>
                                                </th>
                                                <td>
                                                    <strong>소유자</strong>
                                                    <span>
                                                        <a
                                                            href="#!"
                                                            class="cx owner"
                                                            >${applicationGoodsDTO.ownrNnm}</a>
                                                    </span>
                                                </td>
                                                <td>
                                                    <strong>지분</strong>
                                                    <span>${applicationGoodsDTO.landShre}</span>
                                                </td>
                                                <td class="left">
                                                    <strong>소재지</strong>
                                                    <span>${applicationGoodsDTO.reptAddr}</span>
                                                </td>                                         
                                                <td>
                                                    <strong>본번</strong>
                                                    <span>${applicationGoodsDTO.mainStrtNo}</span>
                                                </td>
                                                <td>
                                                    <strong>부번</strong>
                                                    <span>${applicationGoodsDTO.subStrtNo}</span>
                                                </td>
                                                 <td>
                                                    <strong>부번2</strong>
                                                    <span>${applicationGoodsDTO.strtOther}</span>
                                                </td>
                                                
                                                 <td>
                                                    <strong>물건종류</strong>
                                                    <span>${applicationGoodsDTO.obstStuc1Nm}</span>
                                                </td>
                                                
                                                   <td>
                                                    <strong>물건구조</strong>
                                                    <span>${applicationGoodsDTO.obstKindNm}</span>
                                                </td>
                                           
                                                <td>
                                                    <strong>면적</strong>
                                                    <span>${applicationGoodsDTO.areaAmot}${applicationGoodsDTO.areaUnit}</span>
                                                </td>
                                                <td>
                                                    <strong>단가</strong>
                                                    <span>${applicationGoodsDTO.befUnitCost}</span>
                                                </td>
                                            </tr>
                                            
                                                          <tr class="check_wrap opinionData"  data-seq="${i}">
                                                <td colspan="14">
                                                    <div class="check_inner">
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                01
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-1"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="1"
                                                                    data-title="지연가산금"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >지연가산금</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                02
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-2"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="2"
                                                                    data-title="보상금 증액"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >보상금 증액</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                03
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-3"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="3"
                                                                    data-title="허가건축물 등 불법형질변경"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >허가건축물 등 불법형질변경</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                04
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-4"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="4"
                                                                    data-title="일단지  보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >일단지  보상</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                05
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-5"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="5"
                                                                    data-title="미지금 용지"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >미지금 용지</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                06
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-6"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="6"
                                                                    data-title="사도평가"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >사도평가</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                07
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-7"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="7"
                                                                    data-title="잔여지 매수청구"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여지 매수청구</label  >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                08
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                              id="opinionCheck${applicationGoodsDTO.reptSeq}-8"
                                                           			class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="8"
                                                                    data-title="잔여지  가치하락"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여지  가치하락</label >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                09
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-9"
                                                          			class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="9"
                                                                    data-title="잔여건물 가치감소"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여건물 가치감소</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                10
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-10"
                                                           			class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="10"
                                                                    data-title="잔여건물 매수청구"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >잔여건물 매수청구</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                11
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-11"
                                                              		class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="11"
                                                                    data-title="누락 물건 반영"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >누락 물건 반영</label >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                12
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-12"
                                                             		class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="12"
                                                                    data-title="휴업보상(이전비)평가"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >휴업보상(이전비)평가</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                13
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-13"
                                                               		class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="13"
                                                                    data-title="폐업보상"
                                                                    disabled
                                                                />
                                                                <label for="opinion_check">폐업보상 </label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                14
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-14"
                                                             		class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="14"
                                                                    data-title="영농손실보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >영농손실보상</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                15
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-15"
                                                             		class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="15"
                                                                    data-title="휴직(실직)보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >휴직(실직)보상</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                16
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-16"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="16"
                                                                    data-title="사업폐지(취소, 변경, 중단)"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >사업폐지(취소, 변경, 중단)
																</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                17
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-17"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="17"
                                                                    data-title="이주대책 수립 "
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >이주대책 수립
																</label>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                18
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                     id="opinionCheck${applicationGoodsDTO.reptSeq}-18"
                                                                	class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="18"
                                                                    data-title="이주정착금, 주거이전비, 이사비 "
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >이주정착금, 주거이전비, 이사비</label
                                                               >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                19
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationGoodsDTO.reptSeq}-19"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="19"
                                                                    data-title="임료손실"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >임료손실</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                20
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationGoodsDTO.reptSeq}-20"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="20"
                                                                    data-title="대토보상"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >대토보상</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                21
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                                	
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationGoodsDTO.reptSeq}-21"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="21"
                                                                    data-title="구분지상권"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >구분지상권</label
                                                                >
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                22
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                   
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationGoodsDTO.reptSeq}-22"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="22"
                                                                    data-title="10%이상 변동"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >10%이상 변동
																</label >
                                                            </div>
                                                        </div>
                                                        
                                                                                  <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                23
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                               	
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationGoodsDTO.reptSeq}-23"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="23"
                                                                    data-title="기타(그 외)"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                  >기타(그 외)

																</label>
                                                            </div>
                                                        </div>
                                                        
                                                                                  <div
                                                            class="checkbox div2"
                                                        >
                                                            <div
                                                                class="check_num"
                                                            >
                                                                24
                                                            </div>
                                                            <div
                                                                class="check_input"
                                                            >
                                                                <input                                                                  
                                                                    type="checkbox"
                                                                    id="opinionCheck${applicationGoodsDTO.reptSeq}-24"
                                                                    class="opinion_check"
                                                                    data-seq="${applicationGoodsDTO.reptSeq}"
                                                                    data-type="24"
                                                                    data-title="소유자 의견 없음"
                                                                    disabled
                                                                />
                                                                <label
                                                                    for="opinion_check"
                                                                    >소유자 의견 없음
																</label>
                                                            </div>
                                                        </div>
                                                        
                                                    </div>
                                                    
                                                    <div class="c_board checkContentList" >
                                                    
	                                                    <div class="cb_list">
															<div class="cbl_head">
																<div class="cbl_wrap">
																	<div class="cbl_no">번호</div>
														
																	<div class="cbl_subject">제목</div>
																	<div class="cbl_name2">파일수</div>
																	<div class="cbl_date2">항목</div>
											
																</div>
															</div>
															<div class="cbl_body">

																<ul id="contentList${applicationGoodsDTO.reptSeq}" >
																
																  
																  
																</ul>
															</div>
														</div>
                                                    
                                                    </div>
                                                    
                                                    <div
                                                        class="check_area_wrap"
                                                    >
                                                        <div>
                                                            <label
                                                                for="check_textarea"
                                                                class="check_area_label"
                                                                >소유자  의견</label
                                                            >
                                                            <textarea
                                                            	id="ownerOpinion${applicationGoodsDTO.reptSeq}"
                                                                class="check_area textarea ownerOpinion"
                                                                data-seq="${applicationGoodsDTO.reptSeq}"
                                                                cols="30"
                                                                rows="10"
                                                                disabled
                                                            ></textarea>
                                                        </div>
                                                        <div>
                                                            <label
                                                                for="check_textarea2"
                                                                class="check_area_label"
                                                                >사업시행자  의견</label
                                                            >
                                                            <textarea
                                                            	id="executorOpinion${applicationGoodsDTO.reptSeq}"
                                                                class="check_area textarea executorOpinion"
                                                                data-seq="${applicationGoodsDTO.reptSeq}"
                                                                cols="30"
                                                                rows="10"
                                                                disabled
                                                            ></textarea>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
									
                                     	</c:forEach>
                                           
                                        </tbody>
                                    </table>
                                </div>
                                
                   
                                <div class="mt40 btn_wrap">
	                                <ul class="input-wrap" style="justify-content: center">
	                                    <li>
	                                        <button type="button" class="btn big h50" onclick="goToList()">
	                                           	 목록
	                                        </button>
	                                    </li>	                                 
	                                </ul>
                                </div>

                				<!-- 팝업, 지장물수 검색 S -->
                                <%@ include file="../../implementer/popup/goods.jsp"%> 
                                <!-- 팝업, 지장물수 검색 E -->
                                
                                <!-- 팝업, 필지 검색 S -->
                           		<%@ include file="../../implementer/popup/land.jsp"%> 
                                <!-- 팝업, 필지 검색 E -->
                               
                                <!-- 팝업, 지장물 소유자 검색 S -->
                       			<%@ include file="../../implementer/popup/goodsowner.jsp"%> 
                                <!-- 팝업, 지장물 소유자 검색 E -->
                                
                                <!-- 팝업, 필지 소유자 검색 S -->
                                <%@ include file="../../implementer/popup/landsowner.jsp"%> 
                                <!-- 팝업, 필지 소유자 검색 E -->
                                         
                                <!-- 팝업, 평가사 정보 S -->
                              
                                <!-- 팝업, 평가사 정보 E -->
                                
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
        <script src="../../lib/charts.js"></script>
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>

		<!--common start-->
		<script src="../../js/common.js"></script>
		
        <script src="../../js/appraiser/content.js"></script>
        
        <script src="../../js/decision/agenda/content.js"></script>
        <script src="../../js/decision/agenda/view/block.js"></script>
        <script src="../../js/decision/agenda/view/list.js"></script>
        
        <script src="../../js/implementer/popup/block.js"></script>
		<script src="../../js/implementer/popup/content.js"></script>
		
        <script type="text/javascript">  

            $(document).ready(function () {
        
            	 const owners = document.querySelectorAll(".owner");
                 owners.forEach((owner) => {
                     owner.addEventListener("click", (e) => {
                         const tr =
                             e.target.parentElement.parentElement.parentElement;
                         const checkWrap = tr.nextElementSibling;
                         checkWrap.classList.toggle("on");
                     });
                 });
                 
                 //의견 작성 넣기  
	              getDecisionOpinionList();
	                
	              //체크박스
	              getDecisionOpinionItemList();
            });
            
        </script>
    </body>
</html>
