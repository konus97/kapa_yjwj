let popupOpinion = 2;
let addOpinionItemArray = new Array();

function addOpinion(getSeq,getItem,getType,getTitle){
   
   let opCount = $(".opinion"+getSeq).length+1;
   
   let getId = "#opinion"+getSeq+"-"+getItem;
   
   
   if($(getId).length>0){
      $(getId).remove();
   }else{
      console.log($(getId).length);
      
      let addList = new Array();
       
      addList.push("      <input type=\"hidden"+"\" id=\"seqNum"+"\" value=\""+getSeq+"\"/> ");
      addList.push("      <input type=\"hidden"+"\" id=\"itemNum"+"\" value=\""+getItem+"\"/> ");
      addList.push("<li class=\"opinionGet opinion"+getSeq+"\" id=\"opinion"+getSeq+"-"+getItem+"\" data-seq=\""+getSeq+"\" data-type=\""+getItem+"\" data-title=\"\" data-content=\"\">");   
      addList.push(" <div class=\"cbl_wrap\">");        
      addList.push("       <div class=\"cbl_1 resetSeq"+getItem+"\">"+opCount+"</div>"); 
       addList.push("      <div class=\"cbl_2\">"+getItem+"-"+getTitle+"</div>");
       addList.push("      <div class=\"cbl_3\"> ");
       addList.push("          <a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup('"+getSeq+"','"+getItem+"');return false;\" >의견을 작성해주세요</a>");
       addList.push("      </div> ");
       addList.push("      <div id=\"fileCount"+getSeq+"-"+getItem+"\" class=\"cbl_4\"></div>");
       addList.push("   </div>");
       addList.push("</li>");
      
       
       if(getType=="land"){
           $("#ownerLandItemList"+getSeq).append(addList.join(''));
       }else{
           $("#ownerGoodsItemList"+getSeq).append(addList.join(''));
       }
       

   }   
   
    resetSeq(getSeq);
  
}



function resetSeq(getSeq){
   
   let opCount = $(".opinion"+getSeq).length;
   
   let rank = 1;

   for( let i = 0; i < opCount; i++) {
      $(".resetSeq"+getSeq).eq(i).text(rank);
      rank++;
   }
   
}

