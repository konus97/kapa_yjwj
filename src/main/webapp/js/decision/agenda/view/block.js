//************************************************
//Decision Agenda block
//************************************************
let opinionTypeTitle = ['지연가산금(재결신청 청구)', '보상금 증액', '협의 미이행(불이행,미준수)','사업폐지(취소,중단,변경,보류,제외)','재결 보류','무허가건물 부지면적 보상','잔여지/잔여건물 가치 하락','잔여지/잔여건물 매수 청구(확대보상)','사도평가 적정성','잔여건물 매수청구','일단지 보상',
'미지급 용지','영업보상(이전비) 적정성','누락 물건 반영','폐업 보상','영농손실보상','휴직(실직)보상','이주대책 수립', '이주정착금, 주거이전비, 이사비','구분지상권','10% 변동 내역','기타(임료손실,대토보상 등)','소유자 의견 없음']; 

function getDecisionOpinionInfo(num, info) {

	console.log(info);
	
	let contextPath = $("#contextPath").val();

	let seqNo = info.seqNo;
	let opinionType = info.type;	
	let reptSeq = info.reptSeq;
	
	let ownerOpinion = info.ownerOpinion;
	let executorOpinion = info.executorOpinion;
	
	let opCount = $(".opinion"+seqNo).length+1;
	
	let getId = "#opinionCheck"+reptSeq+"-"+opinionType;

	let getTitle = opinionTypeTitle[opinionType-1];
		
	let addList = new Array();
	
	addList.push("<li class=\"opinionGet opinion"+seqNo+"\" >");   
	addList.push(" <div class=\"cbl_wrap\">");        
	addList.push("	    <div class=\"cbl_1 resetSeq"+seqNo+"\">"+num+"</div>"); 
    addList.push("      <div class=\"cbl_2\">"+opinionType+"-"+getTitle+"</div>");
    addList.push("      <div class=\"cbl_3\"> ");
    addList.push("       	<a href=\"#\" id=\"opinionTitle"+seqNo+"-"+opinionType+"\" onclick=\"openOpinionViewPopup('"+seqNo+"','"+reptSeq+"');return false;\" >상세정보</a>");
    addList.push("      </div> ");
    addList.push("      <div id=\"fileCount"+seqNo+"-"+opinionType+"\" class=\"cbl_4\">작성</div>");
    addList.push("      <div id=\"fileCount"+seqNo+"-"+opinionType+"\" class=\"cbl_5\">작성</div>");
    addList.push("   </div>");
    addList.push("</li>");
    
    $("#ownerItemList"+reptSeq).append(addList.join(''));
    

}


function openOpinionViewPopup(viewSeq,reptSeq){

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/decision/agenda/opinion/info";

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"viewSeq" : viewSeq,
		},
		success : function(data) {

			let info = data.list;
			console.log(info);
			
			let executorOpinion = info.executorOpinion;
			let ownerOpinion = info.ownerOpinion;
				
			$("#executorOpinion").val(executorOpinion);
			$("#ownerOpinion").val(ownerOpinion);
			
			getDecisionOpinionItemList(reptSeq);
			
			$("#popupOwnerOpinion").attr("data-seq",viewSeq);
			$("#popupOwnerOpinion").addClass("on");
			
			

		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});
	

	
}




function getDecisionOpinionItem(info) {

	console.log(info);
	
	let opinionTitle = info.opinionTitle;
	let opinionContent = info.opinionContent;
	
	let addList = new Array();
		
	addList.push("<tbody>");   
	addList.push("<tr>");   
	addList.push("  <th class=\"info_reg_th\">제목</th>");   
	addList.push("  <td><p class=\"input40\">"+opinionTitle+"</p></td>");   
	addList.push("</tr>");   
	addList.push("<tr>");   
	addList.push("  <th class=\"info_reg_th\">내용</th>");   
	addList.push(" <td><p class=\"textarea\">"+opinionContent+"</p></td>");   
	addList.push("</tr>");   
	//addList.push("<tr>");   
	//addList.push("  <th class=\"info_reg_th\">파일</th>");   
	//addList.push("  <td class=\"\">");   
	//addList.push("   <p class=\"input40\">파일명</p>");   
	//addList.push("	<div class=\"file_img_wrap\">");   
	//addList.push("  	<img src=\"https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg\" alt=\"\">");   
	//addList.push("	</div></td>");   
	//addList.push("</tr>");   
	addList.push("</tbody>");   
	
    
    $("#popupOpinionItemList").append(addList.join(''));
    

}

function closeOwnerViewOpinion(){
	
	$("#opinionTitle").val("");
	$("#opinionContent").val("");
	
	$("#popupOwnerOpinion").removeClass("on");
	
}

