//************************************************
//Make board block
// ************************************************

function makeDecisionAnnouncementBlock(num,info) {

	let contextPath = $("#contextPath").val();

	let decisonId = info.decisonId;
	let regdate = info.regdate;
	let caseNo = info.caseNo;
	let judgBizNm = info.judgBizNm;
	let docNumber = info.docNumber;
	let docTitle = info.docTitle;
	let receiver = info.receiver;
	let newsletterDay = info.newsletterDay;
	let cityFileCount = info.cityFileCount;
	
	let requestStartDate = info.requestStartDate;
	
	let decisionStateStr = info.decisionStateStr;
	let decisionState = info.decisionState;

	
	let addList = new Array();
	
	addList.push("<tr>");
    addList.push(" <th>");
    addList.push("  <strong>"+num+"</strong>");
    addList.push(" </th>");
    addList.push(" <td onclick=\"goToAnnouncementView('"+decisonId+"');return false;\" >")
	addList.push("	  <strong>접수일</strong>");
    addList.push("    <span>"+regdate+"</span>");
    addList.push(" </td>");
    addList.push(" <td>");
    addList.push("    <strong>의뢰 문서 번호</strong>");
    addList.push("    <span>"+docNumber+"</span>");
    addList.push(" </td>");
    addList.push(" <td>");
    addList.push("	 <strong>사건 번호</strong>");
    addList.push(" 	 <span>"+caseNo+"</span>");
    addList.push(" </td>");

    addList.push("  <td class=\"left\">");
    addList.push("     <strong>사업명</strong>");
    addList.push("     <span><a href=\"#\" onclick=\"goToAnnouncementView('"+decisonId+"');return false;\" > ");
    addList.push("     "+judgBizNm+"</a>");
    addList.push("     </span>");
    addList.push("    </td>");

    addList.push(" <td>");
    addList.push("    <strong>문서제목</strong>");
    addList.push("    <span>"+docTitle+"</span>");
    addList.push(" </td>");
    addList.push(" <td>");
    addList.push("	 <strong>수신처(수신자)</strong>");
    addList.push("   <span>"+receiver+"</span>");
    addList.push(" </td>");
    addList.push(" <td>");
    addList.push("    <strong>의뢰문서파일</strong>");
    addList.push("    <span></span>");
    addList.push(" </td>");
    addList.push("  <td>");
    addList.push("    <strong>의뢰일</strong>");
    addList.push("    <span>"+requestStartDate+"</span>");
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push(" 		 <strong>회보일</strong>");
    addList.push("       <span>"+newsletterDay+"</span>");
    addList.push("  </td>");
    addList.push("   <td>");
    addList.push("       <strong>회보첨부파일</strong>");
    addList.push("   <span>");
if(decisionState ==2 || cityFileCount==0){         
	addList.push("         - ");
  }else{
 addList.push("    	<button class=\"btn small02 t1 nohover\" onclick=\"goCites('"+decisonId+"');return false;\">");
 addList.push("    	<i class=\"icon download\"></i>");
 addList.push("    </button>");	
}
   
    addList.push("   </span>");
    addList.push("   </td>");

    addList.push("   <td>");
    addList.push("      <strong>재결 진행 상황</strong>");
    addList.push("      <span>"+decisionStateStr+"</span>");
    addList.push("   </td>");

  /*  addList.push("   <td>");
    addList.push("       <strong>담당법인</strong>");
    addList.push("       <span>-</span>");
    addList.push("   </td>");*/

    addList.push("   <td>");
    addList.push("       <strong>열람공고</strong>");
	
	if(decisionState==2){
	    addList.push("   <span><a href=\"\#\" onclick=\"goToAnnouncementWrite('"+decisonId+"');return false;\" class=\"btn small\">등록</a></span>");
	}else if(decisionState>=3){
	    addList.push("   <span>등록 완료</span>");
	}

    addList.push("    </td>");
    addList.push("</tr>");					

	$("#contentList").append(addList.join(''));

}

function goCites(decisonId){
			let contextPath = $("#contextPath").val();
			url = contextPath+"/cities/announcement/view.do?decisionId="+decisonId;
			location.href = url;
}

