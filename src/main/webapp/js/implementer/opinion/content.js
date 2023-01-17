let popupOpinion = 2;
let addOpinionItemArray = new Array();
var valueArr = new Array();

function addOpinion(getSeq,getItem,getType,getTitle,reptOwnrSeq,ownrNm){
   

   let opCount = $(".opinion"+getSeq).length+1;
   
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
		addList.push("<input type=\"checkbox\" name=\"chk_list\" id=\"opinion"+getSeq+"-"+getItem+"\" value=\"opinion"+getSeq+"-"+getItem+"\">");
      addList.push("       <div class=\"cbl_1 resetSeq"+getItem+"\">"+opCount+"</div>"); 
       addList.push("      <div class=\"cbl_2\">"+getItem+"-"+getTitle+"</div>");
       addList.push("      <div class=\"cbl_3\"> ");
       addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup('"+getSeq+"','"+getItem+"','"+reptOwnrSeq+"','"+ownrNm+"');return false;\" >의견을 작성해주세요</a>");
       addList.push("      <div id=\"owner"+getSeq+"-"+getItem+"\" class=\"cbl_4\"> 미작성 </div> ");
       addList.push("      <div id=\"operator"+getSeq+"-"+getItem+"\" class=\"cbl_5\"> 미작성 </div> ");
	   addList.push("      </div> ");
addList.push("          <button class=\"btn nohover\" onclick=\"checkSelectedValue('"+getSeq+"','"+getItem+"');return false;\">");
   	   addList.push("          	복사</button>");
	   addList.push("          <button class=\"btn nohover\" onclick=\"opinionRemove('"+getId+"');return false;\">");
   	   addList.push("          	삭제</button>");
       addList.push("      <div id=\"fileCount"+getSeq+"-"+getItem+"\" class=\"cbl_4\"></div>");
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


