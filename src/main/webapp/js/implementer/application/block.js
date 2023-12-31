//************************************************
//Make Implementer block
// ************************************************

function makeImplementerBlock(startNumber,info) {

	console.log(info);
	
	let contextPath = $("#contextPath").val();
	
	let addList = new Array();
	
	let judgSeq = info.judgSeq;
    
	let recvDt = info.recvDt;
	let judgBizNm = info.judgBizNm;
	let judgDivName = info.judgDivName;	
	let rept_loc = info.rept_loc;
    let caseNo = info.caseNo;
	let charge = info.charge;
  	let decisionStateStr = info.decisionStateStr;
	let custMan = info.custMan;
	let custName = info.custName;
	
	addList.push("<tr>");
    addList.push("   <th>");
    addList.push("       <strong>"+startNumber+"</strong>");
    addList.push("   </th>");
    addList.push("   <td>");
    addList.push("      <strong>접수일</strong>");
    addList.push("      <span>"+recvDt+"</span>");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("       <strong>재결기관</strong>");
    addList.push("       <span>"+judgDivName+"</span>");
    addList.push("   </td>");
    addList.push("   <td>");
    addList.push("       <strong>담당자</strong>");
    addList.push("       <span>"+charge+"</span>");
    addList.push("    </td>");
    addList.push("    <td>");
    addList.push("        <strong>사업시행자</strong>");
    addList.push("        <span>"+custName+"</span>");
    addList.push("    </td>");
    addList.push("    <td>");
    addList.push("         <strong>사건번호</strong>");
    addList.push("         <span>"+caseNo+"</span>");
    addList.push("    </td>");
    addList.push("    <td class=\"left\">");
    addList.push("         <strong>사업명</strong>");
    addList.push("         <span><a href=\""+contextPath+"/implementer/decision/view.do?masterId="+judgSeq+"\">");
    addList.push("                "+judgBizNm+"</a>");
    addList.push("         </span>");
    addList.push("    </td>");
    addList.push("    <td>");
    addList.push("         <strong>소재지</strong>");
    addList.push("         <span>"+rept_loc+"</span> ");            
    addList.push("    </td>");
    addList.push("    <td>");
    addList.push("         <strong>재결 진행상황</strong>");
    addList.push("         <span>"+decisionStateStr+"</span>");
    addList.push("     </td>");
    addList.push("     <td>");
    addList.push("          <strong>심사여부</strong>");
    addList.push("          <span></span>");
    addList.push("     </td>");
    addList.push("</tr>");

	$("#contentList").append(addList.join(''));
}

