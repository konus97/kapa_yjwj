

function goToAnnouncementList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement.do";
}

function goToAnnouncementView(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement/view.do?decisionId="+seqNo;
}

function goToAnnouncementWrite(seqNo){
	
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement/write.do?decisionId="+seqNo;

}


function goToAgendaView(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/agenda/view.do?decisionId="+seqNo;
}


function goToAgendaList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/agenda.do";
}

function goToDecisionRegisterList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register.do";
}

function goToDecisionRegister(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register/step1.do?decisionId="+seqNo;
}

function goToDecisionRegisterStep2(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register/step2.do?decisionId="+seqNo;
}

function goToDecisionRegisterStep3(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register/step3.do?decisionId="+seqNo;
}

// ------------ 법령 popup 관련 ---------- 


function openPopupLaw(){
	getLawInfo(1);
}

function closePopupLaw(){
	
	$("#lawList").empty();
	$('#popupLawCheck').removeClass("on");

}

function getLawInfo(cpage) {

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/law/lawList.do";
	
	let title = $("#lawTitleList").val();
	let article = $("#lawArticleList").val();
	let paragraph = $("#lawParagraphList").val();

	$("#lawList").attr("data-cpage", cpage);
	$("#lawList").empty();
	$("#pageList").empty();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"cpage": cpage,
			"title" : title,
			"article" : article,
			"paragraph" : paragraph,
		},
		success : function(data) {
			let list = data.list;
			let totalPage = data.totalPage;

			if (totalPage == "0") totalPage = 1;

			if (list.length == 0){}
			else {
				$("#lawList").attr("data-tpage", totalPage);
	
				for(let i = 1; i<list.length+1; i++) {
					makeLawBlock_popup(i, list[i - 1]);
				}	
				makeLawPageList();
			}

			$('#popupLawCheck').addClass("on");
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});
}

function makeLawBlock_popup(idx, info) {
	
	let contextPath = $("#contextPath").val();
	let addList = new Array();
	let seq_no = info.seq_no;

	addList.push("<tr>");
	
	addList.push("   <td>");
	addList.push("		 <input type=\"checkbox\" value=\""+seq_no+"\" name=\"checkboxLaw\">");
	addList.push("   </td>");
		
	addList.push("	<td>");
    addList.push(" 	   <strong>법령</strong>");
    addList.push(" 	   <span>"+info.title+"</span>");
	addList.push("	</td>");
	
	addList.push("	<td>");
    addList.push("  	<strong>조</strong>");
    addList.push("    	<span>"+info.article+"</span>");
	addList.push("	</td>");
	
	addList.push("	<td>");
    addList.push("   	<strong>항</strong>");
    addList.push("   	<span>"+info.paragraph+"</span>");
	addList.push("	</td>");
	
	addList.push("	<td>");
    addList.push("    	<strong>항</strong>");
    addList.push("    	<span>"+info.content+"</span>");
	addList.push("	</td>");
	
	addList.push("</tr>");
	
	$("#lawList").append(addList.join(''));
}


function makeLawPageList() {

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
			li.insertAdjacentHTML("beforeend", `<a href='#' id='page-${i}' class='on'>${i}</a>`);
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

		getLawInfo(selectedPage);
	});
}


function checkItemLaw(){
	let csrfToken = $("meta[name='_csrf']").attr("content");
    let csrfHeader = $("meta[name='_csrf_header']").attr("content");
	
	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/law/selectLaw.do";
	
	var list = $("input[name='checkboxLaw']");
	var arr = [];
	
	
	for (var i=0; i<list.length; i++){
		if (list[i].checked){
			arr.push(list[i].value);
			console.log (arr);
		}
	}
	
	$.ajax({
		url : url,
		type : "POST",
		dataType : "json",
		async: false,
		data : {
			"list": arr,
		},
	    beforeSend : function(xhr){
	       	xhr.setRequestHeader(csrfHeader, csrfToken);
	    },
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {
				for( let i = 0; i < list.length; i++) {
					addSelectLaw(list[i]);
				}
			}
		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});
	
	closePopupLaw();
	
}

