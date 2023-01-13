let rowItem = 10;


function getUserList() {

	let contextPath = $("#contextPath").val();
	let url = contextPath + "/api/admin/list.do";

	$.ajax({
		url: url,
		type: "GET",
		dataType: "json",
		async: false,
		success: function(data) {
			let list = data.list;
			let allCount = data.allCount;
			console.log(data.list);
			
			let addList = new Array();
			addList.push("<h4 class=\'fl title t1 bold cb s1 bullet'>회원( " + allCount + " )명</h4>");
			$(".cs_title").append(addList.join(''));
			
			if (allCount > 0) {
				for (let i = 1; i < list.length+1; i++) {
					makeUserBlock(i, list[i-1]);
				}
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
	let auth="관리자";
	
	addList.push("<tr>");
	addList.push("<th>");
	addList.push("<strong>"+idx+"</strong>");
	addList.push("<td>");
	addList.push("<strong>아이디</strong><span>"+info.userId+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>이름</strong><span>"+info.userName+"</span>");
	addList.push("</td>");
	addList.push("<td class=\'left'>");
	addList.push("<strong>소속</strong><span>"+info.company+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>이메일</strong><span>"+info.email+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>연락처</strong><span>"+info.phoneNumber+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("<strong>권한</strong><span>"+auth+"</span>");
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
