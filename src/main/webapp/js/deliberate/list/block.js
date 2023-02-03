//************************************************
//Decision Agenda block
//************************************************

function makeDeliberateBlock(num,info) {

	console.log(info);
	
	let contextPath = $("#contextPath").val();

	let seqNo = info.seqNo;
	let consultationDate = info.consultationDate;
	consultationDateFormat = consultationDate.replaceAll('-', '');
	let title = info.title;	
	if(title == null){
		title = '-';
	}
		
	let addList = new Array();
	  
	addList.push(" <tr>");
	addList.push("  <th>");
	addList.push("      <strong>"+num+"</strong>");
	addList.push("   </th>");
	/*addList.push("  <td>");
	addList.push("       <strong>접수일</strong>");
	addList.push("      <span></span>");
	addList.push("  </td>");*/
	addList.push(" <td>");
	addList.push("     <strong>심의일자</strong>");
	addList.push("     <span>"+consultationDate+"</span>");
	addList.push(" </td>");
	addList.push("  <td>");
	addList.push("     <strong>사업명</strong>");
	addList.push("     <span>"+title+"</span>");
	addList.push("	</td>");
	/*addList.push("<td>");
	addList.push("    <strong>심의번호</strong>");
	addList.push("     <span></span>");
	addList.push(" </td>");*/
	addList.push(" <td>");
	addList.push("     <strong>차수</strong>");
	addList.push("     <span id=\"num1_"+seqNo+"\">"+consultationDateFormat+"-"+num+"차</span>");
	addList.push("     <input type=\"hidden\" id=\"num1_"+seqNo+"\" value=\"num1_"+seqNo+"\"");
	addList.push(" </td>");
	/*addList.push("  <td>");
	addList.push("     <strong>진행상황</strong>");
	addList.push("      <span>심사대기</span>");
	addList.push("  </td>");*/
	addList.push(" <td>");
	addList.push("     <strong>심사진행</strong>");
	addList.push("     <span>");
	addList.push("         <a");
	addList.push("           href=\"#\" onclick=\"goToDeliberateView('"+seqNo+"');return false;\" ");
	addList.push("             class=\"btn small\"");
	addList.push("             >보기</a >");
	/*addList.push("         <button class=\"btn small\" onclick=\"newEbookOpen()\" >");
	addList.push("             E-Book");
	addList.push("         </button>");*/
	/*addList.push("         <a");
	addList.push("           href=\"#\" onclick=\"ebookViewOpen('"+seqNo+"');return false;\" ");
	addList.push("             class=\"btn small\"");
	addList.push("             >E-Book</a >");*/
	/*addList.push("         <a");
	addList.push("           href=\"#\" onclick=\"goToDeliberatePdf('"+seqNo+"');return false;\" ");
	addList.push("             class=\"btn small\"");
	addList.push("             >다운로드</a >");*/
/*	addList.push("       <button class=\"btn small\">");
	addList.push("           다운로드");
	addList.push("        </button>");*/
	addList.push("      <button class=\"btn small t4\" onclick=\"getAgendaDetail('"+seqNo+"');return false;\">");
	addList.push("          심사하기");
	addList.push("     </button>");
	addList.push("    </span>");
	addList.push("  </td>");
	/*addList.push("  <td>");
	addList.push("      <button class=\"btn small t4\" onclick=\"getAgendaDetail('"+seqNo+"');return false;\">");
	addList.push("          심사하기");
	addList.push("     </button>");
	addList.push("   </td>");*/
    addList.push(" </tr>");

	$("#contentList").append(addList.join(''));

}

function ebookPopupOpen() {
	let contextPath = $("#contextPath").val();
	window.open(contextPath+'/deliberate/agenda/ebookPopup.do', 'window', 'width=1600, height=920, menubar=no, status=no, toolbar=no'); 
}
function newEbookOpen() {
	
	window.open('./../html/ebooktest.html', 'window', 'width=1600, height=920, menubar=no, status=no, toolbar=no'); 
}


function makeAgendaDetail(num,info) {

	console.log(info);
	
	let selectDate = info.selectDate;
	let consultationDate = info.consultationDate;
	consultationDate = consultationDate.replaceAll('-', '');
	consultationDate = consultationDate +"-"+num+"차";
	let seqNo = info.seqNo;
	let title = info.title;	
	let caseNo = info.caseNo;	
	let judgDivName = info.judgDivName;	
	let recvDt = info.recvDt;	
	
	let num1 = document.getElementById("num1_"+selectDate).innerText;
	
	let reptLoc = info.reptLoc;		
	let addList = new Array();
	
	addList.push("<tr>");
	addList.push("<th>");
	addList.push("    <strong>"+num+"</strong>");
	addList.push("</th>");
	addList.push("<td>");
	addList.push("    <strong>접수일</strong>");
	addList.push("    <span>"+recvDt+"</span>");
	addList.push("</td>");
	/*addList.push("<td>");
	addList.push("    <strong>재결기관</strong>");
	addList.push("    <span>");
	addList.push(judgDivName);
	addList.push("</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>담당자</strong>");
	addList.push("    <span>-</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>사업시행자</strong>");
	addList.push("    <span>-</span>");
	addList.push("</td>");*/
	addList.push("<td>");
	addList.push("    <strong>사건번호</strong>");
	addList.push("    <span>"+caseNo+"</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>심의차수</strong>");
	addList.push("    <span>"+num1+"-"+num+"번</span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>사업명</strong>");
	addList.push("    <span>");
	addList.push("	 	<span><a href=\"#\"  onclick=\"goToDeliberateDetail('"+seqNo+"');return false;\" >"+title+"</a></span>");
	addList.push(" 	  </span>");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>심의안 보기</strong>");
	addList.push("    <span>");
/*	addList.push("         <button class=\"btn small t4\" onclick=\"getAgendaDetail('"+seqNo+"');return false;\">");
	addList.push("            심사하기");
	addList.push("         </button>");
	addList.push("         <a");
	addList.push("           href=\"#\" onclick=\"ebookViewOpen('"+seqNo+"');return false;\" ");
	addList.push("             class=\"btn small\"");
	addList.push("             >E-Book</a >");
	addList.push("         <a");
	addList.push("           href=\"#\" onclick=\"goToDeliberatePdf('"+seqNo+"');return false;\" ");
	addList.push("             class=\"btn small\"");
	addList.push("             >다운로드</a >");*/
	addList.push("         <a");
	addList.push("           href=\"#\" onclick=\"goToDeliberatePdf('"+seqNo+"');return false;\" ");
	addList.push("             class=\"btn small\"");
	addList.push("             >심사하기</a >");
	addList.push("    </span>");
	addList.push("</td>");
	/*addList.push("<td>");
	addList.push("    <strong>소재지</strong>");
	addList.push("    <span>"+reptLoc+"</span");
	addList.push("    >");
	addList.push("</td>");
	addList.push("<td>");
	addList.push("    <strong>담당법인</strong>");
	addList.push("    <span>-</span>");
	addList.push("</td>");*/
	
	/*addList.push("<td>");
	addList.push("    <strong>심사결과</strong>");
	addList.push("    <span>");
	addList.push("         <button class=\"btn large t1\" onclick=\"openResultPopup(); return false;\">");
	addList.push("            승인 : 2명, 반려 : 1명");
	addList.push("         </button>");
	addList.push(" 	  </span>");
	addList.push("</td>");
	addList.push("</tr>");*/
	
	$("#agendaDetailList").append(addList.join(''));

}
