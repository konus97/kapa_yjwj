//************************************************
//Decision Agenda block
//************************************************

function makeAgendaRegisterBlock(num,info) {

	console.log(info);
	
	let contextPath = $("#contextPath").val();

	let decisionId = info.decisonId;
	let recvDt = info.recvDt;
	let judgDivName = info.judgDivName;	
	let judgBizNm = info.judgBizNm;
    let caseNo = info.caseNo;
	let bizOprtNm = info.bizOprtNm;					
	let reptLoc = info.reptLoc;		
	
	let decisionStateStr = info.decisionStateStr;
	let agendaState = info.agendaState;
	
	let addList = new Array();
	
	addList.push(" <tr>");
	addList.push("		<th>");
	addList.push("     		<strong>"+num+"</strong>");
	addList.push("		</th>");
	addList.push("		<td>");
	addList.push("    	 <strong>접수일</strong>");
	addList.push("    	 <span>"+recvDt+"</span>");
	addList.push("		</td>");
	addList.push("   <td>");
	addList.push("     <strong>심의일자</strong>");
	addList.push("     <span></span>");
	addList.push("	 </td>");
	addList.push("   <td>");
	addList.push("     <strong>사건번호</strong>");
	addList.push("    <span>"+caseNo+"</span>");
	addList.push("  </td>");
	addList.push("  <td>");
	addList.push("      <strong>사업명</strong>");
	addList.push("      <span>"+judgBizNm+"</span>");
	addList.push("  </td>");
	addList.push("  <td>");
	addList.push("      <strong>심의번호</strong>");
	addList.push("      <span>202201-01</span>");
	addList.push("  </td>");
	addList.push("  <td>");
	addList.push("      <strong>차수</strong>");
	addList.push("      <span>1회차</span>");
	addList.push("  </td>");
	addList.push("  <td>");
	addList.push("     <strong>진행상황</strong>");
	addList.push("     <span>"+agendaState+"단계</span>");
	addList.push(" </td>");
	addList.push(" <td>");
	addList.push("     <strong>문서보기</strong>");
	
	if(agendaState==1){
		addList.push("      <span><a href=\"#\" class=\"btn small\" onclick=\"goToDecisionRegister('"+decisionId+"');return false;\">작성</a></span>");
	}else if(agendaState==2){
		addList.push("      <span><a href=\"#\" class=\"btn small\" onclick=\"goToDecisionRegisterStep2('"+decisionId+"');return false;\">작성</a></span>");
	}else if(agendaState==3){
		addList.push("      <span><a href=\"#\" class=\"btn small\" onclick=\"goToDecisionRegisterStep3('"+decisionId+"');return false;\">완료</a></span>");
	}
	
	addList.push(" </td>");
	addList.push("</tr>");




	$("#contentList").append(addList.join(''));

}

