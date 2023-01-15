<%@	page contentType="text/html;charset=utf-8" language="java"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../css/epub/epub_init.css">
    <link rel="stylesheet" href="../../css/epub/ebook_slider_style.css">
    <title>한양도성 산책로 조성사업</title>
        <script src="../../js/epub/jquery.min.js"></script>
</head>

<body>

    <div class="top">
        <h1 class="top__tit">한양도성 산책로 조성사업</h1>
    </div>

    <div class="btm">
        <div class="book_wr">
            <button id="prev" class="btn_arrow btn_arrow--prev">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                    stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
                </svg>
            </button>
            <div id="imgWr" class="img_wr">
                <div class="img_container">
                    <img src="../../images/ebook/sample_page01.jpg" alt="page01">
                    <img src="../../images/ebook/sample_page02.jpg" alt="page02">
                    <img src="../../images/ebook/sample_page03.jpg" alt="page03">
                    <img src="../../images/ebook/sample_page04.jpg" alt="page04">
                </div>
            </div>
            <button id="next" class="btn_arrow btn_arrow--next">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2"
                    stroke="currentColor" class="w-6 h-6">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                </svg>
            </button>
        </div>
        <div class="table_wr">
            <h2 class="table_tit">목차</h2>
            <select id="toc">
                <option value="option1">사업명</option>
                <option value="option2">22수용0116</option>
                <option value="option3">22수용0354</option>
            </select>
        </div>
    </div>

    <script>

            let imgWrWidth = $('#imgWr').width()
            let moveVal = imgWrWidth/2
            let pageNum = 0 //ì´ê¸° íì´ì§ ê°
            let maxPageNum = $('.img_container img').length -2
            let totalMoveVal

            $('#prev').hide()

            $('#next').on('click',function(){
                if(pageNum < maxPageNum ){
                    pageNum ++
                }
                btnShowHide()
                moveSlide()
            })

            $('#prev').on('click',function(){
                if(pageNum > 0){
                    pageNum --
                }
                btnShowHide()
                moveSlide()
            })

            function btnShowHide(){
                if(pageNum == maxPageNum) {
                    $('#next').hide()
                } else if (pageNum == 0) {
                    $('#prev').hide()
                } else {
                    $('#prev').show()
                    $('#next').show()
                }
            }

            function moveSlide(){
                totalMoveVal = pageNum * imgWrWidth/2
                $('.img_container').css('left', -totalMoveVal+ 'px');
            }

    </script>

</body>

</html>