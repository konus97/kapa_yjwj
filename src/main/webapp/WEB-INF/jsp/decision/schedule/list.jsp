<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  

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
        <link rel="stylesheet" href="../lib/fullcalendar/main.css" />
        <link rel="stylesheet" href="../css/layout.css" />
         
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
                    <div class="sub_title sub_title05">
                        <h2 class="title bold center">심의 일정 관리</h2>
                    </div>
                    
                     <!-- decision submenu start -->
		        	<jsp:include page="../../decision/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- decision submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">심의 일정 관리</h3>
                        </div>
                        <div
                            id="calendar"
                            class="fc fc-media-screen fc-direction-ltr fc-theme-standard"
                        >
                            <div class="fc-header-toolbar fc-toolbar">
                                <div class="fc-toolbar-chunk">
                                    <h2 class="fc-toolbar-title" id="fc-dom-1">
                                        2022년 10월
                                    </h2>
                                </div>
                                <div class="fc-toolbar-chunk"></div>
                                <div class="fc-toolbar-chunk">
                                    <button
                                        type="button"
                                        title="This month"
                                        disabled=""
                                        aria-pressed="false"
                                        class="fc-today-button fc-button fc-button-primary"
                                    >
                                        today
                                    </button>
                                    <div class="fc-button-group">
                                        <button
                                            type="button"
                                            title="Previous month"
                                            aria-pressed="false"
                                            class="fc-prev-button fc-button fc-button-primary"
                                        >
                                            <span
                                                class="fc-icon fc-icon-chevron-left"
                                            ></span></button
                                        ><button
                                            type="button"
                                            title="Next month"
                                            aria-pressed="false"
                                            class="fc-next-button fc-button fc-button-primary"
                                        >
                                            <span
                                                class="fc-icon fc-icon-chevron-right"
                                            ></span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div
                                aria-labelledby="fc-dom-1"
                                class="fc-view-harness fc-view-harness-active"
                                style="height: 888.889px"
                            >
                                <div
                                    class="fc-daygrid fc-dayGridMonth-view fc-view"
                                >
                                    <table
                                        role="grid"
                                        class="fc-scrollgrid fc-scrollgrid-liquid"
                                    >
                                        <thead role="rowgroup">
                                            <tr
                                                role="presentation"
                                                class="fc-scrollgrid-section fc-scrollgrid-section-header"
                                            >
                                                <th role="presentation">
                                                    <div
                                                        class="fc-scroller-harness"
                                                    >
                                                        <div
                                                            class="fc-scroller"
                                                            style="
                                                                overflow: hidden;
                                                            "
                                                        >
                                                            <table
                                                                role="presentation"
                                                                class="fc-col-header"
                                                                style="
                                                                    width: 1198px;
                                                                "
                                                            >
                                                                <colgroup></colgroup>
                                                                <thead
                                                                    role="presentation"
                                                                >
                                                                    <tr
                                                                        role="row"
                                                                    >
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-sun"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="일요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >일</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-mon"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="월요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >월</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-tue"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="화요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >화</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-wed"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="수요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >수</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-thu"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="목요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >목</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-fri"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="금요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >금</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                        <th
                                                                            role="columnheader"
                                                                            class="fc-col-header-cell fc-day fc-day-sat"
                                                                        >
                                                                            <div
                                                                                class="fc-scrollgrid-sync-inner"
                                                                            >
                                                                                <a
                                                                                    aria-label="토요일"
                                                                                    class="fc-col-header-cell-cushion"
                                                                                    >토</a
                                                                                >
                                                                            </div>
                                                                        </th>
                                                                    </tr>
                                                                </thead>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody role="rowgroup">
                                            <tr
                                                role="presentation"
                                                class="fc-scrollgrid-section fc-scrollgrid-section-body fc-scrollgrid-section-liquid"
                                            >
                                                <td role="presentation">
                                                    <div
                                                        class="fc-scroller-harness fc-scroller-harness-liquid"
                                                    >
                                                        <div
                                                            class="fc-scroller fc-scroller-liquid-absolute"
                                                            style="
                                                                overflow: hidden
                                                                    auto;
                                                            "
                                                        >
                                                            <div
                                                                class="fc-daygrid-body fc-daygrid-body-unbalanced"
                                                                style="
                                                                    width: 1198px;
                                                                "
                                                            >
                                                                <table
                                                                    role="presentation"
                                                                    class="fc-scrollgrid-sync-table"
                                                                    style="
                                                                        width: 1198px;
                                                                        height: 371px;
                                                                    "
                                                                >
                                                                    <colgroup></colgroup>
                                                                    <tbody
                                                                        role="presentation"
                                                                    >
                                                                        <tr
                                                                            role="row"
                                                                        >
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sun fc-day-past fc-day-other"
                                                                                data-date="2022-09-25"
                                                                                aria-labelledby="fc-dom-2"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-2"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 9월 25일"
                                                                                            >25일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-mon fc-day-past fc-day-other"
                                                                                data-date="2022-09-26"
                                                                                aria-labelledby="fc-dom-4"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-4"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 9월 26일"
                                                                                            >26일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-tue fc-day-past fc-day-other"
                                                                                data-date="2022-09-27"
                                                                                aria-labelledby="fc-dom-6"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-6"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 9월 27일"
                                                                                            >27일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-wed fc-day-past fc-day-other"
                                                                                data-date="2022-09-28"
                                                                                aria-labelledby="fc-dom-8"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-8"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 9월 28일"
                                                                                            >28일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-thu fc-day-past fc-day-other"
                                                                                data-date="2022-09-29"
                                                                                aria-labelledby="fc-dom-10"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-10"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 9월 29일"
                                                                                            >29일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-fri fc-day-past fc-day-other"
                                                                                data-date="2022-09-30"
                                                                                aria-labelledby="fc-dom-12"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-12"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 9월 30일"
                                                                                            >30일</a
                                                                                        >
                                                                                    </div>
                                                                                            <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sat fc-day-past"
                                                                                data-date="2022-10-01"
                                                                                aria-labelledby="fc-dom-14"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-14"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 1일"
                                                                                            >1일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr
                                                                            role="row"
                                                                        >
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sun fc-day-past"
                                                                                data-date="2022-10-02"
                                                                                aria-labelledby="fc-dom-16"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-16"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 2일"
                                                                                            >2일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-mon fc-day-past"
                                                                                data-date="2022-10-03"
                                                                                aria-labelledby="fc-dom-18"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-18"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 3일"
                                                                                            >3일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-tue fc-day-past"
                                                                                data-date="2022-10-04"
                                                                                aria-labelledby="fc-dom-20"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-20"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 4일"
                                                                                            >4일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-wed fc-day-past"
                                                                                data-date="2022-10-05"
                                                                                aria-labelledby="fc-dom-22"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-22"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 5일"
                                                                                            >5일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-thu fc-day-past"
                                                                                data-date="2022-10-06"
                                                                                aria-labelledby="fc-dom-24"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-24"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 6일"
                                                                                            >6일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-fri fc-day-today"
                                                                                data-date="2022-10-07"
                                                                                aria-labelledby="fc-dom-26"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-26"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 7일"
                                                                                            >7일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sat fc-day-future"
                                                                                data-date="2022-10-08"
                                                                                aria-labelledby="fc-dom-28"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-28"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 8일"
                                                                                            >8일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr
                                                                            role="row"
                                                                        >
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sun fc-day-future"
                                                                                data-date="2022-10-09"
                                                                                aria-labelledby="fc-dom-30"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-30"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 9일"
                                                                                            >9일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-mon fc-day-future"
                                                                                data-date="2022-10-10"
                                                                                aria-labelledby="fc-dom-32"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-32"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 10일"
                                                                                            >10일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-tue fc-day-future"
                                                                                data-date="2022-10-11"
                                                                                aria-labelledby="fc-dom-34"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-34"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 11일"
                                                                                            >11일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-wed fc-day-future"
                                                                                data-date="2022-10-12"
                                                                                aria-labelledby="fc-dom-36"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-36"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 12일"
                                                                                            >12일</a
                                                                                        >
                                                                                    </div>
                                                                      <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-thu fc-day-future"
                                                                                data-date="2022-10-13"
                                                                                aria-labelledby="fc-dom-38"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-38"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 13일"
                                                                                            >13일</a
                                                                                        >
                                                                                    </div>
                                                                  <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-fri fc-day-future"
                                                                                data-date="2022-10-14"
                                                                                aria-labelledby="fc-dom-40"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-40"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 14일"
                                                                                            >14일</a
                                                                                        >
                                                                                    </div>
                                                                                           <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sat fc-day-future"
                                                                                data-date="2022-10-15"
                                                                                aria-labelledby="fc-dom-42"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-42"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 15일"
                                                                                            >15일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr
                                                                            role="row"
                                                                        >
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sun fc-day-future"
                                                                                data-date="2022-10-16"
                                                                                aria-labelledby="fc-dom-44"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-44"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 16일"
                                                                                            >16일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-mon fc-day-future"
                                                                                data-date="2022-10-17"
                                                                                aria-labelledby="fc-dom-46"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-46"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 17일"
                                                                                            >17일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-tue fc-day-future"
                                                                                data-date="2022-10-18"
                                                                                aria-labelledby="fc-dom-48"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-48"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 18일"
                                                                                            >18일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-wed fc-day-future"
                                                                                data-date="2022-10-19"
                                                                                aria-labelledby="fc-dom-50"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-50"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 19일"
                                                                                            >19일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-thu fc-day-future"
                                                                                data-date="2022-10-20"
                                                                                aria-labelledby="fc-dom-52"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-52"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 20일"
                                                                                            >20일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-fri fc-day-future"
                                                                                data-date="2022-10-21"
                                                                                aria-labelledby="fc-dom-54"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-54"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 21일"
                                                                                            >21일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sat fc-day-future"
                                                                                data-date="2022-10-22"
                                                                                aria-labelledby="fc-dom-56"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-56"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 22일"
                                                                                            >22일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr
                                                                            role="row"
                                                                        >
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sun fc-day-future"
                                                                                data-date="2022-10-23"
                                                                                aria-labelledby="fc-dom-58"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-58"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 23일"
                                                                                            >23일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-mon fc-day-future"
                                                                                data-date="2022-10-24"
                                                                                aria-labelledby="fc-dom-60"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-60"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 24일"
                                                                                            >24일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-tue fc-day-future"
                                                                                data-date="2022-10-25"
                                                                                aria-labelledby="fc-dom-62"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-62"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 25일"
                                                                                            >25일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-wed fc-day-future"
                                                                                data-date="2022-10-26"
                                                                                aria-labelledby="fc-dom-64"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-64"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 26일"
                                                                                            >26일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-thu fc-day-future"
                                                                                data-date="2022-10-27"
                                                                                aria-labelledby="fc-dom-66"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-66"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 27일"
                                                                                            >27일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-fri fc-day-future"
                                                                                data-date="2022-10-28"
                                                                                aria-labelledby="fc-dom-68"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-68"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 28일"
                                                                                            >28일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sat fc-day-future"
                                                                                data-date="2022-10-29"
                                                                                aria-labelledby="fc-dom-70"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-70"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 29일"
                                                                                            >29일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                        <tr
                                                                            role="row"
                                                                        >
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sun fc-day-future"
                                                                                data-date="2022-10-30"
                                                                                aria-labelledby="fc-dom-72"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-72"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 30일"
                                                                                            >30일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-mon fc-day-future"
                                                                                data-date="2022-10-31"
                                                                                aria-labelledby="fc-dom-74"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-74"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 10월 31일"
                                                                                            >31일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-tue fc-day-future fc-day-other"
                                                                                data-date="2022-11-01"
                                                                                aria-labelledby="fc-dom-76"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-76"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 11월 1일"
                                                                                            >1일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-wed fc-day-future fc-day-other"
                                                                                data-date="2022-11-02"
                                                                                aria-labelledby="fc-dom-78"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-78"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 11월 2일"
                                                                                            >2일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-thu fc-day-future fc-day-other"
                                                                                data-date="2022-11-03"
                                                                                aria-labelledby="fc-dom-80"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-80"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 11월 3일"
                                                                                            >3일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-fri fc-day-future fc-day-other"
                                                                                data-date="2022-11-04"
                                                                                aria-labelledby="fc-dom-82"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-82"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 11월 4일"
                                                                                            >4일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                            <td
                                                                                role="gridcell"
                                                                                class="fc-daygrid-day fc-day fc-day-sat fc-day-future fc-day-other"
                                                                                data-date="2022-11-05"
                                                                                aria-labelledby="fc-dom-84"
                                                                            >
                                                                                <div
                                                                                    class="fc-daygrid-day-frame fc-scrollgrid-sync-inner"
                                                                                >
                                                                                    <div
                                                                                        class="fc-daygrid-day-top"
                                                                                    >
                                                                                        <a
                                                                                            id="fc-dom-84"
                                                                                            class="fc-daygrid-day-number"
                                                                                            aria-label="2022년 11월 5일"
                                                                                            >5일</a
                                                                                        >
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-events"
                                                                                    >
                                                                                        <div
                                                                                            class="fc-daygrid-day-bottom"
                                                                                            style="
                                                                                                margin-top: 0px;
                                                                                            "
                                                                                        ></div>
                                                                                    </div>
                                                                                    <div
                                                                                        class="fc-daygrid-day-bg"
                                                                                    ></div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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
        <script src="../lib/jquery-ui.min.js"></script>
        <script src="../lib/lib.js"></script>   
        <script src="../lib/fullcalendar/main.js"></script>
        
        <!--common start-->
		<script src="../js/common.js"></script>

        <script type="text/javascript">
           
	        var calendar;
	      
	        document.addEventListener("DOMContentLoaded", function () {
	        	
	        	  let csrfToken = $("meta[name='_csrf']").attr("content");
	              let csrfHeader = $("meta[name='_csrf_header']").attr("content");
	              
	            var calendarEl = document.getElementById("calendar");
	            var currentMyMeetingDateList = [];
	            var currentMyMeetingIdList = [];
	            calendar = new FullCalendar.Calendar(calendarEl, {
	                initialView: "dayGridMonth",
	                events: function (
	                    info,
	                    successCallback,
	                    failureCallback
	                ) {
	                    var start = info.start.valueOf();
	                    var end = info.end.valueOf();
	                    data = {
	                        start: start,
	                        end: end,
	                    };
	                    
	                    let contextPath = $('#contextPath').val();
	                	let url = contextPath+"/api/decision/meetings/list";
	                    
	                    $.ajax({
	                         url: url,
	                         type: "POST",
	                         accept: "application/json",
	                         contentType: "application/json; charset=utf-8",
	                         data: JSON.stringify(data),
	                         dataType: "json",
	                         beforeSend : function(xhr){
	            				xhr.setRequestHeader(csrfHeader, csrfToken);
	            			 },
	                         success: function (result) {
	                             console.debug(result);
	                             var myMeetingList =
	                                 result.myMeetingEventList;
	                             var meetingCountList =
	                                 result.meetingCountEventList;
	                             var events = [];
	
	                             if (meetingCountList) {
	                                 for (
	                                     let i = 0;
	                                     i < meetingCountList.length;
	                                     i++
	                                 ) {
	                                     var event = {
	                                         title: meetingCountList[i]
	                                             .title,
	                                         start: meetingCountList[i].date,
	                                         end: meetingCountList[i].date,
	                                         extendedProps: {
	                                             type: meetingCountList[i]
	                                                 .type,
	                                         },
	                                         backgroundColor: "gray",
	                                         borderColor: "gray",
	                                         textColor: "white",
	                                     };
	                                     events.push(event);
	                                 }
	                             }
	
	                             if (myMeetingList) {
	                                 for (
	                                     let i = 0;
	                                     i < myMeetingList.length;
	                                     i++
	                                 ) {
	                                     var event = {
	                                         title: myMeetingList[i].title,
	                                         start: myMeetingList[i].date,
	                                         end: myMeetingList[i].date,
	                                         extendedProps: {
	                                             id: myMeetingList[i].id,
	                                             type: myMeetingList[i].type,
	                                         },
	                                     };
	                                     events.push(event);
	                                     currentMyMeetingDateList.push(
	                                         myMeetingList[i].date
	                                     );
	                                     currentMyMeetingIdList.push(
	                                         myMeetingList[i].id
	                                     );
	                                 }
	                             }
	
	                             console.debug(events);
	                             successCallback(events);
	                         },
	                         error: function (response, status, error) {
	                             console.debug(response);
	                             var json = response.responseJSON;
	                             if (json && json.message) {
	                                 alert("실패했습니다: " + json.message);
	                             } else {
	                                 alert("실패했습니다.");
	                             }
	                         },
	                     }); 
	                },
	                eventClick: function (info) {
	                    console.debug(info);
	                    if (info.event.extendedProps.type === "my") {
	                        console.debug(info.event.start);
	                        console.debug(dateOnly(info.event.start));
	                        let date = dateOnly(info.event.start);
	                        window.location.href =
	                            "/judgement/judge/cases.do?srch_dateType=1&srch_startDt=" +
	                            date +
	                            "&srch_endDt=" +
	                            date;
	                    }
	                },
	                dateClick: function (info) {
	                    var index = currentMyMeetingDateList.findIndex(
	                        (e) => e === info.dateStr
	                    );
	                
                        if (index >= 0) {
                            $("#editId").val(
                                currentMyMeetingIdList[index]
                            );
                            $("#editFrom").val(info.dateStr);
                            $("#editTo").val(info.dateStr);
                            window.location.hash = "edit";
                        } else {
                            let text;
                            if (
                                confirm(
                                    "" +
                                        info.dateStr +
                                        "에 회의 일정을 추가 하시겠습니까?"
                                ) === true
                            ) {
                                insertMeeting(info.dateStr);
                            } else {
                                console.debug("cancel");
                            }
                        }
	                    
	                },
	            });
	            calendar.setOption("locale", "ko");
	            calendar.render();
	        });
	
	        function dateOnly(time) {
	            var date = new Date(time);
	            pad = function (num) {
	                return (num < 10 ? "0" : "") + num;
	            };
	            return (
	                date.getFullYear() +
	                "-" +
	                pad(date.getMonth() + 1) +
	                "-" +
	                pad(date.getDate())
	            );
	        }
	
	        function reload() {
	            if (calendar) {
	                calendar.refetchEvents();
	            }
	        }
	
	
	        function insertMeeting(meetingDate) {
	        	
	        	  let csrfToken = $("meta[name='_csrf']").attr("content");
	              let csrfHeader = $("meta[name='_csrf_header']").attr("content");
	              
				let contextPath = $('#contextPath').val();
            	let url = contextPath+"/api/decision/meetings/insert";
	            data = {
	                meetingDate: meetingDate,
	            };
	            $.ajax({
	                url: url,
	                type: "post",
	                accept: "application/json",
	                contentType: "application/json; charset=utf-8",
	                data: JSON.stringify(data),
	                dataType: "json",
	      			beforeSend : function(xhr){
        				xhr.setRequestHeader(csrfHeader, csrfToken);
        			},
	                success: function (result) {
	                    location.reload();
	                },
	                error: function (response, status, error) {
	                    console.debug(response);
	                    var json = response.responseJSON;
	                    if (json && json.message) {
	                        alert("실패했습니다: " + json.message);
	                    } else {
	                        alert("실패했습니다.");
	                    }
	                },
	            });
	        }
	
	        $(document).ready(function () {});
	        
	    </script>
	    

    </body>
</html>
