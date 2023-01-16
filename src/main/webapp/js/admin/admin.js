let rowItem = 10;


function getUserList(cpage) {

	let contextPath = $("#contextPath").val();
	let url = contextPath + "/api/admin/list.do";

	$("#userList").attr("data-cpage", cpage);
	$("#userList").empty();
	$("#pageList").empty();
	$(".cs_title").empty();

	$.ajax({
		url: url,
		type: "GET",
		dataType: "json",
		async: false,
		data: {
			"cpage": cpage,
		},
		success: function(data) {
			let list = data.list;
			console.log(list);
			let allCount = data.allCount;
			let totalPage = data.totalPage;

			if (totalPage == "0") totalPage = 1;

			let addList = new Array();
			addList.push("<h4 class=\'fl title t1 bold cb s1 bullet'>회원( " + allCount + " )명</h4>");
			$(".cs_title").append(addList.join(''));

			if (list.length == 0){}
			else {
				$("#userList").attr("data-tpage", totalPage);
	
				for(let i = 1; i<list.length+1; i++) {
					makeUserBlock(i, list[i - 1]);
				}	
				makeUserPageList();
			}
		},
		error: function(xhr, status, error) {
		
			//에러!
			//alert("code:"+xhr.status);
		
		}
	});
}

function makeUserBlock(idx, info) {

	let addList = new Array();
	let auth = "관리자";

	addList.push("<tr>");
	addList.push("<th>");
	addList.push("<strong>" + idx+ "</strong>");
	addList.push("<td>");
	addList.push("<strong>아이디</strong><span>"+info.userId+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>이름</strong><span>" + info.userName + "</span>");
	addList.push("</td>");
	addList.push("<td class=\'left'>");
	addList.push("<strong>소속</strong><span>" + info.company+ "</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>이메일</strong><span>" + info.email+ "</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>연락처</strong><span>"+info.phoneNumber + "</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>권한</strong><span>" + auth+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>옵션</strong><span><a href=\'#' class=\'btn tiny'>수정</a>");
	addList.push("<button type=\'button' class=\'btn tiny t1'>삭제</button></span>")
	addList.push("</td>");
	addList.push("</tr>");

	/*
		addList.push("  <div class=\"cbl_wrap\">");
		addList.push("		<div class=\"cbl_no\">" + num + "</div>");
		addList.push("		<div class=\"cbl_subject\"><a href=\"" + contextPath + "/board/" + boardUrl + "/view.do?viewSeq=" + seq + "\">" + title + "</a></div>");
		addList.push("		<div class=\"cbl_name\">" + userName + "</div>");
		addList.push("		<div class=\"cbl_date\">" + regdate + "</div>");
		addList.push("		<div class=\"cbl_hit\">" + boardHits + "</div>");
		addList.push("	</div>");
	*/
	addList.push("</th>");

	$("#userList").append(addList.join(''));
}


function makeUserPageList() {

	let totalPage = $("#userList").attr("data-tpage");
	let currentPage = $("#userList").attr("data-cpage");
	console.log(totalPage);
	console.log(currentPage);

	let pageGroup = 0;
	let last = 0
	let first = 0
	let next = 0;
	let prev = 0;

	pageGroup = Math.ceil(currentPage / 10);

	last = pageGroup * 10;
	if (last > totalPage) last = totalPage;

	first = last - (10 - 1) <= 0 ? 1 : last - (10 - 1);
	next = last + 1;
	prev = first - 1;

	const fragmentPage = document.createDocumentFragment();

	if (prev > 0) {
		let allpreli = document.createElement('div');
		allpreli.classList.add('p_arrow');
		allpreli.classList.add('start');
		allpreli.insertAdjacentHTML("beforeend", `<a href='#' id='allprev'><i></i><span class='blind'>처음</span></a>`);
		fragmentPage.appendChild(allpreli);

		let preli = document.createElement('div');
		preli.classList.add('p_arrow');
		preli.classList.add('prev');
		preli.insertAdjacentHTML("beforeend", `<a href='#' id='prev'><i></i><span class='blind'>이전</span></a>`);
		fragmentPage.appendChild(preli);
	}

	for (let i = first; i <= last; i++) {
		const li = document.createElement("div");
		li.classList.add('p_btn');

		let classInfo = "";
		if (i <=5 )classInfo="page-link--show";

		if (currentPage ==i){
			li.insertAdjacentHTML("beforeend", `<a href='#' id='page-${i}' class='on'><strong>${i}</strong></a>`);
		} else {
			li.insertAdjacentHTML("beforeend", `<a href='#' id='page-${i}' >${i}</a>`);
		}

		fragmentPage.appendChild(li);
	}

	if (last < totalPage) {

		let endli = document.createElement('div');
		endli.classList.add('p_arrow');
		endli.classList.add('next');
		endli.insertAdjacentHTML("beforeend", `<a href='#' id='next'><span class='blind'>다음</span><i></i></a>`);
		fragmentPage.appendChild(endli);

		let allendli = document.createElement('div');
		allendli.classList.add('p_arrow');
		allendli.classList.add('end');
		allendli.insertAdjacentHTML("beforeend", `<a href='#' id='allnext' ><span class='blind'>끝</span><i></i></a>`);
		fragmentPage.appendChild(allendli);

	}

	document.getElementById('pageList').appendChild(fragmentPage);
	// 페이지 목록 생성

	$("#pageList a").click(function(e) {
		e.preventDefault();
		let $item = $(this);
		let $id = $item.attr("id");
		let selectedPage = $item.text();

		if ($id == "next") selectedPage=next;
		if ($id == "prev") selectedPage=prev;
		if ($id == "allprev") selectedPage = 1;
		if ($id == "allnext") selectedPage = totalPage;

		getUserList(selectedPage);
	});

}