function openOpinionPopup(getSeq,getType){
   /*var seqNum = document.getElementById("seqNum").value;
   var itemNum = document.getElementById("itemNum").value;
   if(document.getElementById("editor1") != '' || document.getElementById("editor1") != null){
   console.log("hi1");
   var editorId_1 = "editor1_"+seqNum+"-"+itemNum;
   document.querySelector('#editor1').setAttribute("id", editorId_1);
   
   }
   if(document.getElementById("editor2") != '' || document.getElementById("editor2") != null){
      console.log("hi2");
   var editorId_2 = "editor2_"+seqNum+"-"+itemNum;
   
   document.querySelector('#editor2').setAttribute("id", editorId_2);
   }*/
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
         
         if(getSeq==reptSeq&&getType==type){
            
            let ownerOpinion = addOpinionItemArray[i].ownerOpinion;
            let executorOpinion = addOpinionItemArray[i].executorOpinion;
            
            ownerOpinion = $("#ownerOpinion").val(ownerOpinion);
            executorOpinion = $("#executorOpinion").val(executorOpinion);
            
            let opinionItemList = addOpinionItemArray[i].opinionItemList;      
            console.log(opinionItemList.length);
            
            $("#popupOpinionItemList").empty();
            
            for ( let j = 0; j < opinionItemList.length; j++) {
               let opinion = opinionItemList[j];
               
               resetOpinionItem(opinion);
               checkOpinionItem=true;
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
   
   $("#popupOwnerOpinion").addClass("on");
   
}

function submitOwnerOpinion(){

   let getSeq = $("#popupOwnerOpinion").attr("data-seq");
   let getType = $("#popupOwnerOpinion").attr("data-type");
   
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
   
   let opCount = $(".popupOpinionItem").length;
      let opinionItemList = new Array(); // json의 전체를 가리키는 배열
      
   for ( let i = 0; i < opCount; i++) {
      
      let opinionTitle = $(".opinionTitle:eq("+i+")").val();
      let opinionContent = $(".opinionContent:eq("+i+")").val();
      let popupOpinionItemFile = $(".popupOpinionItemFile:eq("+i+")").attr("data-seq");
      let opinionSeq = getType; //추가
      let sub2 = new Object();
      sub2['opinionTitle'] = opinionTitle;
      sub2['opinionContent'] = opinionContent;
      sub2['opinionItemFile'] = popupOpinionItemFile;
      sub2['opinionSeq'] = opinionSeq; //추가
      opinionItemList[i]=sub2;
   }
      
   sub['opinionItemList'] = opinionItemList;
   
   if(addOpinionItemArray.length>0){
      for ( let i = 0; i < addOpinionItemArray.length; i++) {
         
         let reptSeq = addOpinionItemArray[i].reptSeq;
         let type = addOpinionItemArray[i].type;
         
         if(getSeq==reptSeq&&getType==type){            
            addOpinionItemArray.splice(i, 1);
         }
         
      }
   }
   
   addOpinionItemArray.push(sub);
   
   console.log(addOpinionItemArray);
   
   closeOwnerOpinion();
   
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
   //
   addList.push("          <button class=\"btn nohover\">");
   addList.push("             <i class=\"download white icon\"></i> PDF 업로드");
   addList.push("           </button>");
   //addList.push("          <button class=\"btn nohover\">"); 기존
   addList.push("          <button class=\"btn nohover\" onclick=\"hwpDownload('"+getType+"');return false;\">"); //추가
   addList.push("             <i class=\"download white icon\"></i> 한글파일 다운로드");
   addList.push("           </button>");
   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 추가");
   addList.push("           </button>");
   addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
   addList.push("               <i class=\"close icon\"></i> 삭제");
   addList.push("           </button>");
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
   addList.push("     <input class=\"input40 file_name\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+popupOpinion+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">파일 없음</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");   
   addList.push("          </td>");   
   addList.push("   </tr>   ");                                                     
   addList.push("</tbody>");   

   popupOpinion++;
   $("#popupOpinionItemList").append(addList.join(''));
}


function resetOpinionItem(opinion){
   let addList = new Array();
   
   let opinionTitle = opinion.opinionTitle;
   let opinionContent = opinion.opinionContent;
   let opinionItemFile = opinion.opinionItemFile;
   //추가
   let opinionSeq = opinion.opinionSeq;

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
   
   addList.push(" <tbody id=\"popupOpinionItem"+popupOpinion+"\" class=\"popupOpinionItem\" >   ");                                             
    addList.push("    <tr>");   
    addList.push("      <th class=\"info_reg_th\">설정</th>");   
   addList.push("      <td>");   
   addList.push("        <div class=\"txt-r\">");
//추가
addList.push("        <span>");
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
   addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
   addList.push("             <i class=\"pluse icon\"></i> 추가");
   addList.push("           </button>");
   addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
   addList.push("               <i class=\"close icon\"></i> 삭제");
   addList.push("           </button>");
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
   addList.push("     <input class=\"input40 file_name\">");   
   addList.push("         <div class=\"file_btn_wrap\">");   
   addList.push("                  <div style=\"display: flex\">");   
   addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+popupOpinion+"\" data-seq=\""+opinionItemFile+"\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">파일 없음</div>");   
   addList.push("                      <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");   
   addList.push("                        <i class=\"close icon white\"></i>파일삭제");   
   addList.push("                      </button>");   
   addList.push("                </div>");   
   addList.push("               </div>");   
   addList.push("          </td>");   
   addList.push("   </tr>   ");                                                     
   addList.push("</tbody>");   

   popupOpinion++;
   $("#popupOpinionItemList").append(addList.join(''));
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