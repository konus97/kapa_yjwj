let popupOpinion = 2;
let addOpinionItemArray = new Array();

let fileCount = 0;

function addOpinion(getSeq,getItem,getType,getTitle,reptOwnrSeq,ownrNm){
   

   let opCount = $(".opinion"+getSeq).length+1;
   console.log(getType);
   let getId = "#opinion"+getSeq+"-"+getItem;
   
   
  // if($(getId).length>0){
  //    $(getId).remove();
 //  }else{
      console.log($(getId).length);
      
      let addList = new Array();
       
      addList.push("      <input type=\"hidden"+"\" id=\"seqNum"+"\" value=\""+getSeq+"\"/> ");
      addList.push("      <input type=\"hidden"+"\" id=\"itemNum"+"\" value=\""+getItem+"\"/> ");
      addList.push("<li class=\"opinionGet opinion"+getSeq+"\" id=\"opinion"+getSeq+"-"+getItem+"\" data-seq=\""+getSeq+"\" data-type=\""+getItem+"\" reptOwnrSeq=\""+reptOwnrSeq+"\" ownrNm=\""+ownrNm+"\" data-title=\"\" data-content=\"\">");   
      addList.push(" <div class=\"cbl_wrap\">");        
		addList.push("<input type=\"checkbox\" name=\"chk_list\" id=\"opinion"+getSeq+"-"+getItem+"\" value=\"opinion"+getSeq+"-"+getItem+"\" class=\"cbl_wrap_check\">");
      addList.push("       <div class=\"cbl_1 resetSeq"+getItem+"\">"+opCount+"</div>"); 
       addList.push("      <div class=\"cbl_2\">"+getItem+"-"+getTitle+"</div>");
       addList.push("      <div class=\"cbl_3\"> ");
       addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"','"+ownrNm+"');return false;\" >의견을 작성해주세요</a>");
       addList.push("  		</div>");
       addList.push("      <div id=\"owner"+getSeq+"-"+getItem+"\" class=\"cbl_4\"> 미작성 </div> ");
       addList.push("      <div id=\"operator"+getSeq+"-"+getItem+"\" class=\"cbl_5\"> 미작성 </div> ");
       addList.push("      <div id=\"fileCount"+getSeq+"-"+getItem+"\" class=\"cbl_4\"></div>");
       addList.push("   </div>");
       addList.push(" 	<div class=\"cbl_btn_wr\">");     
	   addList.push("          <button class=\"btn nohover t4\" onclick=\"checkSelectedValue('"+getSeq+"','"+getItem+"');return false;\">");
   	   addList.push("          	복사</button>");
	   addList.push("          <button class=\"btn nohover t1\" onclick=\"opinionRemove('"+getId+"');return false;\">");
   	   addList.push("          	삭제</button>");
       addList.push("   </div>");
       addList.push("</li>");
      
       
       if(getType=="land"){
           $("#ownerLandItemList"+getSeq).append(addList.join(''));
       }else{
           $("#ownerGoodsItemList"+getSeq).append(addList.join(''));
       }
       

  // }   
   
    resetSeq(getSeq);
  
}
const landCheckArr = new Array();
function addLandOpinion(rank,info,getItem){
	
	console.log(info);
	

	if(landCheckArr.length != 0){
		for(let i=0; i<landCheckArr.length; i++){
			if(JSON.stringify(landCheckArr[i]) === JSON.stringify(info)){
//				alert(info.ownrNnm+'님의 ' +info.reptAddr+'(은)는 이미 선택된 항목입니다');
				alert('이미 선택된 항목은 추가 대상에서 제외됩니다');

				return false;
			}else{
				
			}
		}
	}
		landCheckArr.push(info);



	
	let getSeq = info.reptSeq;
	let reptOwnrSeq = info.reptOwnrSeq;
	let reptAddr = info.reptAddr;
	
	let sidoGunguCd = info.sidoGunguCd;
	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let areaUnit = info.areaUnit;
	let befUnitCost = info.befUnitCost;
    
	let ownrNnm = info.ownrNm;
	let landShre = info.landShre;

    let getId = "opinion"+getSeq+"-"+getItem;
      
      let addList = new Array();
       
		addList.push("<tr id="+getId+"\ data-seq=\""+getSeq+"\" data-type=\""+getItem+"\" reptOwnrSeq=\""+reptOwnrSeq+"\" ownrNm=\""+ownrNnm+"\" data-title=\"\" data-content=\"\">");
		addList.push("<td><strong>체크박스</strong>");
		addList.push("<input type=\"checkbox\" name=\"chk_list\" id=\"opinionCheck"+getSeq+"-"+getItem+"\" value=\"opinion"+getSeq+"-"+getItem+"\" class=\"cbl_wrap_check\">");
		addList.push("</td>");
		addList.push("<td>"+rank+"</td>");
		addList.push("<td><strong>소유자</strong>");
		addList.push("<span>"+ownrNnm+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>지분</strong>");
		addList.push("<span>"+landShre+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>소재지</strong>");
		addList.push("<span>"+reptAddr+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>지번</strong>");
		addList.push("<span>"+sidoGunguCd+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>본번</strong>");
		addList.push("<span>"+mainStrtNo+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>부번</strong>");
		addList.push("<span>"+subStrtNo+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>공</strong>");
		addList.push("<span>"+obstStuc1Nm+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>실</strong>");
		addList.push("<span>"+obstStuc2Nm+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>면적</strong>");
		addList.push("<span>"+areaAmot+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>단가</strong>");
		addList.push("<span>"+befUnitCost+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>소유자 의견</strong>");
		addList.push("<span id=\"owner"+getSeq+"-"+reptOwnrSeq+"-"+getItem+"\">미작성</span>");
		addList.push("</td>");
		addList.push("<td><strong>사업시행자 의견</strong>");
		addList.push("<span id=\"operator"+getSeq+"-"+reptOwnrSeq+"-"+getItem+"\">미작성</span>");
		addList.push("</td>");
		addList.push("<td>");     
	   addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"','"+ownrNnm+"');return false;\" class=\"item_result_wr__btn item_result_wr__btn--write\">작성</a>");
		addList.push("</td>");
		addList.push("<td>"); 
	   addList.push("          <button class=\"item_result_wr__btn item_result_wr__btn--copy\" onclick=\"checkSelectedValue('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"');return false;\">");
   	   addList.push("          	복사</button>");
       addList.push("</td>");
		addList.push("<td>"); 
	   addList.push("          <button class=\"item_result_wr__btn item_result_wr__btn--del\" onclick=\"opinionRemove2(this); checkResultWrTbody();; return false;\">");
   	   addList.push("          	삭제</button>");
       addList.push("</td>");
		addList.push("</tr>");
        
		    if(getItem == 1){
			$("#ownerLandItemList1").append(addList.join(''));
			}else if(getItem  == 2){
			$("#ownerLandItemList2").append(addList.join(''));
			}else if(getItem  == 3){
			$("#ownerLandItemList3").append(addList.join(''));
			}else if(getItem  == 4){
			$("#ownerLandItemList4").append(addList.join(''));
			}else if(getItem  == 5){
			$("#ownerLandItemList5").append(addList.join(''));
			}else if(getItem  == 6){
			$("#ownerLandItemList6").append(addList.join(''));
			}else if(getItem  == 7){
			$("#ownerLandItemList7").append(addList.join(''));
			}else if(getItem  == 8){
			$("#ownerLandItemList8").append(addList.join(''));
			}else if(getItem  == 9){
			$("#ownerLandItemList9").append(addList.join(''));
			}else if(getItem  == 10){
			$("#ownerLandItemList10").append(addList.join(''));
			}else if(getItem  == 11){
			$("#ownerLandItemList11").append(addList.join(''));
			}else if(getItem  == 12){
			$("#ownerLandItemList12").append(addList.join(''));
			}else if(getItem  == 13){
			$("#ownerLandItemList13").append(addList.join(''));
			}else if(getItem  == 14){
			$("#ownerLandItemList14").append(addList.join(''));
			}else if(getItem  == 15){
			$("#ownerLandItemList15").append(addList.join(''));
			}else if(getItem  == 16){
			$("#ownerLandItemList16").append(addList.join(''));
			}else if(getItem  == 17){
			$("#ownerLandItemList17").append(addList.join(''));
			}else if(getItem  == 18){
			$("#ownerLandItemList18").append(addList.join(''));
			}else if(getItem  == 19){
			$("#ownerLandItemList19").append(addList.join(''));
			}else if(getItem  == 20){
			$("#ownerLandItemList20").append(addList.join(''));
			}else if(getItem  == 21){
			$("#ownerLandItemList21").append(addList.join(''));
			}else if(getItem  == 22){
			$("#ownerLandItemList22").append(addList.join(''));
			}else if(getItem  == 23){
			$("#ownerLandItemList23").append(addList.join(''));
			}else if(getItem  == 24){
			$("#ownerLandItemList24").append(addList.join(''));
			}else{
			alert("잘못된 접근입니다.");
			return false;
			}
       

  // }   
   
    resetSeq(getSeq);
  
}

   const goodsCheckArr = new Array();
function addGoodsOpinion(rank,info,getItem){

	if(goodsCheckArr.length != 0){
		for(let i=0; i<goodsCheckArr.length; i++){
			if(JSON.stringify(goodsCheckArr[i]) === JSON.stringify(info)){
				//alert(info.ownrNnm+'님의 '+info.reptAddr +'의 '+info.obstKindNm+'(은)는 이미 선택된 항목입니다');
				alert('이미 선택된 항목은 추가 대상에서 제외됩니다');
				return false;
			}else{
				
			}
		}
	}
		goodsCheckArr.push(info);

	
	let getSeq = info.reptSeq;
	let reptAddr = info.reptAddr;
	let reptOwnrSeq = info.reptOwnrSeq;
	let mainStrtNo = info.mainStrtNo;
	let subStrtNo = info.subStrtNo;
	
	let strtOther = info.strtOther;
	
	let obstKindNm = info.obstKindNm;
	let obstStuc1Nm = info.obstStuc1Nm;
	let obstStuc2Nm = info.obstStuc2Nm;
	
	let areaAmot = info.areaAmot;
	let befUnitCost = info.befUnitCost;
	let areaUnit = info.areaUnit;
	
	let ownrNnm = info.ownrNm;
	let landShre = info.landShre;

 let getId = "opinion"+getSeq+"-"+getItem;
      //console.log($(getId).length);
      
      let addList = new Array();
       
		addList.push("<tr id="+getId+"\ data-seq=\""+getSeq+"\" data-type=\""+getItem+"\" reptOwnrSeq=\""+reptOwnrSeq+"\" ownrNm=\""+ownrNnm+"\" data-title=\"\" data-content=\"\">");
		addList.push("<td><strong>체크박스</strong>");
		addList.push("<input type=\"checkbox\" name=\"chk_list\" id=\"opinionCheck"+getSeq+"-"+getItem+"\" value=\"opinion"+getSeq+"-"+getItem+"\" class=\"cbl_wrap_check\">");
		addList.push("</td>");
		addList.push("<td>"+rank+"</td>");
		addList.push("<td><strong>소유자</strong>");
		addList.push("<span>"+ownrNnm+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>지분</strong>");
		addList.push("<span>"+landShre+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>소재지</strong>");
		addList.push("<span>"+reptAddr+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>본번</strong>");
		addList.push("<span>"+mainStrtNo+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>부번</strong>");
		addList.push("<span>"+subStrtNo+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>부번2</strong>");
		addList.push("<span>"+strtOther+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>물건종류</strong>");
		addList.push("<span>"+obstStuc1Nm+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>물건구조</strong>");
		addList.push("<span>"+obstKindNm+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>면적/수량</strong>");
		addList.push("<span>"+areaAmot+""+areaUnit+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>단가</strong>");
		addList.push("<span>"+befUnitCost+"</span>");
		addList.push("</td>");
		addList.push("<td><strong>소유자 의견</strong>");
		addList.push("<span id=\"owner"+getSeq+"-"+reptOwnrSeq+"-"+getItem+"\">미작성</span>");
		addList.push("</td>");
		addList.push("<td><strong>사업시행자 의견</strong>");
		addList.push("<span id=\"operator"+getSeq+"-"+reptOwnrSeq+"-"+getItem+"\">미작성</span>");
		addList.push("</td>");
		addList.push("<td>");     
	   addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionAccordion('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"','"+ownrNnm+"');return false;\" class=\"item_result_wr__btn item_result_wr__btn--write\">작성</a>");
		addList.push("</td>");
		addList.push("<td>"); 
	   addList.push("          <button class=\"item_result_wr__btn item_result_wr__btn--copy\" onclick=\"checkSelectedValue('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"');return false;\">");
   	   addList.push("          	복사</button>");
       addList.push("</td>");
		addList.push("<td>"); 
	   addList.push("          <button class=\"item_result_wr__btn item_result_wr__btn--del\" onclick=\"opinionRemove2(this); checkResultWrTbody();return false;\">");
   	   addList.push("          	삭제</button>");
       addList.push("</td>") 
		addList.push("</tr>");
       
       /*지연가산금 재결신청청구 추가*/
       addList.push("<tr class=\"acc_all2\">");
       addList.push("<td colspan=\"17\" class=\"accd_body2\">");
       addList.push("<div class=\"acc_table2\">");
       addList.push("<div class=\"acc_wrap2\">");
       addList.push("<div class=\"acc_wrap3\">");
       addList.push("<h2><span id=\"acc_notice\">지연가산금(재결신청 청구)</span></h2>");
       addList.push("</div>");
       addList.push("<table class=\"acc_table_editor\">");
       addList.push("<tbody>");
       addList.push("<tr>");
       addList.push("<th class=\"info_reg_th accrdtit\">소유자 의견</th>");
       addList.push("<td><textarea id=\"ownerOpinion\"  placeholder=\"소유자 의견을 작성해주십시오.\" class=\"textarea resetPopupVal\"></textarea></td>");
       addList.push("</tr>");
       addList.push("<tr>");
       addList.push("<th class=\"info_reg_th accrdtit\">사업시행자<br>의견");
       addList.push("</th>");
       addList.push("<td><textarea id=\"executorOpinion\" placeholder=\"사업시행자 의견을 작성해주십시오.\" class=\"textarea resetPopupVal\"></textarea></td>");
       addList.push("</tr>");
       addList.push("</tbody>");
       addList.push("</table>");
       addList.push("<table id=\"popupOpinionItemList2\">");
       addList.push("<tbody id=\"popupOpinionItem2\" class=\"popupOpinionItem\">");
       addList.push("<tr>");
       addList.push("<th class=\"info_reg_th accrdtit\">설정</th>");
       addList.push("<td>");
       addList.push("<div class=\"txt-r2\">");
       addList.push("<span style=\"color:red;\">*한글파일다운로드 후 pdf로 변환 후 업로드 해 주시기 바랍니다 &nbsp</span>");
       addList.push("<button type=\"button\" class=\"btn nohover\" onclick=\"pdfUpload('1');return false;\">");
       addList.push("<i class=\"download white icon\"></i> PDF 업로드");
       addList.push("</button>");
       addList.push("<button class=\"btn nohover\" onclick=\"hwpDownload('1');return false;\">");
       addList.push("<i class=\"download white icon\"></i> 한글파일 다운로드");
       addList.push("</button>");
       addList.push("</div>");
       addList.push("</td>");
       addList.push("</tr>");
       addList.push("<tr>");
       addList.push("<th class=\"info_reg_th accrdtit accrdfile\">PDF파일</th>");
       addList.push("<td>");
       addList.push("<div class=\"file_flex\">");
       addList.push("<input id=\"description1\" class=\"input40 file_name\" value=\"PDF\" readonly=\"\">");
       addList.push("<div class=\"file_btn_wrap\">");
       addList.push("<div class=\"diflex\">");
       addList.push("<div class=\"input4040 file_btn2 popupOpinionItemFile\" id=\"popupOpinionItemFilePDF1\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUploadPDF('1');return false;\">pdf 파일만 첨부해주세요</div>");
       addList.push("<button class=\"btn nohover t4 small2\" onclick=\"removeFileTarget('1');return false;\">");
       addList.push("<i class=\"close icon white\"></i>");
       addList.push("</button>");
       addList.push("</div>");
       addList.push("</div>");
       addList.push("</div>");
       addList.push("</td>");
       addList.push("<th class=\"info_reg_th accrdtit accrdfile\">파일</th>");
       addList.push("<td>");
       addList.push("<div class=\"file_flex\">");
       addList.push("<input id=\"description\" class=\"input40 file_name\" placeholder=\"파일 설명을 입력해주십시오.\">");
       addList.push("<div class=\"file_btn_wrap\">");
       addList.push("<div class=\"diflex\">");
       addList.push("<div class=\"input4040 file_btn2 popupOpinionItemFile\" id=\"popupOpinionItemFile1-0\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">jpeg, png 이미지 파일만 첨부해주세요</div>");
       addList.push("<button class=\"btn nohover t4 small2\" onclick=\"removeFileTarget('1');return false;\">");
       addList.push("<i class=\"close icon white\"></i>");
       addList.push("</button>");
       addList.push("</div>");
       addList.push("</div>");
       addList.push("</div>");
       addList.push("</td>");
       addList.push("</tr>");
       addList.push("<tr>");
       addList.push("<th class=\"info_reg_th accrdtit\">제목</th>");
       addList.push("<td><input type=\"text\" class=\"input40 opinionTitle\" placeholder=\"제목을 입력해주십시오.\"></td>");
       addList.push("<th class=\"info_reg_th accrdtit\">내용</th>");
       addList.push("<td><textarea class=\"textarea opinionContent\" placeholder=\"내용을 입력해주십시오.\"></textarea></td>");
       addList.push("</tbody>");
       addList.push("</table>");
       addList.push("<div class=\"closeAcc2\">");
       addList.push("<button class=\"small3\" onclick=\"submitOwnerOpinion(); return false;\">등록</button>");
       addList.push("<button class=\"small3 small4\" onclick=\"opinionRemove44(this); return false;\">취소</button>");
       addList.push("<button class=\"small3\" onclick=\"opinionRemove44(this); return false;\"><i class=\"close icon white\"></i>닫기</button>");
       addList.push("</div>");
       addList.push("</div>");
       addList.push("</div>");
       addList.push("</td>");
       addList.push("</tr>");
       /*이 위로 추가*/
       
        
          // $("#ownerGoodsItemList2").append(addList.join(''));

if(getItem == 1){
$("#ownerGoodsItemList1").append(addList.join(''));
}else if(getItem  == 2){
$("#ownerGoodsItemList2").append(addList.join(''));
}else if(getItem  == 3){
$("#ownerGoodsItemList3").append(addList.join(''));
}else if(getItem  == 4){
$("#ownerGoodsItemList4").append(addList.join(''));
}else if(getItem  == 5){
$("#ownerGoodsItemList5").append(addList.join(''));
}else if(getItem  == 6){
$("#ownerGoodsItemList6").append(addList.join(''));
}else if(getItem  == 7){
$("#ownerGoodsItemList7").append(addList.join(''));
}else if(getItem  == 8){
$("#ownerGoodsItemList8").append(addList.join(''));
}else if(getItem  == 9){
$("#ownerGoodsItemList9").append(addList.join(''));
}else if(getItem  == 10){
$("#ownerGoodsItemList10").append(addList.join(''));
}else if(getItem  == 11){
$("#ownerGoodsItemList11").append(addList.join(''));
}else if(getItem  == 12){
$("#ownerGoodsItemList12").append(addList.join(''));
}else if(getItem  == 13){
$("#ownerGoodsItemList13").append(addList.join(''));
}else if(getItem  == 14){
$("#ownerGoodsItemList14").append(addList.join(''));
}else if(getItem  == 15){
$("#ownerGoodsItemList15").append(addList.join(''));
}else if(getItem  == 16){
$("#ownerGoodsItemList16").append(addList.join(''));
}else if(getItem  == 17){
$("#ownerGoodsItemList17").append(addList.join(''));
}else if(getItem  == 18){
$("#ownerGoodsItemList18").append(addList.join(''));
}else if(getItem  == 19){
$("#ownerGoodsItemList19").append(addList.join(''));
}else if(getItem  == 20){
$("#ownerGoodsItemList20").append(addList.join(''));
}else if(getItem  == 21){
$("#ownerGoodsItemList21").append(addList.join(''));
}else if(getItem  == 22){
$("#ownerGoodsItemList22").append(addList.join(''));
}else if(getItem  == 23){
$("#ownerGoodsItemList23").append(addList.join(''));
}else if(getItem  == 24){
$("#ownerGoodsItemList24").append(addList.join(''));
}else{
alert("잘못된 접근입니다.");
return false;
}
       

   
    resetSeq(getSeq);
  
}

function opinionRemove(getId){	
	$(getId).remove();
}

function opinionRemove2(obj){	
	var tr = $(obj).parent().parent();
	
	tr.remove();
}

function opinionContentCopy(){
	
}

function resetSeq(getSeq){
   
   let opCount = $(".opinion"+getSeq).length;
   
   let rank = 1;

   for( let i = 0; i < opCount; i++) {
      $(".resetSeq"+getSeq).eq(i).text(rank);
      rank++;
   }
   
}

//소유자의견 읽는 버전
function openOpinionPopup2(getSeq,getType,reptOwnrSeq,ownrNm){
	console.log("start?");
   $(".resetPopupVal").val('');
   $("#popupOpinionItemList").empty();
   
	var notice ="";
	
	switch (getType) {
	  case "1":
	    notice = '지연가산금(재결신청 청구)';
	    break;
	  case "2":
	    notice = '보상금 증액';
	    break;
	  case "3":
	    notice = '협의 미이행(불이행,미준수)';
	    break;
	  case "4":
	    notice = '사업폐지(취소,중단,변경,보류,제외)';
	    break;
	  case "5":
	    notice = '재결 보류';
	    break;
	  case "6":
	    notice = '무허가건물 부지면적 보상';
	    break;
	  case "7":
	    notice = '잔여지/잔여건물 가치 하락';
	    break;
	  case "8":
	    notice = '잔여지/잔여건물 매수 청구(확대보상)';
	    break;
	  case "9":
	    notice = '사도평가 적정성';
	    break;
	  case "10":
	    notice = '일단지 보상';
	    break;
	  case "11":
	    notice = '미지급 용지';
	    break;
	  case "12":
	    notice = '영업보상(이전비) 적정성';
	    break;
	  case "13":
	    notice = '누락 물건 반영';
	    break;
	  case "14":
	    notice = '폐업 보상';
	    break;
	  case "15":
	    notice = '영농손실보상';
	    break;
	  case "16":
	    notice = '휴직(실직)보상';
	    break;
	  case "17":
	    notice = '이주대책 수립';
	    break;
	  case "18":
	    notice = '이주정착금, 주거이전비, 이사비';
	    break;
	  case "19":
	    notice = '구분지상권';
	    break;
	  case "20":
	    notice = '10% 변동 내역';
	    break;
	  case "21":
	    notice = '기타(임료손실,대토보상 등)';
	    break;
	  case "22":
	    notice = '10%이상 변동';
	    break;
	  default:
		notice='';
		   break;
		}
	if(document.getElementById('notice')  != null){
	document.getElementById('notice').innerHTML = notice;
	}
	
					for(let i=0; i<opinionArr.length; i++){
						console.log(opinionArr[i]);
						if(opinionArr[i].reptOwnrSeq == reptOwnrSeq && opinionArr[i].reptSeq == getSeq && getType ==opinionArr[i].type ){
	
					// 소유자, 사업시행자 의견
					$("#popupOwnerOpinion").addClass("on");
					document.getElementById('ownerOpinion').value  = opinionArr[i].ownerOpinion;
					document.getElementById('ownerOpinion').setAttribute('readonly','')
					document.getElementById('executorOpinion').value  = opinionArr[i].executorOpinion;
					document.getElementById('executorOpinion').setAttribute('readonly','')
	
					// TB_Decision_Opinion_Item 의견
					let decisionId = $('#decisionId').val();
					let csrfToken = $("meta[name='_csrf']").attr("content");
					let csrfHeader = $("meta[name='_csrf_header']").attr("content");    	        
					let contextPath = $('#contextPath').val();
					let url = contextPath+"/api/implementer/opinion/item";
					$.ajax({
            			url : url,
            			type : "POST",
						dataType : "json",
            			data :
						 {
						"decisionId" : decisionId,
						"reptSeq": getSeq,
						"reptOwnrSeq" : reptOwnrSeq,
						"type" : getType
						},
            			async: false, 
            			beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
            			success : function(data) {
							let opinionList = data.opinionList;
							let fileList = data.file;
							console.log(fileList.length);
							let pdfArr = new Array();
							let imgArr = new Array();
							for(let i=0; i<fileList.length; i++){
								let  ext = fileList[i].fileNameExtension;
								console.log(ext);
								if(ext.toLowerCase() == 'pdf'){
									pdfArr.push(fileList[i]);
								}else{
									imgArr.push(fileList[i]);
								}
							}
							console.log(opinionList);
							console.log(pdfArr);
							console.log(imgArr);
							let opinionTitle = opinionList[0].opinionTitle;
							let opinionContent = opinionList[0].opinionContent;
							
							/*TB_Decision_Opinion_Item 의견 테이블 추가*/
							let addList = new Array();
		
						   $("#popupOpinionItemList").empty();
						   
						    addList.push("   <tbody>");  
							addList.push("   <tr>");   
						    addList.push("       <th class=\"info_reg_th\">제목</th>");   
						    addList.push("       <td><input type=\"text\" class=\"input40 opinionTitle\" value=\""+opinionTitle+"\" readonly></td>");   
						    addList.push("   </tr>");   
						    addList.push("    <tr>");   
						    addList.push("       <th class=\"info_reg_th\">내용</th>");   
						    addList.push("      <td>");   
						    addList.push("        <textarea class=\"textarea opinionContent\" readonly>"+opinionContent+"</textarea></td>");   
						    addList.push("    </tr>");   
							
							/*첨부 파일 (이미지)*/
							if(imgArr.length != 0){
							addList.push("   <tr>");   
						    addList.push("       <th class=\"info_reg_th\">이미지</th>");   
						    addList.push("       <td>");  
							addList.push("  	<img src=\" "+imgArr[0].fileFolder+imgArr[0].fileNameChange+"\" alt=\"\">");   
 							addList.push("       </td>");  

						    addList.push("   </tr>");   
							}
							/*PDF 다운로드 */
							if(pdfArr.length != 0){
							addList.push("   <tr>");   
						    addList.push("       <th class=\"info_reg_th\">PDF 다운로드</th>");        
						    addList.push("      <td>");   
							addList.push("          <button type=\"button\" class=\"btn nohover\"  onclick=\"pdfDownload('"+pdfArr[0].seqNo+"');return false;\">");
							addList.push("             <i class=\"download white icon\"></i> PDF 다운로드");
							addList.push("           </button>");
						    addList.push("      </td>");   
							addList.push("    </tr>");  
							addList.push("   </tbody>");  
							}

		
							
							$("#popupOpinionItemList").append(addList.join(''));
							
							
							
						//opinionTitle, opinionContent 가져오고, 이미지정보랑 pdf 정보 가져오기
            			},
            			error : function(xhr, status, error) {
            			}
            		});
	
	}
}


   


   
}


function openOpinionPopup(getSeq,getType,reptOwnrSeq,ownrNm){
   $(".resetPopupVal").val('');
   $("#popupOpinionItemList").empty();
   
	var notice ="";
	
	switch (getType) {
	  case "1":
	    notice = '지연가산금(재결신청 청구)';
	    break;
	  case "2":
	    notice = '보상금 증액';
	    break;
	  case "3":
	    notice = '협의 미이행(불이행,미준수)';
	    break;
	  case "4":
	    notice = '사업폐지(취소,중단,변경,보류,제외)';
	    break;
	  case "5":
	    notice = '재결 보류';
	    break;
	  case "6":
	    notice = '무허가건물 부지면적 보상';
	    break;
	  case "7":
	    notice = '잔여지/잔여건물 가치 하락';
	    break;
	  case "8":
	    notice = '잔여지/잔여건물 매수 청구(확대보상)';
	    break;
	  case "9":
	    notice = '사도평가 적정성';
	    break;
	  case "10":
	    notice = '일단지 보상';
	    break;
	  case "11":
	    notice = '미지급 용지';
	    break;
	  case "12":
	    notice = '영업보상(이전비) 적정성';
	    break;
	  case "13":
	    notice = '누락 물건 반영';
	    break;
	  case "14":
	    notice = '폐업 보상';
	    break;
	  case "15":
	    notice = '영농손실보상';
	    break;
	  case "16":
	    notice = '휴직(실직)보상';
	    break;
	  case "17":
	    notice = '이주대책 수립';
	    break;
	  case "18":
	    notice = '이주정착금, 주거이전비, 이사비';
	    break;
	  case "19":
	    notice = '구분지상권';
	    break;
	  case "20":
	    notice = '10% 변동 내역';
	    break;
	  case "21":
	    notice = '기타(임료손실,대토보상 등)';
	    break;
	  case "22":
	    notice = '소유자 의견 없음';
	    break;
	  default:
		notice='';
		   break;
		}
	
	document.getElementById('notice').innerHTML = notice;
   

   if(addOpinionItemArray.length>0){
      console.log('array!');
      console.log(addOpinionItemArray);
      let checkOpinionItem = false;
      
      for ( let i = 0; i < addOpinionItemArray.length; i++) {
         
         let reptSeq = addOpinionItemArray[i].reptSeq;
         let type = addOpinionItemArray[i].type;
		 let reptOwnrSeq = addOpinionItemArray[i].reptOwnrSeq; 
		 let ownrNm  = addOpinionItemArray[i].ownrNm;
         if(getSeq==reptSeq&&getType==type){
            
			
            let ownerOpinion = addOpinionItemArray[i].ownerOpinion;	
            let executorOpinion = addOpinionItemArray[i].executorOpinion;
            

            ownerOpinion = $("#ownerOpinion").val(ownerOpinion);
            executorOpinion = $("#executorOpinion").val(executorOpinion);
			
			console.log(addOpinionItemArray[i].opinionItemList);
			
			if(addOpinionItemArray[i].opinionItemList != undefined){
            let opinionItemList = addOpinionItemArray[i].opinionItemList;      
           // console.log(opinionItemList.length);
            
            $("#popupOpinionItemList").empty();
            
            for ( let j = 0; j < opinionItemList.length; j++) {
               let opinion = opinionItemList[j];
               
               resetOpinionItem(opinion);
               checkOpinionItem=true;
            }
            
}
         }
      }
      
      if(checkOpinionItem==false){
         addOpinionItem(getType);
      }

console.log(addOpinionItemArray);    
  
   }else{            
      addOpinionItem(getType);
   }
   
   $("#popupOwnerOpinion").attr("data-seq",getSeq);
   $("#popupOwnerOpinion").attr("data-type",getType);
   $("#popupOwnerOpinion").attr("reptOwnrSeq",reptOwnrSeq);
   $("#popupOwnerOpinion").attr("ownrNm",ownrNm);

   $("#popupOwnerOpinion").addClass("on");

document.getElementById('reptSeq').value = getSeq;
document.getElementById('reptOwnerSeq').value = reptOwnrSeq;


   
}




function submitOwnerOpinion(){
	fileCount = 0;

   let getSeq = $("#popupOwnerOpinion").attr("data-seq");
   let getType = $("#popupOwnerOpinion").attr("data-type");
   let reptOwnrSeq = $("#popupOwnerOpinion").attr("reptOwnrSeq");
   let ownrNm = $("#popupOwnerOpinion").attr("ownrNm");

   let ownerOpinion = $("#ownerOpinion").val();
   let executorOpinion = $("#executorOpinion").val();
   
   if (ownerOpinion == null || ownerOpinion == "") {
      alert("소유자 의견을 입력해주세요");
      return false;
   }
   
   if (executorOpinion == null || executorOpinion == "") {
      alert("사업시행자 의견을 입력해주세요");
      return false;
   }
   


   let sub = new Object();
   sub['reptSeq'] = getSeq;
   sub['type'] = getType;
   sub['ownerOpinion'] = ownerOpinion;
   sub['executorOpinion'] = executorOpinion;
   sub['reptOwnrSeq'] = reptOwnrSeq;
   sub['ownrNm'] = ownrNm;

   let opCount = $(".popupOpinionItem").length;
      let opinionItemList = new Array(); // json의 전체를 가리키는 배열
      
   for ( let i = 0; i < opCount; i++) {
      
      let opinionTitle = $(".opinionTitle:eq("+i+")").val();
      let opinionContent = $(".opinionContent:eq("+i+")").val();
      let popupOpinionItemFile = $(".popupOpinionItemFile:eq("+i+")").attr("data-seq");

      let opinionSeq = getType; //추가
	  let desc = document.getElementById('description').value;
	  let rank = document.getElementById('fileCount').value;
	  let fileName = document.getElementById('popupOpinionItemFile'+getType+'-'+rank).innerText;
	  let filePdfName = document.getElementById('popupOpinionItemFilePDF'+getType).innerText;	
	  console.log(fileName);

      let sub2 = new Object();
      sub2['opinionTitle'] = opinionTitle;
      sub2['opinionContent'] = opinionContent;
      sub2['opinionItemFile'] = popupOpinionItemFile;

      sub2['opinionSeq'] = opinionSeq; //추가
	  sub2['desc'] = desc;
	  sub2['fileName'] = fileName;
	  sub2['filePdfName'] = filePdfName;
	  
      opinionItemList[i]=sub2;
   }
      
   sub['opinionItemList'] = opinionItemList;
   
   if(addOpinionItemArray.length>0){
      for ( let i = 0; i < addOpinionItemArray.length; i++) {
         
         let reptSeq = addOpinionItemArray[i].reptSeq;
         let type = addOpinionItemArray[i].type;
         let reptOwnrSeq = addOpinionItemArray[i].reptOwnrSeq;
		 let ownrNm = addOpinionItemArray[i].ownrNm;
         if(getSeq==reptSeq&&getType==type){            
            addOpinionItemArray.splice(i, 1);
         }
         
      }
   }
   
   addOpinionItemArray.push(sub);
   
   console.log(addOpinionItemArray);

	// 미작성 -> 작성
	document.getElementById('owner'+getSeq+'-'+reptOwnrSeq+'-'+getType).innerText = '작성';
	document.getElementById('operator'+getSeq+'-'+reptOwnrSeq+'-'+getType).innerText = '작성';
   
   closeOwnerOpinion();
   
}

function checkSelectedValue(getSeq,getItem, reptOwnrSeq){
	var valueArr = new Array();
	var list = $("input[name='chk_list']");
	console.log("list.lenght" + list.length);
	var idx = 0;
	for(var i = 0; i < list.length; i++){
		if(list[i].checked){
		valueArr.push(list[i].value);
		//console.log(valueArr[i]);  //opinion13384623-22
		console.log(valueArr[idx]);  //opinion13384623-22
		idx = idx + 1;
		}
	}
	var ownerOpinionCheck = document.getElementById('owner'+getSeq+'-'+reptOwnrSeq+'-'+getItem).innerText;
	var executorOpinionCheck = document.getElementById('operator'+getSeq+'-'+reptOwnrSeq+'-'+getItem).innerText;
	
	if(ownerOpinionCheck == '작성'){
        var content1 = addOpinionItemArray.find(v => v.reptSeq === getSeq && v.type === getItem).ownerOpinion;
	}else if(ownerOpinionCheck == '미작성'){
		alert("작성된 내용이 없습니다.");
		return false;
	}else{
		alert("부적절한 대상입니다.");
		return false;			
	}
			
	if(executorOpinionCheck == '작성'){
        var content2 = addOpinionItemArray.find(v => v.reptSeq === getSeq && v.type === getItem).executorOpinion;
	}else if(executorOpinionCheck == '미작성'){
		alert("작성된 내용이 없습니다.");
		return false;
	}else{
		alert("부적절한 대상입니다.");
		return false;
	}
	
	
	console.log(content1);
	console.log(content2);
	// 복사 대상 컨텐츠 받는 부븐 끝
	
	// 복사 로직 시작
	for(var i = 0; i < valueArr.length; i++){
		console.log(valueArr[i]);
		let getCopySeq = $('#'+valueArr[i]).attr("data-seq");
	    let getCopyType = $('#'+valueArr[i]).attr("data-type");
	    let reptOwnrSeqCopy = $('#'+valueArr[i]).attr("reptOwnrSeq");
	    let ownrNm = $('#'+valueArr[i]).attr("ownrNm");
		console.log(getCopySeq);
		console.log(getCopyType);
		console.log(reptOwnrSeq);
		console.log(ownrNm);
		
		let ownerOpinion = content1
	    let executorOpinion = content2
		
		let sub = new Object();
	    sub['reptSeq'] = getCopySeq;
	    sub['type'] = getCopyType;
	    sub['ownerOpinion'] = content1;
	    sub['executorOpinion'] = content2;
	    sub['reptOwnrSeq'] = reptOwnrSeqCopy;
	    sub['ownrNm'] = ownrNm;

		if(addOpinionItemArray.length>0){
			for ( let i = 0; i < addOpinionItemArray.length; i++) {
			         
			let reptSeq = addOpinionItemArray[i].reptSeq;
			let type = addOpinionItemArray[i].type;
			//let reptOwnrSeq = addOpinionItemArray[i].reptOwnrSeqCopy;
			let reptOwnrSeq = addOpinionItemArray[i].reptOwnrSeq;
			let ownrNm = addOpinionItemArray[i].ownrNm;
			if(getCopySeq==reptSeq&&getCopyType==type){            
				addOpinionItemArray.splice(i, 1);
			}
			}
		}
		addOpinionItemArray.push(sub);
		   
		console.log(addOpinionItemArray);
		
		// 미작성 -> 작성
		document.getElementById('owner'+getCopySeq+'-'+reptOwnrSeqCopy+'-'+getCopyType).innerText = '작성';
		document.getElementById('operator'+getCopySeq+'-'+reptOwnrSeqCopy+'-'+getCopyType).innerText = '작성';
	}
}
function closeOwnerOpinion(){
   
   $("#opinionTitle").val("");
   $("#opinionContent").val("");
   
   $("#popupOwnerOpinion").removeClass("on");
   
}

function addOpinionItem(getType){
   
   let addList = new Array();

let newSeq = getType + '-0'; 

   addList.push(" <tbody id=\"popupOpinionItem"+popupOpinion+"\" class=\"popupOpinionItem\" >   ");                                             
    addList.push("    <tr>");   
    addList.push("      <th class=\"info_reg_th\">설정</th>");   
   addList.push("      <td>");   
   addList.push("        <div class=\"txt-r\">");
   // 추가
   addList.push("        <span style=\color:red;\>");
   addList.push("*한글파일다운로드 후 pdf로 변환 후 업로드 해 주시기 바랍니다 ");   
   addList.push("        </span>");
   //pdf
   addList.push("          <button type=\"button\" class=\"btn nohover\"  onclick=\"pdfUpload('"+getType+"');return false;\">");
   addList.push("             <i class=\"download white icon\"></i> PDF 업로드");
   addList.push("           </button>");
   //addList.push("          <button class=\"btn nohover\">"); 기존
   addList.push("          <button class=\"btn nohover\" onclick=\"hwpDownload('"+getType+"');return false;\">"); //추가
   addList.push("             <i class=\"download white icon\"></i> 한글파일 다운로드");
   addList.push("           </button>");
//파일 추가 임시 주석
   /*
   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItemOnlyFile('"+getType+"');return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 파일추가");
   addList.push("           </button>");
*/
/*
   addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
   addList.push("               <i class=\"close icon\"></i> 삭제");
   addList.push("           </button>");*/
   addList.push("         </div>   ");                                           
   addList.push("        </td>");
   addList.push("   </tr>");   

 addList.push("    <th class=\"info_reg_th\">PDF파일</th>");   
   addList.push("     <td>");
   addList.push("     	<div class=\"file_flex\">"); 
   // addList.push("                  <div style=\"display: none\">");   
   addList.push("     <input id=\"description1"+"\" class=\"input40 file_name\" value=\"PDF\" readonly\>");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFilePDF"+getType+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUploadPDF('1');return false;\">pdf 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>삭제");   
   addList.push("                      </button>");   
   /*addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"addNewFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>추가");   
   addList.push("                      </button>");   */
   addList.push("                </div>");   
   addList.push("               </div>");  
   addList.push("               </div>"); 
   addList.push("             </div>"); 
   addList.push("          </td>");   

                                                  
   addList.push("   <tr>");   
   addList.push("       <th class=\"info_reg_th\">제목</th>");   
   addList.push("       <td><input type=\"text\" class=\"input40 opinionTitle\" placeholder=\"제목을 입력해주십시오.\"></td>");   
   addList.push("   </tr>");   
   addList.push("    <tr>");   
   addList.push("       <th class=\"info_reg_th\">내용</th>");   
   addList.push("      <td>");   
   addList.push("        <textarea class=\"textarea opinionContent\" placeholder=\"내용을 입력해주십시오.\"></textarea></td>");   
   addList.push("    </tr>");   
 

  

   addList.push("      <tr>");   
   addList.push("    <th class=\"info_reg_th\">파일</th>");   
   addList.push("     <td>");
   addList.push("     	<div class=\"file_flex\">"); 
   addList.push("     <input id=\"description"+"\" class=\"input40 file_name\" placeholder=\"파일 설명을 입력해주십시오.\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+newSeq+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">jpeg, png 이미지 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>삭제");   
   addList.push("                      </button>");   
// 파일 추가
/* addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"addNewFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>추가");   
   addList.push("                      </button>");   */
   addList.push("                </div>");   
   addList.push("               </div>");   
   addList.push("             </div>");
   addList.push("          </td>");   
   addList.push("   </tr>   ");         


                                            
   addList.push("</tbody>");   

   popupOpinion++;
   $("#popupOpinionItemList").append(addList.join(''));
}

function addOpinionItemOnlyFile(getType){
	
	if(document.getElementById('popupOpinionItemFile'+getType+'-0').innerText == 'jpeg, png 이미지 파일만 첨부해주세요'){
		alert('파일 첨부 후 추가해주세요');
		return false;
	}
	
	if(document.getElementById('popupOpinionItemFile'+getType+'-1') != null){
		if(document.getElementById('popupOpinionItemFile'+getType+'-1').innerText == 'jpeg, png 이미지 파일만 첨부해주세요'){
			alert('파일 첨부 후 추가해주세요');
		return false;
		}
		
	}
	
		if(document.getElementById('popupOpinionItemFile'+getType+'-2') != null){
		if(document.getElementById('popupOpinionItemFile'+getType+'-2').innerText == 'jpeg, png 이미지 파일만 첨부해주세요'){
			alert('파일 첨부 후 추가해주세요');
		return false;
		}
		
	}
	
		if(document.getElementById('popupOpinionItemFile'+getType+'-3') != null){
		if(document.getElementById('popupOpinionItemFile'+getType+'-3').innerText == 'jpeg, png 이미지 파일만 첨부해주세요'){
			alert('파일 첨부 후 추가해주세요');
		return false;
		}
		
	}
	


	fileCount++;
	console.log("addOpinionItemOnlyFile seq :::>" + getType);
	let newSeq = getType + '-'+fileCount;
	document.getElementById('fileCount').value = fileCount;   

   let addList = new Array();

   addList.push(" <tbody id=\"popupOpinionItem"+popupOpinion+"\" class=\"popupOpinionItem\" >   ");     

//제목+내용 추가 수정 요청

  addList.push("   <tr>");   
   addList.push("       <th class=\"info_reg_th\">제목</th>");   
   addList.push("       <td><input type=\"text\" class=\"input40 opinionTitle\"></td>");   
   addList.push("   </tr>");   
   addList.push("    <tr>");   
   addList.push("       <th class=\"info_reg_th\">내용</th>");   
   addList.push("      <td>");   
   addList.push("        <textarea class=\"textarea opinionContent\"></textarea></td>");   
   addList.push("    </tr>");   

                                        
   addList.push("        <div class=\"txt-r\">");
   addList.push("    <th class=\"info_reg_th\">파일</th>");
   addList.push("     <td>");   
   addList.push("     <div class=\"file_flex\">");   
   addList.push("     <input id=\"description"+"\" class=\"input40 file_name\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+newSeq+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">jpeg, png 이미지 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>삭제");   
   addList.push("                      </button>");   
// 파일 추가
/* addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"addNewFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>추가");   
   addList.push("                      </button>");   */
   addList.push("                </div>");   
   addList.push("               </div>");   
   addList.push("             </div>");
   addList.push("          </td>");   
   addList.push("   </tr>   ");         
   addList.push("</tbody>");   

   popupOpinion++;
   $("#popupOpinionItemList").append(addList.join(''));
}


function resetOpinionItem(opinion){
	console.log('resetOpinionItem start');
		console.log(opinion);

   let addList = new Array();
   
   let opinionTitle = opinion.opinionTitle;
   let opinionContent = opinion.opinionContent;
   let opinionItemFile = opinion.opinionItemFile;
   //추가
   let opinionSeq = opinion.opinionSeq;
	let desc = opinion.desc;
	let fileName = opinion.fileName;
	let filePdfName = opinion.filePdfName;
	var notice ="";
	
	switch (opinionSeq) {
  case "1":
    notice = '지연가산금(재결신청 청구)';
    break;
  case "2":
    notice = '보상금 증액';
    break;
  case "3":
    notice = '협의 미이행(불이행,미준수)';
    break;
  case "4":
    notice = '사업폐지(취소,중단,변경,보류,제외)';
    break;
  case "5":
    notice = '재결 보류';
    break;
  case "6":
    notice = '무허가건물 부지면적 보상';
    break;
  case "7":
    notice = '잔여지/잔여건물 가치 하락';
    break;
  case "8":
    notice = '잔여지/잔여건물 매수 청구(확대보상)';
    break;
  case "9":
    notice = '사도평가 적정성';
    break;
  case "10":
    notice = '일단지 보상';
    break;
  case "11":
    notice = '미지급 용지';
    break;
  case "12":
    notice = '영업보상(이전비) 적정성';
    break;
  case "13":
    notice = '누락 물건 반영';
    break;
  case "14":
    notice = '폐업 보상';
    break;
  case "15":
    notice = '영농손실보상';
    break;
  case "16":
    notice = '휴직(실직)보상';
    break;
  case "17":
    notice = '이주대책 수립';
    break;
  case "18":
    notice = '이주정착금, 주거이전비, 이사비';
    break;
  case "19":
    notice = '구분지상권';
    break;
  case "20":
    notice = '10% 변동 내역';
    break;
  case "21":
    notice = '기타(임료손실,대토보상 등)';
    break;
  case "22":
    notice = '소유자 의견 없음';
    break;
  default:
notice='';
   break;
}
	
	document.getElementById('notice').innerHTML = notice;
	
	let newSeq = opinionSeq + '-0'; 
	console.log(newSeq);
   
   addList.push(" <tbody id=\"popupOpinionItem"+popupOpinion+"\" class=\"popupOpinionItem\" >   ");                                             
    addList.push("    <tr>");   
    addList.push("      <th class=\"info_reg_th\">설정</th>");   
   addList.push("      <td>");   
   addList.push("        <div class=\"txt-r\">");
//추가
   addList.push("        <span style=\color:red;\>");
   addList.push("*한글파일다운로드 후 pdf로 변환 후 업로드 해 주시기 바랍니다 ");   
   addList.push("        </span>");
//
   addList.push("          <button type=\"button\" class=\"btn nohover\"  onclick=\"pdfUpload('"+opinionSeq+"');return false;\">");
   addList.push("             <i class=\"download white icon\"></i> PDF 업로드");
   addList.push("           </button>");
//   addList.push("          <button class=\"btn nohover\">"); 기존
   addList.push("          <button class=\"btn nohover\" onclick=\"hwpDownload('"+opinionSeq+"');return false;\">"); //추가
   addList.push("             <i class=\"download white icon\"></i> 한글파일 다운로드");
   addList.push("           </button>");
//파일추가 임시 주석
/*
   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItemOnlyFile('"+opinionSeq+"');return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 파일추가");
   addList.push("           </button>");
*/
/*   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 추가");
   addList.push("           </button>");
   addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
   addList.push("               <i class=\"close icon\"></i> 삭제");
   addList.push("           </button>");*/
   addList.push("         </div>   ");                                           
   addList.push("        </td>");
   addList.push("   </tr>");          

	addList.push("      <tr>");   
	addList.push("    <th class=\"info_reg_th\">PDF파일</th>");   
	addList.push("     <td>");   
	addList.push("       <div class=\"file_flex\">");   
   // addList.push("                  <div style=\"display: none\">");   
   addList.push("     <input id=\"description1"+"\" class=\"input40 file_name\" value=\"PDF\" readonly\>");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFilePDF"+opinionSeq+"\" data-seq=\""+opinionItemFile+"\" style=\"cursor: pointer\" onclick=\"triggerFileUploadPDF('1');return false;\">pdf 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");  
   addList.push("               </div>"); 
   addList.push("     		</div>");
   addList.push("          </td>");   
   addList.push("   </tr>   ");  

                                           
   addList.push("   <tr>");   
   addList.push("       <th class=\"info_reg_th\">제목</th>");   
   addList.push("       <td><input type=\"text\" class=\"input40 opinionTitle\" value=\""+opinionTitle+"\"></td>");   
   addList.push("   </tr>");   
   addList.push("    <tr>");   
   addList.push("       <th class=\"info_reg_th\">내용</th>");   
   addList.push("      <td>");   
   addList.push("        <textarea class=\"textarea opinionContent\">"+opinionContent+"</textarea></td>");   
   addList.push("    </tr>");   

         

      

addList.push("      <tr>");   
   addList.push("    <th class=\"info_reg_th\">파일</th>");   
   addList.push("     <td>");   
   addList.push("     	<div class=\"file_flex\">");     
   addList.push("     <input id=\"description"+"\" class=\"input40 file_name\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+newSeq+"\" data-seq=\""+opinionItemFile+"\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">jpeg, png 이미지 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");
   addList.push("             </div>"); 

   addList.push("          </td>");   
   addList.push("   </tr>   ");      
                                      
   addList.push("</tbody>");   

   popupOpinion++;
   $("#popupOpinionItemList").append(addList.join(''));

	document.getElementById('description').value = desc;
	document.getElementById("popupOpinionItemFile"+newSeq).innerText = fileName;
	document.getElementById("popupOpinionItemFilePDF"+opinionSeq).innerText = filePdfName;
}

function removeOpinionItem(id){
   
   let opCount = $(".popupOpinionItem").length;
   
   if(opCount>=1){
      
   }else{
      let getId = "#popupOpinionItem"+id;
      $(getId).remove();
   }
   
}

//추가
function hwpDownload(seq){

let contextPath = $("#contextPath").val();

if(seq == "1"){
downloadItem =  "1.소유자별재결신청청구및지연일수.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="6"){
downloadItem =  "6.무허가건물부지면적보상.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="7"){
downloadItem =  "7.잔여지(잔여건물)가치하락.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="8"){
downloadItem =  "8.잔여지(잔여건물)가치하락.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="9"){
downloadItem =  "9.사도평가적정성.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="10"){
downloadItem =  "10.일단지보상.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="12"){
downloadItem =  "12.영업보상적정성.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else if(seq =="19"){
downloadItem =  "19.구분지상권.hwpx";
const url = contextPath+'/files/'+downloadItem;
location.href = url;
}else{
alert("첨부된 한글파일이 없습니다.");
}

}

function pdfDownload(fileSeq){
	let contextPath = $("#contextPath").val();
	let url = contextPath + '/file/download';
	window.location = url + "?seqNo=" + fileSeq;
}


function pdfUpload(getType){
	triggerFileUploadPDF(1);
}

function checkType(){
let decisionId = $('#decisionId').val();
let csrfToken = $("meta[name='_csrf']").attr("content");
let csrfHeader = $("meta[name='_csrf_header']").attr("content");    	        
let contextPath = $('#contextPath').val();
let url = contextPath+"/api/implementer/opinion/landview";
$.ajax({
            			url : url,
            			type : "POST",
            			contentType : "application/json; charset=UTF-8",
            			data : decisionId,
            			async: false, 
            			beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
            			success : function(data) {
							let info = data.list;
							getOpinionList(); //지장물, 필지 보여지게 변경 << 의견이 작성된 리스트만
			
			for(let i=0; i<info.length; i++){
					//console.log(info[i]);
					let getItem = info[i].type;
			
			if(getItem == 1){
		//	document.getElementsByClassName('item_result_wr')[0].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 2){
		//	document.getElementsByClassName('item_result_wr')[1].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 3){
			//document.getElementsByClassName('item_result_wr')[2].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 4){
			//document.getElementsByClassName('item_result_wr')[3].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 5){
			//document.getElementsByClassName('item_result_wr')[4].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 6){
		//	document.getElementsByClassName('item_result_wr')[5].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 7){
			//document.getElementsByClassName('item_result_wr')[6].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 8){
			//document.getElementsByClassName('item_result_wr')[7].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 9){
			//document.getElementsByClassName('item_result_wr')[8].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 10){
			//document.getElementsByClassName('item_result_wr')[9].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 11){
			//document.getElementsByClassName('item_result_wr')[10].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 12){
			//document.getElementsByClassName('item_result_wr')[11].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 13){	
			//document.getElementsByClassName('item_result_wr')[12].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 14){
			//document.getElementsByClassName('item_result_wr')[13].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 15){
			//document.getElementsByClassName('item_result_wr')[14].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 16){
			//document.getElementsByClassName('item_result_wr')[15].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 17){
			//document.getElementsByClassName('item_result_wr')[16].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 18){
			//document.getElementsByClassName('item_result_wr')[17].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 19){
			//document.getElementsByClassName('item_result_wr')[18].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 20){
			//document.getElementsByClassName('item_result_wr')[19].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 21){
			//document.getElementsByClassName('item_result_wr')[20].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 22){
			//document.getElementsByClassName('item_result_wr')[21].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 23){
			//document.getElementsByClassName('item_result_wr')[22].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else if(getItem  == 24){
			//document.getElementsByClassName('item_result_wr')[23].style.display = 'block';
			getLandownerCheck2(getItem);
			getGoodsowner2(getItem);
			}else{
			alert("잘못된 접근입니다.");
			return false;
			}
								
							}//for문 end
            			},
            			error : function(xhr, status, error) {
            				//에러!
            				//alert("code:"+xhr.status);
            			}
            		});

}

const opinionArr = new Array();
function getOpinionList(){

let decisionId = $('#decisionId').val();
let csrfToken = $("meta[name='_csrf']").attr("content");
let csrfHeader = $("meta[name='_csrf_header']").attr("content");    	        
let contextPath = $('#contextPath').val();
let url = contextPath+"/api/implementer/opinion/landview";
$.ajax({
            			url : url,
            			type : "POST",
            			contentType : "application/json; charset=UTF-8",
            			data : decisionId,
            			async: false, 
            			beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
            			success : function(data) {
							let info = data.list;
							
							for(let i=0; i<info.length; i++){
								opinionArr.push(info[i]);
								document.getElementsByClassName('item_result_wr')[info[i].type-1].style.display = 'block';
								//만약 필지만 있거나, 지장물만 있을 경우 리스트에 빈 상태로 나오는 문제가 있음
								
							}
            			},
            			error : function(xhr, status, error) {
            				//에러!
            				//alert("code:"+xhr.status);
            			}
            		});
}

function checkType2(){
let decisionId = $('#decisionId').val();
let csrfToken = $("meta[name='_csrf']").attr("content");
let csrfHeader = $("meta[name='_csrf_header']").attr("content");    	        
let contextPath = $('#contextPath').val();
let url = contextPath+"/api/implementer/opinion/landviewNew";
$.ajax({
            			url : url,
            			type : "POST",
            			contentType : "application/json; charset=UTF-8",
            			data : decisionId,
            			async: false, 
            			beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
            			success : function(data) {
	
						let list = data.list;
						console.log(list);
						
						if (list.length != 0) {
							
							let rank = 1;
							let check = 0;
						
							for(let i=0; i<list.length; i++){
								
							check = list[i].landObjCheck;
									if(check == 1){
									addLandList(rank,list[i]);
									opinionArr.push(list[i])
									rank++;
									}else if(check == 2){
									addGoodsList(rank,list[i]);
									opinionArr.push(list[i])
									rank++;
									}
								}
						}
			
            			},
            			error : function(xhr, status, error) {
            				//에러!
            				alert("code:"+xhr.status);
            			}
            		});

}




/*이 아래로 팝업을 슬라이드로 변경하려고 함*/
function openOpinionAccordion(){
	/*$(".acc_all2").slideDown();*/
    $(".item_result_wr__btn.item_result_wr__btn--write").click(function() {
  	  $(this).closest("tr").next(".acc_all2").show();
  	});
}
function opinionRemove44() {
    let elementsAcc = document.getElementsByClassName("acc_all2");
    for (let i = 0; i < elementsAcc.length; i++) {
        let element = elementsAcc[i];
        element.addEventListener("click", function() {
            element.style.display = "none";
        });
    }
}
