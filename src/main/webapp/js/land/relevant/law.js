let rowItem = 10;

// ----------------- 관련 법령 js --------------------

function getLawList2(cpage) {
	let contextPath = $("#contextPath").val();
	let url = contextPath + "/api/law/lawList.do";

	$("#lawList").attr("data-cpage", cpage);
	$("#lawList").empty();
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
			let allCount = data.allCount;
			let totalPage = data.totalPage;

			if (totalPage == "0") totalPage = 1;
			
			let addList = new Array();
			addList.push("<h4 class=\'fl title t1 bold cb s1 bullet'>검색결과 : " + allCount + "항목 (" +cpage+"/"+totalPage + ") 페이지</h4>");
			$(".cs_title").append(addList.join(''));

			if (list.length == 0){

				let addList2 = new Array();

                addList2.push("<div class=\"cbl_wrap\">");
                addList2.push("   등록된 법령이 없습니다.");
                addList2.push("</div>");

				$("#lawList").append(addList.join(''));				
			}
			else {
				$("#lawList").attr("data-tpage", totalPage);
	
				for(let i = 1; i<list.length+1; i++) {
					makeLawBlock2(i, list[i - 1]);
				}	
				makeLawPageList2();
			}
		},
		error: function(xhr, status, error) {
		
			//에러!
			//alert("code:"+xhr.status);
		
		}
	});
}

function makeLawBlock2(idx, info) {
	
	let contextPath = $("#contextPath").val();
	let addList = new Array();
	let seq_no = info.seq_no;
	

	addList.push("<tr>");
	
	addList.push("<th>");
	addList.push("<strong>" + idx+ "</strong>");
	addList.push("</th>");
	// 법령명
	addList.push("<td>");
	addList.push("<div class=\"cbl_subject\"><a href=\""+contextPath+"/law/view_board.do?viewSeq="+seq_no+"\">"+
				"<span>"+info.title+"</span>" +"</a></div>");
	addList.push("</td>");
	//------
	addList.push("<td>");
	addList.push("<strong>담당부서</strong><span>"+info.department+"</span>");
	addList.push("</td>");
	
	let text = "법 제" + info.article + "조 제" + info.paragraph + "항";
	
	addList.push("<td>");
	addList.push("<strong>수용근거</strong><span>"+text+"</span>");
	addList.push("</td>");
	
	addList.push("</tr>");
	
	$("#lawList").append(addList.join(''));
}


function makeLawPageList2() {

	let totalPage = $("#lawList").attr("data-tpage");
	let currentPage = $("#lawList").attr("data-cpage");
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

		getLawList2(selectedPage);
	});
}

function SearchLaw2(cpage) {

	let contextPath = $("#contextPath").val();
	let url = contextPath + "/api/law/search.do";

	let search =  $("input[name=searchContent]")[0].value;
	
	if (search == null || search == "") {
		alert("검색어를 입력해주세요");
		$('#searchContent').focus();
		return false;
	}
	
	$("#lawList").attr("data-cpage", cpage);
	$("#lawList").empty();
	$("#pageList").empty();
	$(".cs_title").empty();
	

	$.ajax({
		url: url,
		type: "GET",
		dataType: "json",
		async: false,
		data: {
			"cpage": cpage,
			"search" : search,
		},
		success: function(data) {
			let list = data.list;
			let allCount = data.allCount;
			let totalPage = data.totalPage;

			if (totalPage == "0") totalPage = 1;

			let addList = new Array();
			addList.push("<h4 class=\'fl title t1 bold cb s1 bullet'>검색결과 : " + allCount + "항목 (" +cpage+"/"+totalPage + ") 페이지</h4>");
			$(".cs_title").append(addList.join(''));

			if (list.length == 0){

				let addList2 = new Array();

                addList2.push("<div class=\"cbl_wrap\">");
                addList2.push("   검색결과가 존재하지 않습니다.");
                addList2.push("</div>");

				$("#lawList").append(addList2.join(''));
			}
			else {
				$("#lawList").attr("data-tpage", totalPage);
	
				for(let i = 1; i<list.length+1; i++) {
					makeLawBlock2(i, list[i - 1]);
				}	
				makeLawPageList2();
			}
		},
		error: function(xhr, status, error) {
		
			//에러!
			//alert("code:"+xhr.status);
		
		}
	});
}