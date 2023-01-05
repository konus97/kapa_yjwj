/* 높이 계산 */
function funLoad() {
  var Cheight = $(window).height();
  $(".height").css({ height: Cheight + "px" });
}
window.onload = funLoad;
window.onresize = funLoad;
$(window).scroll(function () {
  var scTop = $(window).scrollTop();
  head_nav(scTop);
});
function head_nav(scTop) {
  if (scTop > 0) {
    $("#header").removeClass("on");
    $("#header").addClass("on");
  } else {
    $("#header").removeClass("on");
  }
}

/* 토글버튼 */
$(function () {
  /* 메뉴 오픈 */
  $(document).on("click", ".hma_btn", function () {
    $("#header").stop().toggleClass("open");
  });

  /* 서브메뉴 오픈 */
  $(document).on("click", ".csnm_btn", function () {
    $(".cs_navi").stop().toggleClass("open");
  });

  /* 로그인 탭 오픈 */
  $(document).on("click", ".l_user", function () {
    $("#login_user").stop().addClass("on");
    $("#login_admin").stop().removeClass("on");
  });
  $(document).on("click", ".l_admin", function () {
    $("#login_user").stop().removeClass("on");
    $("#login_admin").stop().addClass("on");
  });

  /* 패밀리사이트 오픈 */
  $(document).on("click", ".fs_btn", function () {
    $(".f_site").stop().toggleClass("on");
  });

  /* 테이블 정보 오픈 */
  $(document).on("click", ".c_tablebtn", function () {
    var id = $(this).attr("id");
    var no = id.replace(/[^0-9]/g, "");
    if ($(".cs_infowrap#ct_info" + no + "").hasClass("open")) {
      $(".cs_infowrap").removeClass("open");
    } else {
      $(".cs_infowrap").removeClass("open");
      $(".cs_infowrap#ct_info" + no + "").addClass("open");
    }
  });

  /* 라디오 정보 오픈 */
  $(document).on("click", ".cs_chois .radio input", function () {
    var id = $(this).attr("id");
    var no = id.replace(/[^0-9]/g, "");

    $(".cs_radioinfo").addClass("blind");
    $(".cs_radioinfo#ct_radio" + no + "").removeClass("blind");
  });
  $(document).on("click", ".ct_obstaclebtn", function () {
    $(".ct_obstaclemore").stop().toggleClass("open");
  });
});

/* 슬라이드 */
$(document).ready(function () {
  var slide_hero = $(".slide_hero");
  slide_hero.owlCarousel({
    items: 1,
    loop: true,
    nav: true,
    center: true,
    callbacks: true,
    animateOut: "fadeOut",
    autoplay: true,
    autoplayTimeout: 5000,
    autoplayHoverPause: false,
  });
  var slide_type1 = $(".slide_type1");
  slide_type1.owlCarousel({
    items: 1,
    loop: true,
    nav: false,
    center: true,
    callbacks: true,
    autoplay: true,
    autoplayTimeout: 5000,
    autoplayHoverPause: false,
  });
  var slide_type2 = $(".slide_type2");
  slide_type2.owlCarousel({
    items: 5,
    loop: true,
    nav: true,
    center: true,
    callbacks: true,
    autoplay: true,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
  });
});

/* 아코디언 */
$(function () {
  /* 메뉴 아코디언 */
  $(".hma_wrap > ul > li > strong").click(function () {
    if ($(this).hasClass("open") === true) {
      if ($(this).next().length > 0) {
        $(this).next().removeClass("open");
      }
      $(this).removeClass("open");
    } else {
      if ($(this).next().length > 0) {
        $(this).next().addClass("open");
      }
      $(this).addClass("open");
    }
  });
});

/* 레이어팝업 */
$(window).on("hashchange", function () {
  var className = "popup";

  var classUrl = location.href.split("#")[1];
  if (classUrl == "!" || classUrl == undefined) {
    $("." + className).removeClass("on");
  } else {
    $("." + className).removeClass("on");
    $("." + classUrl).addClass("on");
  }
});
$(document).ready(function () {
  var classUrl = location.href.split("#")[1];
  //$("." + classUrl).addClass("on");

  $(function () {
    $.datepicker.regional["ko"] = {
      closeText: "CLOSE",
      prevText: "이전달",
      nextText: "다음달",
      currentText: "TODAY",
      monthNames: [
        "1월(JAN)",
        "2월(FEB)",
        "3월(MAR)",
        "4월(APR)",
        "5월(MAY)",
        "6월(JUN)",
        "7월(JUL)",
        "8월(AUG)",
        "9월(SEP)",
        "10월(OCT)",
        "11월(NOV)",
        "12월(DEC)",
      ],
      monthNamesShort: [
        "1월",
        "2월",
        "3월",
        "4월",
        "5월",
        "6월",
        "7월",
        "8월",
        "9월",
        "10월",
        "11월",
        "12월",
      ],
      dayNames: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
      dayNamesShort: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
      dayNamesMin: ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
      weekHeader: "Wk",
      dateFormat: "yy-mm-dd",
      firstDay: 0,
      isRTL: false,
      showMonthAfterYear: true,
      yearSuffix: "",
      ignoreReadonly: true,
    };
    $.datepicker.setDefaults($.datepicker.regional["ko"]);

    // Today 버튼 코드 추가
    $.datepicker._gotoToday = function (id) {
      $(id).datepicker("setDate", new Date());
      $(".ui-datepicker").hide().blur();
    };
  });

  if (window.innerWidth < 480) {
    $(document).bind("mousemove", function (e) {
      // something that work on PC.
    });
  }
});

$(function () {
  $(".datepicker").datepicker({
    ignoreReadonly: true,
  });
});

/* 아이디 비밀번호 찾기 인증방법 */
$('input[name="confirm_radio"]').change(function(){
  if($('#findId #idMail').is(':checked')){
    $('#findId .find_num').removeClass('on');
    $('#findId .find_mail').addClass('on');
  }else if($('#findId #idNum').is(':checked')){
    $('#findId .find_mail').removeClass('on');
    $('#findId .find_num').addClass('on');
  };
});
$('input[name="confirm_radio2"]').change(function(){
  if($('#findPw #pwMail').is(':checked')){
    $('#findPw .find_num').removeClass('on');
    $('#findPw .find_mail').addClass('on');
  }else if($('#pwNum').is(':checked')){
    $('#findPw .find_mail').removeClass('on');
    $('#findPw .find_num').addClass('on');
  };
});

/* 아이디 비밀번호 찾기 탭 */
$(document).on("click", ".find_id", function () {
  $("#findId").stop().addClass("on");
  $("#findPw").stop().removeClass("on");
  $('.p_title').text('아이디 찾기');
});
$(document).on("click", ".find_pw", function () {
  $("#findId").stop().removeClass("on");
  $("#findPw").stop().addClass("on");
  $('.p_title').text('비밀번호 찾기');
});
