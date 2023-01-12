<%@	page contentType="text/html;charset=utf-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!doctype html>
<html lang='ko'>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Cache-Control" content="no-cache" />

    <title>Loading PDF</title>

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
    
    <link rel="apple-touch-icon" href="../../css/favicon_seoul.ico" />
    <link rel="stylesheet" href="../../css/init.css" />
    <link rel="stylesheet" href="../../css/common.css" />
    <link rel="stylesheet" href="../../css/layout.css" />
    <link rel="stylesheet" href="../../css/sub.css" />
    <link rel="stylesheet" href="../../css/owl.carousel.min.css" />
    <link rel="stylesheet" href="../../css/jquery-ui.css" />

    <!-- script for pdfmake -->
    <script type="text/javascript" src="../../js/pdfMake/pdfmake.min.js"></script>
    <script type="text/javascript" src="../../js/pdfMake/vfs_fonts.js"></script>
    <script>
        //윈도우 열리면 현재 창에서 pdf 열리게
        window.onload = function () {
            pdfMake.createPdf(docDefinition).open(window);
        }
    </script>
</head>

<body>
    <h1>PDF 파일 로딩중</h1>


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
    <script src="../../js/common.js"></script>


	<!-- pdfmake Start -->
    <script type="text/javascript">

        //html 문서의 script 태그 내에서 문서 정의
        var docDefinition = {

            //문서 정보
            info: {
                title: '심의안_' + '노량진6재정비촉진구역',
                author: 'sltis',
            },

            //content : pdf의 내용을 정의 
            content: [
                //'' or ['',''] or { text:'', style:'' .. } or { ul: [] } or table : { headerRows: 1, widths: [], body:[] }....

                //사업명
                {
                    text: '노량진6재정비촉진구역 주택재개발정비사업(4차)',
                    style: 'header',
                    pageBreak: 'after',
                },

                //사업개요
                {
                    text: '사업개요',
                    style: 'subHeader'
                },
                {
                    ul: [
                        '사업명 : ' + '노량진6재정비촉진구역 주택재개발정비사업(4차)',
                        '위치/규모 : ' + '동작구 노량진동 294-220일대' + ' / ' + '72822',
                        {
                            columns: [
                                { text: '사업기간 : ', width: 'auto' },
                                [
                                    '사업시행인가일(2014.9.1) ~ 66개월(사업기관 도과)',
                                    '사업시행인가일(2014.9.1) ~ 126개월(2020. 11. 12. 정정고시)',
                                ]
                            ],
                            columnGap: 5
                        },
                        '사업시행자 : ' + '노량진6재정비촉진구역 주택재개발정비사업조합',
                    ],
                    style: 'subCon'
                },

                //사업인정관계
                {
                    text: '사업인정관계',
                    style: 'subHeader'
                },
                {
                    ul: [
                        '재정비촉진지구 지정고시 : ' + '서울특별시고시 제  2006-443호(2006.12.12)',
                        '정비구역 지정 및 결정 : ' + '서울특별시고시 제  2009-503호(2009.12.10)',
                        '조합설립인가 : ' + '2011. 3. 17.',
                        {
                            columns: [
                                { text: '사업', width: 'auto' },
                                [
                                    '시행인가고시 : ' + '동작구고시 제2014-97호(2014.9.4)(2014.9.1 ~66개월)',
                                    '변경인가고시 : ' + '동작구고시 제2020-156호(2014.9.4)(2014.9.1 ~126개월)',
                                    '정정인가고시 : ' + '동작구고시 제2020-168호(2014.9.4)(2020.11.12)',
                                ]
                            ]
                        },
                        '분양신청 : ' + '2019.04.10 ~ 05.31 (연장기간 포함)',
                        '보상계획공고 : ' + '2020.03.12(2020.3.13 ~ 3.27)'
                    ],
                    style: 'subCon'
                },

                //재결신청 내역
                {
                    text: '재결신청 내역',
                    style: 'subHeader'
                },
                {
                    ul: [
                        [
                            '총물량조서',
                            {
                                table: {
                                    headerRows: 2,
                                    widths: ['auto', 'auto', 'auto', '*', 'auto', 'auto', '*', 'auto', 'auto', '*'],
                                    body: [
                                        //headerRow1
                                        [
                                            { text: '구분', rowSpan: 2 },
                                            { text: '총 보상대상', colSpan: 3 }, {}, {},
                                            { text: '협의취득 등', colSpan: 3 }, {}, {},
                                            { text: '재결신청', colSpan: 3 }, {}, {},
                                        ],
                                        //headerRow2
                                        ['', '필,건', '면적(m²)', '금액(천 원)', '필,건', '면적(m²)', '금액(천 원)', '필,건', '면적(m²)', '금액(천 원)'],
                                        //body
                                        [
                                            '토지',
                                            '36',
                                            '2,821',
                                            '12,614,551',
                                            '',
                                            '',
                                            '',
                                            '2',
                                            '180',
                                            '1,367,880',
                                        ],
                                        [
                                            '물건',
                                            '114',
                                            '',
                                            '1,028,053',
                                            '',
                                            '',
                                            '',
                                            '25',
                                            '',
                                            '174,696',
                                        ],
                                        [
                                            '영업권',
                                            '694',
                                            '',
                                            '770,831',
                                            '',
                                            '',
                                            '',
                                            '6',
                                            '',
                                            '50,613',
                                        ],
                                        [
                                            '계',
                                            '844',
                                            '2,821',
                                            '14,413,435',
                                            '',
                                            '',
                                            '',
                                            '33',
                                            '180',
                                            '1,593,189',
                                        ],
                                    ]
                                },
                                style: 'tableStyle'
                            },
                            '* 재결신청 후 김복자 등 8명 협의 완료',
                        ],
                        '수용할 토지 및 물건의 소유자 등 : ' + '김두빈 등 9명' + '\n' + '- 재결신청의 청구 : 해당없음',
                        '협의내역 : ' + '3회 (2021. 7. 12. / 7. 20. / 7.27.)',
                        '재결신청사유 : ' + '보상금 저렴, 송달불능(2명)등',
                        '재결신청일 : ' + '2021. 8 .18',
                    ],
                    style: 'subCon'
                },

                //재결심리준비
                {
                    text: '재결심리준비',
                    style: 'subHeader'
                },
                {
                    ul: [
                        '열람공고 : ' + '서울특별시 동작구 공고 제 2021-866호(2021.5.7 ~ 5.21',
                        '토지 등 소유자 의견 : ' + '3건',
                        [
                            '감정평가 : ' + '평가의견서 참조',
                            '- 사업시행자 평가 기관 : ' + '삼창, 국토, 나라감정평가법인',
                            '- 우리위원회 평가기관 : ' + '동인, 대화감정평가법인',
                        ]
                    ],
                    style: 'subCon'
                },
                {
                    table: {
                        headerRows: 1,
                        widths: ['auto', 'auto', 'auto', '*', '*', 'auto', 'auto'],
                        body: [
                            
                            //head
                            [
                                '구분',
                                '필,건',
                                '면적(m²)',
                                '사업시행자제시액(A)(천 원)\n(가격시점 : ' + '2021. 7. 15' + ')',
                                '우리위원회평가액(B)(천 원)\n(가격시점 : ' + '2021. 12. 24' + ')',
                                '대비(%)(B/A)',
                                '비고'
                            ],
                            
                            //body
                            ['토지', '2', '180', '1,367,880', '1399,151', '102.2', ''],
                            ['물건', '25', '', '174,696', '179,059', '102.5', ''],
                            ['영업권', '6', '', '50,613', '55,160', '108.9', ''],
                            ['계', '33', '180', '1,593,189', '1,633,370', '102.5', ''],
                        ],
                    },
                    style: 'tableStyle'
                },
                //소유자 및 사업시행자 의견
                {
                    text: '소유자 및 사업시행자 의견',
                    style: 'subHeader'
                },
                {
                    table: {
                        headerRows: 1,
                        widths: [24, 40, '*', '*'],
                        body: [

                            //head

                            ['연번', '소유자', '소유자의 의견요지', '사업시행자 의견'],
                            //body
                            [
                                //연번
                                '1',
                                //소유자
                                [
                                    '소유자명' + '\n\n',
                                    '노량진동30244(이전비)'
                                ],
                                //소유자의 의견요지
                                {
                                    ul: [
                                        {
                                            text: [
                                                '보상금 증액 요구' + '\n',
                                                '본인은 노량진동 231-75 1층에서 증계전자라는 상호로 수년전부터 중고제품을 판매하던 중，중고제품 저장，수리 장소가 필요하여 노량진동 302-44 월세 계약을 하여 사용하였으며, 매년 1억 5천 이상 매출을 올린 상황에 구백만이라는 명도비용은 너무 부당하므로 계약서, 영업손실 판례 등을 제출하니 최소한 삼천만원을 손실보상액으로 산정하여 줄 것을 요구하는 의견'
                                            ],
                                            alignment: 'left',
                                            margin: [0, 0, 0, 10]
                                        },
                                        {
                                            text: [
                                                '보상금 증액 요구' + '\n',
                                                '본인은 노량진동 231-75 1층에서 증계전자라는 상호로 수년전부터 중고제품을 판매하던 중，중고제품 저장，수리 장소가 필요하여 노량진동 302-44 월세 계약을 하여 사용하였으며, 매년 1억 5천 이상 매출을 올린 상황에 구백만이라는 명도비용은 너무 부당하므로 계약서, 영업손실 판례 등을 제출하니 최소한 삼천만원을 손실보상액으로 산정하여 줄 것을 요구하는 의견'
                                            ],
                                            alignment: 'left',
                                            margin: [0, 0, 0, 10]
                                        },
                                    ]
                                },
                                //사업시행자 의견
                                {
                                    ul: [
                                        '조합은 2곳의 감정평가업자［삼창감정평가 법인， 국토감정평가법인］에게 _ 의락하여 토지보상법 시행규칙 제47조의 규정에 따라 휴업기간에 해당하는 영업이익과 영 업장소 이전 후 발생하는 영업이익 감소 액 ， 휴 업 기 간 중 의 영 업 용 자 산에 대한 감 가상각비，유지관리비와 휴업기간 증에도 정상적으로 근무하여야 하는 최소인원에 대한 인건비 등 고정적비용，영업시설, 원 재료，제품 및 상품의 이전에 소요되는 비용 및 그 이전에 따른 감손상당액，기 타이전광고비 및 개업비 등 영업장소를 이전함으로 인하여 소요되는 부대비용 등 을 합산한 금액으로 적정하게 평가하였 으며, 중개전자가 위치한 서울특별시 동 작구 장승배기로 1 29 는 노량진6재정비촉 진구역 외에 위치하며 구역 내 위치한 장 소［서울특별시 노량진동 3 아4 4 번지］는 증 개 전 자 의 창 고 로 사용하고 있기에 이전 비명가함이 타당하다는 의견',
                                    ],
                                    alignment: 'left'
                                }
                            ],
                            [
                                //연번
                                '2',
                                //소유자
                                [
                                    '소유자명' + '\n\n',
                                    '노량진동30244(이전비)'
                                ],
                                //소유자의 의견요지
                                {
                                    ul: [
                                        {
                                            text: [
                                                '보상금 증액 요구' + '\n',
                                                '본인은 노량진동 231-75 1층에서 증계전자라는 상호로 수년전부터 중고제품을 판매하던 중，중고제품 저장，수리 장소가 필요하여 노량진동 302-44 월세 계약을 하여 사용하였으며, 매년 1억 5천 이상 매출을 올린 상황에 구백만이라는 명도비용은 너무 부당하므로 계약서, 영업손실 판례 등을 제출하니 최소한 삼천만원을 손실보상액으로 산정하여 줄 것을 요구하는 의견'
                                            ],
                                            alignment: 'left',
                                            margin: [0, 0, 0, 10]
                                        },
                                        {
                                            text: [
                                                '보상금 증액 요구' + '\n',
                                                '본인은 노량진동 231-75 1층에서 증계전자라는 상호로 수년전부터 중고제품을 판매하던 중，중고제품 저장，수리 장소가 필요하여 노량진동 302-44 월세 계약을 하여 사용하였으며, 매년 1억 5천 이상 매출을 올린 상황에 구백만이라는 명도비용은 너무 부당하므로 계약서, 영업손실 판례 등을 제출하니 최소한 삼천만원을 손실보상액으로 산정하여 줄 것을 요구하는 의견'
                                            ],
                                            alignment: 'left',
                                            margin: [0, 0, 0, 10]
                                        },
                                    ]
                                },
                                //사업시행자 의견
                                {
                                    ul: [
                                        '조합은 2곳의 감정평가업자［삼창감정평가 법인， 국토감정평가법인］에게 _ 의락하여 토지보상법 시행규칙 제47조의 규정에 따라 휴업기간에 해당하는 영업이익과 영 업장소 이전 후 발생하는 영업이익 감소 액 ， 휴 업 기 간 중 의 영 업 용 자 산에 대한 감 가상각비，유지관리비와 휴업기간 증에도 정상적으로 근무하여야 하는 최소인원에 대한 인건비 등 고정적비용，영업시설, 원 재료，제품 및 상품의 이전에 소요되는 비용 및 그 이전에 따른 감손상당액，기 타이전광고비 및 개업비 등 영업장소를 이전함으로 인하여 소요되는 부대비용 등 을 합산한 금액으로 적정하게 평가하였 으며, 중개전자가 위치한 서울특별시 동 작구 장승배기로 1 29 는 노량진6재정비촉 진구역 외에 위치하며 구역 내 위치한 장 소［서울특별시 노량진동 3 아4 4 번지］는 증 개 전 자 의 창 고 로 사용하고 있기에 이전 비명가함이 타당하다는 의견',
                                    ],
                                    alignment: 'left'
                                }
                            ],
                            [
                                //연번
                                '3',
                                //소유자
                                [
                                    '소유자명' + '\n\n',
                                    '노량진동30244(이전비)'
                                ],
                                //소유자의 의견요지
                                {
                                    ul: [
                                        {
                                            text: [
                                                '보상금 증액 요구' + '\n',
                                                '본인은 노량진동 231-75 1층에서 증계전자라는 상호로 수년전부터 중고제품을 판매하던 중，중고제품 저장，수리 장소가 필요하여 노량진동 302-44 월세 계약을 하여 사용하였으며, 매년 1억 5천 이상 매출을 올린 상황에 구백만이라는 명도비용은 너무 부당하므로 계약서, 영업손실 판례 등을 제출하니 최소한 삼천만원을 손실보상액으로 산정하여 줄 것을 요구하는 의견'
                                            ],
                                            alignment: 'left',
                                            margin: [0, 0, 0, 10]
                                        },
                                        {
                                            text: [
                                                '보상금 증액 요구' + '\n',
                                                '본인은 노량진동 231-75 1층에서 증계전자라는 상호로 수년전부터 중고제품을 판매하던 중，중고제품 저장，수리 장소가 필요하여 노량진동 302-44 월세 계약을 하여 사용하였으며, 매년 1억 5천 이상 매출을 올린 상황에 구백만이라는 명도비용은 너무 부당하므로 계약서, 영업손실 판례 등을 제출하니 최소한 삼천만원을 손실보상액으로 산정하여 줄 것을 요구하는 의견'
                                            ],
                                            alignment: 'left',
                                            margin: [0, 0, 0, 10]
                                        },
                                    ]
                                },
                                //사업시행자 의견
                                {
                                    ul: [
                                        '조합은 2곳의 감정평가업자［삼창감정평가 법인， 국토감정평가법인］에게 _ 의락하여 토지보상법 시행규칙 제47조의 규정에 따라 휴업기간에 해당하는 영업이익과 영 업장소 이전 후 발생하는 영업이익 감소 액 ， 휴 업 기 간 중 의 영 업 용 자 산에 대한 감 가상각비，유지관리비와 휴업기간 증에도 정상적으로 근무하여야 하는 최소인원에 대한 인건비 등 고정적비용，영업시설, 원 재료，제품 및 상품의 이전에 소요되는 비용 및 그 이전에 따른 감손상당액，기 타이전광고비 및 개업비 등 영업장소를 이전함으로 인하여 소요되는 부대비용 등 을 합산한 금액으로 적정하게 평가하였 으며, 중개전자가 위치한 서울특별시 동 작구 장승배기로 1 29 는 노량진6재정비촉 진구역 외에 위치하며 구역 내 위치한 장 소［서울특별시 노량진동 3 아4 4 번지］는 증 개 전 자 의 창 고 로 사용하고 있기에 이전 비명가함이 타당하다는 의견',
                                    ],
                                    alignment: 'left'
                                }
                            ],
                        ],
                    },
                    style: 'tableStyle',
                },
                {
                    columns: [
                        { text: '붙임', width: 40 },
                        {
                            ol: [
                                '영업권 평가 적정성 검토',
                                '토지, 물건 재결 평가 적정성 검토',
                                '감정평가서및 보상금 내역서 각 1부'
                            ]
                        },
                    ]
                }
            ],

            //paging
            footer: function (currentPage, pageCount) {
                return [{ text: currentPage.toString() + ' / ' + pageCount, alignment: 'center' }];
            },

            //style
            styles: {
                header: {
                    fontSize: 28,
                    alignment: 'center',
                    margin: [80, 160] // [left, top, right, bottom] or [horizontal, vertical] or [number] 
                    // bold: true, //현재 pretendard-regular 만 적용되어있어서 불가.
                },
                subHeader: {
                    fontSize: 18,
                },
                subCon: {
                    margin: [0, 0, 0, 15]
                },
                tableStyle: {
                    // color: 'red',
                    fontSize: 10,
                    characterSpacing: -0.5,
                    lineHeight: 1.2,
                    margin: [0, 0, 0, 15],
                    alignment: 'center',
                }
            },
            defaultStyle: {
                fontSize: 12,
                lineHeight: 1.4,
            },

            // 페이지 크기 용지의 크기 사이즈 넣기 또는 특정 사이즈 넣기 { width: number, height: number }
            pageSize: 'A4',

            // 페이지 방향 portrait : 가로 , landscape : 세로
            pageOrientation: 'portrait',

            //페이지 여백
            pageMargins: [40, 80, 40, 80],
        };

    </script>
   	<!-- pdfmake End -->

</body>

</html>