function addSelectLaw(info){
	
	let seq_no = info.seq_no;
	let title = info.title;
	let article = info.article;	
	let paragraph = info.paragraph;
    let content = info.content;
  
	let addList = new Array();
		addList.push("<tr>");
		addList.push("<td><strong>법령</strong>");
		addList.push("<span>"+title+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>조</strong>");
		addList.push("<span>"+article+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>항</strong>");
		addList.push("<span>"+paragraph+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>내용</strong>");
		addList.push("<span>"+content+"</span>");
		addList.push("</td>");
		addList.push("<td>"); 
	    addList.push("          <button class=\"btn nohover t1\" onclick=\"lawRemove(this);return false;\">");
   	    addList.push("          	삭제</button>");
        addList.push("</td>") 
		addList.push("</tr>");
        
        $("#selectLawList").append(addList.join(''));
}

function lawRemove(obj){	
	var tr = $(obj).parent().parent();
	
	tr.remove();
}

function getLawTitle (){
	
	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/law/lawTitle.do";

	//---------------------------------------
	// 각 select box 초기화
	
	$("#lawTitleList").empty();
	let initTitle = new Array();
		
		initTitle.push("<option selected disabled>법령을 선택하세요.");
		initTitle.push("</option>");
		$("#lawTitleList").append(initTitle.join(''));
						
	$("#lawArticleList").empty();
		
	let initArticle = new Array();
	
		initArticle.push("<option selected disabled>조를 선택하세요");
		initArticle.push("</option>");
		$("#lawArticleList").append(initArticle.join(''));
		
		
		$("#lawParagraphList").empty();
			
	let initParagraph = new Array();
	
		initParagraph.push("<option selected disabled>항을 선택하세요");
		initParagraph.push("</option>");
		$("#lawParagraphList").append(initParagraph.join(''));
		
	//---------------------------------------
	
	$("#lawList").empty();
	$("#pageList").empty();

		$.ajax({
			url : url,
			type : "GET",
			dataType : "json",
			async: false,
			success : function(data) {
				let list = data.list;
				
				for(let i = 0; i<list.length; i++) {
					makeTitleOption(list[i].TITLE);
				}
			},
			error : function(xhr, status, error) {

				//에러!
				//alert("code:"+xhr.status);
			}
		});
}

function makeTitleOption(title){
	let addList = new Array();
	
		addList.push("<option value=\"" + title + "\"\>");
		addList.push(title);
		addList.push("</option>");
    
	$("#lawTitleList").append(addList.join(''));
}

function getLawArticles (){
	
		let contextPath = $("#contextPath").val();
		let url = contextPath+"/api/law/lawArticles.do";
		
		let title = $("#lawTitleList").val();
		console.log (title);

		$("#lawList").empty();
		$("#pageList").empty();

		$.ajax({
			url : url,
			type : "GET",
			dataType : "json",
			async: false,
			data : {
				"title": title,
			},
			success : function(data) {
				let list = data.list;
				
				$("#lawArticleList").empty();
				
				let init = new Array();
			
				init.push("<option selected disabled>조를 선택하세요");
				init.push("</option>");
				$("#lawArticleList").append(init.join(''));
				
				for(let i = 0; i<list.length; i++) {
					makeArticlesOption(list[i].article);
				}
			},
			error : function(xhr, status, error) {

				//에러!
				//alert("code:"+xhr.status);
			}
		});
}

function makeArticlesOption(article){
	let addList = new Array();
	
		addList.push("<option value=\"" + article + "\"\>");
		addList.push(article);
		addList.push("</option>");
    
	$("#lawArticleList").append(addList.join(''));
}

function getLawParagraph (){
	
		let contextPath = $("#contextPath").val();
		let url = contextPath+"/api/law/lawParagraph.do";
		
		let title = $("#lawTitleList").val();
		let article = $("#lawArticleList").val();
		console.log (title);

		$("#lawList").empty();
		$("#pageList").empty();

		$.ajax({
			url : url,
			type : "GET",
			dataType : "json",
			async: false,
			data : {
				"title": title,
				"article" : article,
			},
			success : function(data) {
				let list = data.list;
				
				$("#lawParagraphList").empty();
				
				let init = new Array();
			
				init.push("<option selected disabled>항을 선택하세요");
				init.push("</option>");
				$("#lawParagraphList").append(init.join(''));
				
				for(let i = 0; i<list.length; i++) {
					makeParagraphOption(list[i].paragraph);
				}
			},
			error : function(xhr, status, error) {

				//에러!
				//alert("code:"+xhr.status);
			}
		});
}

function makeParagraphOption(paragraph){
	let addList = new Array();
	
		addList.push("<option value=\"" + paragraph + "\"\>");
		addList.push(paragraph);
		addList.push("</option>");
    
	$("#lawParagraphList").append(addList.join(''));
}