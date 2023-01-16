//************************************************
//Make board block
// ************************************************

function makeCitiesAnnouncementBlock(num,info) {

	let contextPath = $("#contextPath").val();

	let decisionId = info.decisonId;
	let regdate = info.regdate;
	let caseNo = info.caseNo;
	let judgBizNm = info.judgBizNm;
	let docNumber = info.docNumber;
	let docTitle = info.docTitle;
	let receiver = info.receiver;
	let newsletterDay = info.newsletterDay;
	let publicationExpiryDate = info.publicationExpiryDate;
	let decisionState= info.decisionState;
	let noticeFileCount = info.noticeFileCount;
	let cityFileCount = info.cityFileCount;
	
	let checkExpriryDate = info.checkExpriryDate;
	
	console.log(checkExpriryDate);
	
	let addList = new Array();
	
    addList.push("<tr>");
    addList.push("  <th>");
    addList.push("      <strong>"+num+"</strong>");
    addList.push("  </th>");
    addList.push("  <td>");
    addList.push("      <strong>의뢰 문서 번호</strong>");
    addList.push("      <span>"+docNumber+"</span>");
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push("      <strong>사건 번호</strong>");
    addList.push("      <span>"+caseNo+"</span>");
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push("      <strong>문서제목</strong>");
    addList.push("      <span>");
    addList.push("          <a");
//decisionState = 4 면 완료이기 때문에 view로 들어가고 이외엔 write로 들어가는 로직 추가
if(decisionState == 4){
		    addList.push("         	href=\""+contextPath+"/cities/announcement/view.do?decisionId="+decisionId+"\"");

}else{
	    addList.push("         	href=\""+contextPath+"/cities/announcement/write.do?decisionId="+decisionId+"\"");

}
    addList.push("          >"+docTitle+"</a>");
    addList.push("      </span>");
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push("      <strong>수신처(수신자)</strong>");
    addList.push("      <span>"+receiver+"</span>");
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push("      <strong>의뢰문서파일</strong>");

	if(noticeFileCount>0){
		addList.push("<span>");
	    addList.push("      <button class=\"btn small02 t1 nohover\">");
   	 	addList.push("             <i class=\"icon download\"></i>");
    	addList.push("      </button>");
	    addList.push("      <button class=\"btn small02 t1 nohover\">");
	    addList.push("</span>");
	}else{
	    addList.push("      <span>-</span>");
	}
	
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push("      <strong>의뢰일</strong>");
    addList.push("      <span>-</span>");
    addList.push("  </td>");
    addList.push("  <td>");
    addList.push("      <strong>회보일</strong>");
    addList.push("      <span>"+newsletterDay+"</span>");
    addList.push("  </td>");
    addList.push("  <td >");
    addList.push("      <strong>회보첨부파일</strong>");

	if(cityFileCount>0){
		addList.push("<span>");
	    addList.push("      <button class=\"btn small02 t1 nohover\">");
   	 	addList.push("             <i class=\"icon download\"></i>");
    	addList.push("      </button>");
	    addList.push("      <button class=\"btn small02 t1 nohover\">");
	    addList.push("</span>");
	}else{
	    addList.push("      <span>-</span>");
	}
	
    addList.push("  </td>");

    addList.push("  <td>");
    addList.push("      <strong>연람공고 만료일</strong>");
    addList.push("      <span>"+publicationExpiryDate+"</span>");
    addList.push("  </td>");

    addList.push("  <td>");
    addList.push("      <strong>상태</strong>");

    if(decisionState>=4){
    	addList.push("      <span>완료</span>");
    }else{
    	
    	if(checkExpriryDate==true){
    		addList.push("      <span>만료</span>");
    	}else{

    		if(cityFileCount==0){
    	    	addList.push("      <span>대기</span>");
    		}else{
    			addList.push("      <span>완료</span>");
    		}

    	}
    	
    }
    
    addList.push("  </td>");


    addList.push("</tr>");

	$("#contentList").append(addList.join(''));

}

