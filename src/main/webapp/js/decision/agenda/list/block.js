//************************************************
//Decision Agenda block
//************************************************

function makeDecisionAgendaBlock(num,info) {

	console.log(info);
	
	let contextPath = $("#contextPath").val();

	let decisionId = info.decisonId;
	let recvDt = info.recvDt;
	let judgDivName = info.judgDivName;	
	let judgBizNm = info.judgBizNm;
    let caseNo = info.caseNo;
	let bizOprtNm = info.bizOprtNm;					
	let reptLoc = info.reptLoc;		
	let charge = info.charge;
	if(charge == null){
		charge = "-";
	}
	
	let decisionStateStr = info.decisionStateStr;
		
	let addList = new Array();
	
	addList.push("<tr>");
	addList.push("	<th>");
	addList.push("    <strong>"+num+"</strong>");
	addList.push(" </th>");
	addList.push(" <td>");
	addList.push("   <strong>접수일</strong>");
	addList.push("   <span>"+recvDt+"</span>");
	addList.push("</td>");
	addList.push(" <td>");
	addList.push(" 		<strong>재결기관</strong>");
	addList.push(" 		<span>"+judgDivName+"</span>");
	addList.push(" </td>");
	addList.push(" <td>");
	addList.push("    <strong>담당자</strong>");
	addList.push("    <span>"+charge+"</span>");
	addList.push(" </td>");
	addList.push("<td>");
	addList.push("    <strong>사업시행자</strong>");
	addList.push("	 <span>"+bizOprtNm+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>사건번호</strong>");
	addList.push("	  <span>"+caseNo+"</span>");
	addList.push("</td>");
   
	addList.push("<td class=\"left\">");
	addList.push("   <strong>사업명</strong>");
	addList.push("	 <span><a href=\"#\"  onclick=\"goToAgendaView('"+decisionId+"');return false;\" >"+judgBizNm+"</a></span>");
	addList.push("</td>");
     
	addList.push("<td class=\"left\">");
	addList.push("   <strong>소재지</strong>");
	addList.push("	 <span>"+reptLoc+"</span>");
	addList.push("</td>");
 
	addList.push("<td class=\"left\">");
	addList.push("    <strong>담당법인</strong>");
	addList.push("	  <span>-</span>");
	addList.push("</td>");
	
	addList.push("<td class=\"left\">");
	addList.push("    <strong>재결 진행상황</strong>");
	addList.push("	  <span>"+decisionStateStr+"</span>");
	addList.push("</td>");
	
    addList.push("</tr>");	



	$("#contentList").append(addList.join(''));

}

