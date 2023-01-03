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
                    <div class="sub_title sub_title01">
                        <h2 class="title bold center">수용재결 안내</h2>
                    </div>
                    
                    <!-- land submenu start -->
		        	<jsp:include page="../includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- land submenu end -->
					
                    <div class="compensation_con content center">
                        <section class="basic">
                            <div class="title-s">수용재결의 효과</div>
                            <b>감정평가업자 추천지침서 : </b>
                            <a
                                onclick="javascript:g3way.land.common.downloadFileNm('/sltis/form/','doc_20161111.hwp');"
                                class="btn"
                                title="감정평가업자 추천지침서 다운로드"
                                >감정평가업자 추천지침서 다운로드</a
                            >
                            <b style="margin-left: 100px">운영규칙안내 : </b>
                            <a
                                class="btn"
                                href="http://www.law.go.kr/%EC%9E%90%EC%B9%98%EB%B2%95%EA%B7%9C/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%EC%A7%80%EB%B0%A9%ED%86%A0%EC%A7%80%EC%88%98%EC%9A%A9%EC%9C%84%EC%9B%90%ED%9A%8C%EC%9A%B4%EC%98%81%EA%B7%9C%EC%B9%99"
                                target="_blank"
                                title="운영규칙안내 - 새창"
                                >운영규칙(서울시)</a
                            >
                            <dl>
                                <dt></dt>
                                <dd class="title-v-s-only-text mg-t10">
                                    가. 사업시행자의 권리, 의무
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;토지등에 대한 소유권 취득
                                </dd>
                                <dd class="mg-l37">
                                    : 수용재결이 되어 보상금을 지급하거나
                                    공탁하면 사업시행자는 토지수용위원회가 정한
                                    수용시기에 그 토지등에 대한 소유권을
                                    취득하게 되고 그 토지등에 있던 다른 권리도
                                    소멸됩니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;보상금 지불의무
                                </dd>
                                <dd class="mg-l37">
                                    : 사업시행자는 토지수용위원회에서 정한
                                    보상금을 수용의 개시일까지 토지소유자에게
                                    지불하여야 하고 토지소유자가 보상금 수령을
                                    거부할때에는 보상금을 공탁하여야 합니다<br />
                                    만약 사업시행자가 수용의 개시일까지 보상금을
                                    지불하거나 공탁하지 아니하면 그 수용 재결은
                                    효력을 잃게 되며 보상금을 공탁할 경우에도
                                    공탁서에 반대급부조건을 기재하였을 때에는 그
                                    공탁은 무효가 됩니다
                                </dd>
                            </dl>
                            <dl>
                                <dt></dt>
                                <dd class="title-v-s-only-text mg-t10">
                                    나. 토지소유자의 권리, 의무
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;보상금을 받을 권리
                                </dd>
                                <dd class="mg-l37">
                                    : 수용재결이 되면 토지소유자는
                                    토지수용위원회에서 정한 보상금을
                                    사업시행자로부터 받을 권리가 생깁니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;토지등의 인도와 이전의무
                                </dd>
                                <dd class="mg-l37">
                                    : 사업시행자가 수용시기까지 보상금을
                                    지불하거나 공탁을 하게되면 토지소유자는
                                    수용된 토지나 물건을 사업시행자에게
                                    인도하거나 이전을 하여야 합니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;인도ㆍ이전을 거부할때 사업시행자가
                                    할수 있는 조치
                                </dd>
                                <dd class="mg-l37">
                                    : 토지소유자가 수용시기가 지난후에도 물건의
                                    인도나 이전을 거부하면 사업시행자는
                                    시·도지사 또는 시장ㆍ군수ㆍ구청장 등에게
                                    행정대집행을 신청할 수 있습니다
                                </dd>
                            </dl>

                            <div class="title-s">수용재결의 구제절차</div>
                            <div class="dotbox_blue mg-t10">
                                <b
                                    >토지수용제도는 공익사업의 시행을 위하여
                                    부득이 둔 제도이나 수용대상 토지소유자의
                                    권익을 보장하기 위하여 토지소유자에게도
                                    다음과 같이 권리구제를 받을 수 있는 제도가
                                    마련되어 있습니다.</b
                                >
                            </div>

                            <dl>
                                <dt></dt>
                                <dd class="title-v-s-only-text mg-t10">
                                    가. 수용신청전에 할 수 있는 일
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;수용재결신청 청구
                                </dd>
                                <dd class="mg-l44">
                                    - 토지소유자 등은 사업인정고시일 이후 협의가
                                    성립되지 아니하였을 때 서면으로
                                    사업시행자에게 재결을 신청할 것을 청구할 수
                                    있습니다.
                                </dd>
                                <dd class="mg-l44">
                                    - 재결신청의 청구의 제도적 취지는
                                    사업시행자는 사업인정의 고시 후 1년 이내에는
                                    언제든지 재결을 신청할 수 있는 반면에
                                    토지소유자 등은 재결신청권 이 없으므로,
                                    수용을 둘러싼 법률관계의 조속한 확정을
                                    바라는 토지소유자 등의 이익을 보호하고 수용
                                    당사자 간의 공평을 기하기 위한 것입니다.
                                </dd>
                                <dd class="mg-l44">
                                    - 재결신청 청구의 효과 : 만약 사업시행자가
                                    재결신청 청구를 받고도 재결 신청을 지연하게
                                    되면 재결신청 청구서를 받은 날을 기준하여
                                    60일이 경과된 날로부터 지체된 기간에 대하여
                                    관계 법령에서 정하는 해당이자액을 보상금에
                                    가산하여 지급하게 됩니다
                                </dd>
                                <dd class="mg-l44">
                                    - 사업시행자는 토지소유자 등으로부터
                                    재결신청의 청구를 받았을 때에는 그 청구를
                                    받은 날부터 60일 이내에 관할
                                    토지수용위원회에 재결을 신청하여야 하며, 이
                                    기간을 넘겨서 재결을 신청하였을 때에는 그
                                    지연된 기간에 대하여 관계법령에 따른
                                    법정이율을 적용하여 산정한 금액을 보상금에
                                    가산(加算)하여 지급하여야 합니다. 재결신청
                                    청구는 서면으로 제출하여야 하며 우편으로
                                    제출할 때에는 증명취급의 방법으로 하여야
                                    합니다
                                </dd>
                            </dl>
                            <dl>
                                <dt></dt>
                                <dd class="title-v-s-only-text mg-t10">
                                    나. 수용신청후에 할 수 있는 일
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;잔여지 수용청구
                                </dd>
                                <dd class="mg-l37">
                                    : 토지의 일부가 수용되고 남는
                                    잔여토지(자투리땅)가 종래의 목적대로 이용이
                                    곤란하거나 건물의 일부가 철거되어
                                    잔여부분으로는 종래의 용도로 사용이 곤란할
                                    때에는 토지 소유자나 건물소유자는 그 토지나
                                    건물 전부에 대한 수용을 청구할 수 있으며
                                    토지수용위원회에서는 청구내용을 검토하여
                                    가ㆍ부를 결정하게 됩니다
                                </dd>
                                <dd class="mg-t5 mg-l37">
                                    ·&nbsp;잔여지 수용청구는 매수에 관한 협의가
                                    성립되지 아니한 경우에만 할 수 있으며 그
                                    사업의 공사완료일까지 해야 합니다.
                                </dd>
                            </dl>
                            <dl>
                                <dt></dt>
                                <dd class="title-v-s-only-text mg-t10">
                                    다. 수용재결후에 할 수 있는 일
                                </dd>
                                <dd class="title-v-s-only-text mg-l20">
                                    이의신청 및 행정소송
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;이의신청 및 행정소송 방법
                                </dd>
                                <dd class="mg-l37">
                                    - 수용재결에 대하여 이의가 있는 토지소유자는
                                    수용재결서를 받은 날부터 30일이내에
                                    서울지방토지수용위원회에 이의신청을 할 수
                                    있으며, 이의신청과 관계없이 수용재결서를
                                    받은 날부터 90일이내에 관할 법원에
                                    행정소송을 제기할 수 있습니다
                                </dd>
                                <dd class="mg-l37">
                                    - 지방토지수용위원회의 재결에 대해
                                    이의신청을 하고자 하는 경우 반드시
                                    수용재결을 한 지방 토지수용위원회에
                                    이의신청서를 제출하여야 하고 그
                                    지방토지수용위원회는 제출된 이의 신청서를
                                    중앙토지수용위원회에 이송하게 됩니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;이의신청때 지켜야 할 사항
                                </dd>
                                <dd class="mg-l37">
                                    : 이의 신청은 보상금을 수령하거나 공탁금을
                                    수령한 후에도 제기할 수 있지만 이 경우에는
                                    반드시 수용보상금 청구서나 공탁금
                                    출급청구서에
                                    <b
                                        >"이의를 유보하고 보상금의 일부로
                                        수령한다."</b
                                    >라는 조건을 달고 보상금을 수령하여야 하며,
                                    만약 조건없이 보상금을 수령하고 이의신청을
                                    하게 되면 그 이의신청은 각하 됩니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;이의신청에 대한 처리
                                </dd>
                                <dd class="mg-l37">
                                    : 이의신청이 제기되면
                                    중앙토지수용위원회에서는 이의 신청내용을
                                    검토한 후에 다시 평가 (협의매수와 수용때
                                    평가하지 않은 다른 2개 평가기관을 선정함)를
                                    하며 다시 평가한 금액이 수용재결 보상금보다
                                    높은 경우에는 다시 평가한 금액으로 보상금을
                                    변경합니다
                                </dd>
                            </dl>
                            <dl>
                                <dt></dt>
                                <dd class="title-v-s-only-text mg-t10">
                                    라. 이의신청 재결후에 할수 있는 일
                                </dd>
                                <dd class="title-v-s-only-text mg-l20">
                                    행정소송
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;행정소송 제기기간과 제기하는 법원
                                </dd>
                                <dd class="mg-l37">
                                    : 이의신청 재결에도 불복이 있는 경우에는
                                    이의신청 재결서를 받은 날부터 60일이내에
                                    관할법원에 행정소송을 제기할 수 있습니다
                                </dd>

                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;행정소송의 종류
                                </dd>
                                <dd class="mg-l37">
                                    - 이의신청 재결 자체에 대한 취소소송은
                                    이의신청 재결중에서 불복하는 내용이 보상금
                                    다툼이 아닌 이의재결 자체의 위법함을 다투는
                                    내용으로서 이의신청재결의 취소를 구하는
                                    소송일 때에는 중앙토지수용위원회를
                                    피고로하여 소송을 제기하여야 합니다
                                </dd>
                                <dd class="mg-l37">
                                    - 보상금 다툼 소송<br />불복하는 내용이
                                    보상금의 증ㆍ감에 대한 다툼일 때에는
                                    사업시행자(사업 시행자가 소송을 제기할
                                    때에는 토지소유자나 관계인)를 피고로 하여야
                                    하고, 이 경우에는 법원에서 직접 보상금을
                                    결정하게 됩니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;이의신청에 대한 처리
                                </dd>
                                <dd class="mg-l37">
                                    : 이의신청이 제기되면
                                    중앙토지수용위원회에서는 이의 신청내용을
                                    검토한 후에 다시 평가 (협의매수와 수용때
                                    평가하지 않은 다른 2개 평가기관을 선정함)를
                                    하며 다시 평가한 금액이 수용재결 보상금보다
                                    높은 경우에는 다시 평가한 금액으로 보상금을
                                    변경합니다
                                </dd>
                                <dd class="mg-t5 mg-l30">
                                    ·&nbsp;행정소송은 사업시행자도 제기할수
                                    있으나 만약 사업시행자가 패소할 경우에는
                                    소송기간에 대하여 관계 법령에서 정하는
                                    해당이자액을 보상금에 가산하여
                                    토지소유자에게 지급하여야 합니다
                                </dd>
                            </dl>
                        </section>
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
		
        <script type="text/javascript">
      

            $(document).ready(function () {});
        </script>
    </body>
</html>
