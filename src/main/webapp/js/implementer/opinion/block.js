//************************************************
//Make blog block
// ************************************************

function makeOpinionBlock(startNumber,info) {

	console.log(info);

	let contextPath = $("#contextPath").val();
	
	let addList = new Array();
	
	let decisionId = info.decisonId;
	
	let recvDt = info.recvDt;
	let judgDivName = info.judgDivName;	
	let judgBizNm = info.judgBizNm;
    let caseNo = info.caseNo;
	let bizOprtNm = info.bizOprtNm;					
	let reptLoc = info.reptLoc;			
	let decisionState = info.decisionState;
    let decisionStateStr = info.decisionStateStr;
    
    let opinionWrite = "";
    
    if(decisionState==4){
    	opinionWrite="대기";
    }else{
    	opinionWrite="작성 완료";
    }
		
	addList.push("<tr>");
    addList.push("    <th>");
    addList.push("       <strong>"+startNumber+"</strong>");
    addList.push("    </th>");
    addList.push("    <td>");
    addList.push("       <strong>접수일</strong>");
    addList.push("       <span>"+recvDt+"</span>");
    addList.push("    </td>");
    addList.push("    <td>");
    addList.push("       <strong>재결기관</strong>");
    addList.push("       <span>"+judgDivName+"</span>");
    addList.push("    </td>");
    addList.push("    <td>");
    addList.push("       <strong>담당자</strong>");
    addList.push("       <span></span>");
    addList.push("     </td>");
    addList.push("     <td>");
    addList.push("        <strong>사업시행자</strong>");
    addList.push("        <span>"+bizOprtNm+"</span>");
    addList.push("     </td>");
    addList.push("     <td>");
    addList.push("         <strong>사건번호</strong>");
    addList.push("         <span>"+caseNo+"</span>");
    addList.push("     </td>");
    addList.push("     <td class=\"left\">");
    addList.push("          <strong>사업명</strong>");
    addList.push("          <span><a href=\""+contextPath+"/implementer/opinion/write.do?decisionId="+decisionId+"\"");
    addList.push("          >"+judgBizNm+"</a>");
    addList.push("     </span>");
    addList.push("     </td>");
    addList.push("     <td>");
    addList.push("       <strong>소재지</strong>");
    addList.push("       <span>"+reptLoc+"</span> ");            
    addList.push("     </td>");
    addList.push("     <td>");
    addList.push("        <strong>재결 진행상황</strong>");
    addList.push("        <span>"+decisionStateStr+"</span>");
    addList.push("     </td>");
    addList.push("     <td>");
    addList.push("        <strong>의견작성</strong>");
    addList.push("        <span>"+opinionWrite+"</span>");
    addList.push("     </td>");
    addList.push("</tr>");

	$("#contentList").append(addList.join(''));
}

