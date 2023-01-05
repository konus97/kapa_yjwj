//************************************************
//Application list
// ************************************************
let rowItem = 10;

function getApplicationList(cpage) {

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/implementer/application/list";

	$("#contentList").attr("data-cpage", cpage);
	
	$("#contentList").empty();
	$("#pageList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"cpage":cpage,
		},
		success : function(data) {

			let list = data.list;
			let totalPage = data.totalPage;
			let allCount = data.allCount;
			
			if(totalPage=="0")totalPage=1;
			
			//전체 게시물 카운트
			let allCnt = "<mark class=\"cm\">"+allCount+"</mark>";
			$("#allCount").empty();
			$("#allCount").append(allCnt);
			
			let currentPage ="<mark class=\"cm\">"+cpage+"</mark>/"+totalPage;
			$("#currentPage").empty();
			$("#currentPage").append(currentPage);

			let t = Number(totalPage);
			let c = Number(cpage);

			let startNumber = 0;

			if(t!=c){
				startNumber = allCount-((c-1)*rowItem);
			}else{
				startNumber = list.length;
			}
				
			$("#contentList").attr("data-tpage", totalPage);

			if (list.length != 0) {
				for( let i = 0; i < list.length; i++) {
					makeImplementerBlock(startNumber,list[i]);
					startNumber--;
				}
			}
			
			makePageList();

		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}


function getApplicationListSearch() {

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/implementer/application/searchlist";
	
	var csrfToken = $("meta[name='_csrf']").attr("content");
	var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	
	/* 검색 조건 세팅  */
	var numOrname = document.getElementById('il_input').value; //사건번호 or 사업명
	var startDate = document.getElementById('il_date1').value; //접수일 시작
	var endDate = document.getElementById('il_date2').value; //접수일 끝
	var subject = document.getElementById('il_subject').value; //사업명
	var code = document.getElementById('il_code').value; //사건번호
	var part = document.getElementById('il_part').value; //소재지
	var name = document.getElementById('il_name').value; //시행자명
	
	var checkvalue = new Array; 
	/*
	재결진행상황 (10 = 선택안함)
	
	LTIS입력정보확인 = 0
	재결접수 = 1
	열람공고 = 2
	심의안건의뢰 = 3
	재결진행중 = 4
	반려 = 5
	재결지연 = 6
	보류 = 7
	심사완료 = 8
	*/

	for(let i=0; i<9; i++){
	if(document.getElementsByName('checkbox')[i].checked == true){
		checkvalue.push(i+1);
	}
	};
	
	console.log(checkvalue);
	
	$("#contentList").empty();
	$("#pageList").empty();

	$.ajax({
		url : url,
		type : "POST",
		dataType : "json",
		async: false,
		data : {
			"cpage" : 1,
			"numOrname": numOrname,
			"startDate" : startDate,
			"endDate" : endDate,
			"subject" : subject,
			"code" : code,
			"part" : part,
			"name" : name,
			"checkvalue" : checkvalue.toString()
		},
		beforeSend : function(xhr){
    	xhr.setRequestHeader(csrfHeader, csrfToken);
    	},
		success : function(data) {

			let list = data.list;
			let totalPage = data.totalPage;
			let allCount = data.allCount;
			
			if(totalPage=="0")totalPage=1;
			
			//전체 게시물 카운트
			let allCnt = "<mark class=\"cm\">"+allCount+"</mark>";
			$("#allCount").empty();
			$("#allCount").append(allCnt);
			
			let currentPage ="<mark class=\"cm\">"+1+"</mark>/"+totalPage;
			$("#currentPage").empty();
			$("#currentPage").append(currentPage);

			let t = Number(totalPage);
			let c = Number(1);

			let startNumber = 0;

			if(t!=c){
				startNumber = allCount-((c-1)*rowItem);
			}else{
				startNumber = list.length;
			}
				
			$("#contentList").attr("data-tpage", totalPage);

			if (list.length != 0) {
				for( let i = 0; i < list.length; i++) {
					makeImplementerBlock(startNumber,list[i]);
					startNumber--;
				}
			}
			
			makePageList();

		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}




function makePageList(){

	let totalPage = $("#contentList").attr("data-tpage");
	let currentPage = $("#contentList").attr("data-cpage");

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

	if(prev>0){
		
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
		if(i<=5)classInfo="page-link--show";

		if(currentPage==i){
			li.insertAdjacentHTML("beforeend", `<a href='#' id='page-${i}' class='on'><strong>${i}</strong></a>`);
		}else{
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

	$("#pageList a").click(function (e) {
		e.preventDefault();
		let $item = $(this);
		let $id = $item.attr("id");
		let selectedPage = $item.text();

		if ($id == "next")selectedPage=next;
		if ($id == "prev")selectedPage=prev;
		if ($id == "allprev")selectedPage=1;
		if ($id == "allnext")selectedPage=totalPage;

		getApplicationList(selectedPage);
	});



}
