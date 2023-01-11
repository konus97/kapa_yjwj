//************************************************
//Make board block
// ************************************************

function makeBoardBlock(num,info) {

	let contextPath = $("#contextPath").val();
	let boardSeq = $("#boardSeq").val();
	let boardUrl = "";
	
	if(boardSeq==1){
		boardUrl="notice";
	}else if(boardSeq==2){
		boardUrl="inquiry";
	}else if(boardSeq==3){
		boardUrl="inquiryLaw";
	}

	let seq = info.seqNo;
	let boardHits = info.boardHits;
	let regdate = info.regdate;
	let userName = info.userName;
	let title = info.title;
	
	regdate = regdate.substr(0,10);

	let addList = new Array();
	
	addList.push("<li>");
	addList.push("  <div class=\"cbl_wrap\">");
	addList.push("		<div class=\"cbl_no\">"+num+"</div>");
	addList.push("		<div class=\"cbl_subject\"><a href=\""+contextPath+"/board/"+boardUrl+"/view.do?viewSeq="+seq+"\">"+title+"</a></div>");
	addList.push("		<div class=\"cbl_name\">"+userName+"</div>");
	addList.push("		<div class=\"cbl_date\">"+regdate+"</div>");
	addList.push("		<div class=\"cbl_hit\">"+boardHits+"</div>");
	addList.push("	</div>");
	addList.push("</li>");
									

	$("#contentList").append(addList.join('')); 

}