function opinionRemove(getId){	
	$(getId).remove();
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

function openOpinionPopup(getSeq,getType,reptOwnrSeq,ownrNm){
   $(".resetPopupVal").val('');
   $("#popupOpinionItemList").empty();
   
	var notice ="";
	
	switch (getType) {
  case "1":
    notice = '지연가산금';
    break;
  case "2":
    notice = '보상금 증액';
    break;
  case "3":
    notice = '허가건축물 등 불법형질변경';
    break;
  case "4":
    notice = '일단지 보상';
    break;
  case "5":
    notice = '미지금 용지';
    break;
  case "6":
    notice = '사도평가';
    break;
  case "7":
    notice = '잔여지 매수청구';
    break;
  case "8":
    notice = '잔여지 가치하락';
    break;
  case "9":
    notice = '잔여건물 가치감소';
    break;
  case "10":
    notice = '잔여건물 매수청구';
    break;
  case "11":
    notice = '누락 물건 반영';
    break;
  case "12":
    notice = '휴업보상(이전비)평가';
    break;
  case "13":
    notice = '폐업보상';
    break;
  case "14":
    notice = '영농손실보상';
    break;
  case "15":
    notice = '휴직(실직)보상';
    break;
  case "16":
    notice = '사업폐지(취소, 변경, 중단)';
    break;
  case "17":
    notice = '이주대책 수립';
    break;
  case "18":
    notice = '이주정착금, 주거이전비, 이사비';
    break;
  case "19":
    notice = '임료손실';
    break;
  case "20":
    notice = '대토보상';
    break;
  case "21":
    notice = '구분지상권';
    break;
  case "22":
    notice = '10%이상 변동';
    break;
  case "23":
    notice = '기타(그 외)';
    break;
  case "24":
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
			if(addOpinionItemArray[i].opinionItemList == "undefined" || addOpinionItemArray[i].opinionItemList == ''){
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
	  let fileName = document.getElementById('popupOpinionItemFile'+getType).innerText;
	  console.log(fileName);

      let sub2 = new Object();
      sub2['opinionTitle'] = opinionTitle;
      sub2['opinionContent'] = opinionContent;
      sub2['opinionItemFile'] = popupOpinionItemFile;

      sub2['opinionSeq'] = opinionSeq; //추가
	  sub2['desc'] = desc;
	  sub2['fileName'] = fileName;
	  
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
	document.getElementById('owner'+getSeq+'-'+getType).innerText = '작성';
	document.getElementById('operator'+getSeq+'-'+getType).innerText = '작성';
   
   closeOwnerOpinion();
   
}

/*function searchSeq(element,getSeq,getItem){
	console.log(getItem);
	var seqNo = getItem.reptSeq;
	var itemNo = getItem.type;
	console.log(seqNo);
	console.log(itemNo);
	if(element.reptSeq === seqNo && element.type === itemNo){
		return true;
	}
	
}*/

function checkSelectedValue(getSeq,getItem){
	var list = $("input[name='chk_list']");
	console.log("list.lenght" + list.length);
	for(var i = 0; i < list.length; i++){
		if(list[i].checked){
		valueArr.push(list[i].value);
		console.log(valueArr[i]);  //opinion13384623-22
		}
	}
	var content1 = addOpinionItemArray.find(v => v.reptSeq === getSeq && v.type === getItem).ownerOpinion;
	var content2 = addOpinionItemArray.find(v => v.reptSeq === getSeq && v.type === getItem).executorOpinion;
	console.log(content1);
	console.log(content2);
	// 복사 대상 컨텐츠 받는 부븐 끝
	
	// 복사 로직 시작
	for(var i = 0; i < valueArr.length; i++){
	console.log(valueArr[i]);
	let getCopySeq = $('#'+valueArr[i]).attr("data-seq");
    let getCopyType = $('#'+valueArr[i]).attr("data-type");
    let reptOwnrSeq = $('#'+valueArr[i]).attr("reptOwnrSeq");
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
    sub['reptOwnrSeq'] = reptOwnrSeq;
    sub['ownrNm'] = ownrNm;

if(addOpinionItemArray.length>0){
      for ( let i = 0; i < addOpinionItemArray.length; i++) {
         
         let reptSeq = addOpinionItemArray[i].reptSeq;
         let type = addOpinionItemArray[i].type;
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
	document.getElementById('owner'+getCopySeq+'-'+getCopyType).innerText = '작성';
	document.getElementById('operator'+getCopySeq+'-'+getCopyType).innerText = '작성';
	}
}
function closeOwnerOpinion(){
   
   $("#opinionTitle").val("");
   $("#opinionContent").val("");
   
   $("#popupOwnerOpinion").removeClass("on");
   
}

function addOpinionItem(getType){
   
   let addList = new Array();

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
/*   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 추가");
   addList.push("           </button>");
   addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
   addList.push("               <i class=\"close icon\"></i> 삭제");
   addList.push("           </button>");*/
   addList.push("         </div>   ");                                           
   addList.push("        </td>");
   addList.push("   </tr>");                                                     
   addList.push("   <tr>");   
   addList.push("       <th class=\"info_reg_th\">제목</th>");   
   addList.push("       <td><input type=\"text\" class=\"input40 opinionTitle\"></td>");   
   addList.push("   </tr>");   
   addList.push("    <tr>");   
   addList.push("       <th class=\"info_reg_th\">내용</th>");   
   addList.push("      <td>");   
   addList.push("        <textarea class=\"textarea opinionContent\"></textarea></td>");   
   addList.push("    </tr>");   
   addList.push("      <tr>");   
   addList.push("    <th class=\"info_reg_th\">파일</th>");   
   addList.push("     <td class=\"file_flex\">");   
   addList.push("     <input id=\"description"+"\" class=\"input40 file_name\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+getType+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">jpge, png 이미지 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");   
   addList.push("          </td>");   
   addList.push("   </tr>   ");         

   addList.push("    <th class=\"info_reg_th\">PDF파일</th>");   
   addList.push("     <td class=\"file_flex\">");   
   // addList.push("                  <div style=\"display: none\">");   
   addList.push("     <input id=\"description1"+"\" class=\"input40 file_name\" value=\"PDF\" readonly\>");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFilePDF"+getType+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUploadPDF('1');return false;\">pdf 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");  
   addList.push("               </div>");  
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
	var notice ="";
	
	switch (opinionSeq) {
  case "1":
    notice = '지연가산금';
    break;
  case "2":
    notice = '보상금 증액';
    break;
  case "3":
    notice = '허가건축물 등 불법형질변경';
    break;
  case "4":
    notice = '일단지 보상';
    break;
  case "5":
    notice = '미지금 용지';
    break;
  case "6":
    notice = '사도평가';
    break;
  case "7":
    notice = '잔여지 매수청구';
    break;
  case "8":
    notice = '잔여지 가치하락';
    break;
  case "9":
    notice = '잔여건물 가치감소';
    break;
  case "10":
    notice = '잔여건물 매수청구';
    break;
  case "11":
    notice = '누락 물건 반영';
    break;
  case "12":
    notice = '휴업보상(이전비)평가';
    break;
  case "13":
    notice = '폐업보상';
    break;
  case "14":
    notice = '영농손실보상';
    break;
  case "15":
    notice = '휴직(실직)보상';
    break;
  case "16":
    notice = '사업폐지(취소, 변경, 중단)';
    break;
  case "17":
    notice = '이주대책 수립';
    break;
  case "18":
    notice = '이주정착금, 주거이전비, 이사비';
    break;
  case "19":
    notice = '임료손실';
    break;
  case "20":
    notice = '대토보상';
    break;
  case "21":
    notice = '구분지상권';
    break;
  case "22":
    notice = '10%이상 변동';
    break;
  case "23":
    notice = '기타(그 외)';
    break;
  case "24":
    notice = '소유자 의견 없음';
    break;
  default:
notice='';
   break;
}
	
	document.getElementById('notice').innerHTML = notice;
   
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
   addList.push("          <button class=\"btn nohover\">");
   addList.push("             <i class=\"download white icon\"></i> PDF 업로드");
   addList.push("           </button>");
//   addList.push("          <button class=\"btn nohover\">"); 기존
   addList.push("          <button class=\"btn nohover\" onclick=\"hwpDownload('"+opinionSeq+"');return false;\">"); //추가

   addList.push("             <i class=\"download white icon\"></i> 한글파일 다운로드");
   addList.push("           </button>");
/*   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 추가");
   addList.push("           </button>");
   addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
   addList.push("               <i class=\"close icon\"></i> 삭제");
   addList.push("           </button>");*/
   addList.push("         </div>   ");                                           
   addList.push("        </td>");
   addList.push("   </tr>");                                                     
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
   addList.push("     <td class=\"file_flex\">");   
   addList.push("     <input id=\"description"+"\" class=\"input40 file_name\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+opinionSeq+"\" data-seq=\""+opinionItemFile+"\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">jpge, png 이미지 파일만 첨부해주세요</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");   

   addList.push("          </td>");   
   addList.push("   </tr>   ");            

addList.push("    <th class=\"info_reg_th\">PDF파일</th>");   
   addList.push("     <td class=\"file_flex\">");   
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
   addList.push("          </td>");   
   addList.push("   </tr>   ");                                              
   addList.push("</tbody>");   

   popupOpinion++;
   $("#popupOpinionItemList").append(addList.join(''));

	document.getElementById('description').value = desc;
	document.getElementById("popupOpinionItemFile"+opinionSeq).innerText = fileName;
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


function pdfUpload(getType){
	triggerFileUploadPDF(1);
}