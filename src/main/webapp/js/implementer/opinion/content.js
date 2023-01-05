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
		addList.push("	    <div class=\"cbl_1 resetSeq"+getItem+"\">"+opCount+"</div>"); 
	    addList.push("      <div class=\"cbl_2\">"+getItem+"-"+getTitle+"</div>");
	    addList.push("      <div class=\"cbl_3\"> ");
	    addList.push("       	<a href=\"#\" id=\"opinionTitle"+getSeq+"-"+getItem+"\" onclick=\"openOpinionPopup('"+getSeq+"','"+getItem+"');return false;\" >의견을 작성해주세요</a>");
	    addList.push("      </div> ");
	    addList.push("      <div id=\"fileCount"+getSeq+"-"+getItem+"\" class=\"cbl_4\"></div>");
	    addList.push("      <div id=\"fileCount"+getSeq+"-"+getItem+"\" class=\"cbl_5\"></div>");
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
			addOpinionItem();
		}
		
	}else{				
		addOpinionItem();
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
		
		let sub2 = new Object();
		sub2['opinionTitle'] = opinionTitle;
		sub2['opinionContent'] = opinionContent;
		sub2['opinionItemFile'] = popupOpinionItemFile;
		
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

function addOpinionItem(){
	
	let addList = new Array();
	
	addList.push(" <tbody id=\"popupOpinionItem"+popupOpinion+"\" class=\"popupOpinionItem\" >	");					                              
    addList.push("	 <tr>");	
    addList.push("      <th class=\"info_reg_th\">설정</th>");	
	addList.push("      <td>");	
	addList.push("        <div class=\"txt-r\">");
	addList.push("          <button class=\"btn nohover\">");
	addList.push("          	<i class=\"download white icon\"></i> PDF 업로드");
	addList.push("           </button>");
	addList.push("          <button class=\"btn nohover\">");
	addList.push("          	<i class=\"download white icon\"></i> 한글파일 다운로드");
	addList.push("           </button>");
	addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
	addList.push("          	<i class=\"pluse icon\"></i> 추가");
	addList.push("           </button>");
	addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
	addList.push("               <i class=\"close icon\"></i> 삭제");
	addList.push("           </button>");
	addList.push("         </div>	");					                            
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
	addList.push("		<tr>");	
	addList.push("    <th class=\"info_reg_th\">파일</th>");	
	addList.push("     <td class=\"file_flex\">");	
	addList.push("     <input class=\"input40 file_name\">");	
	addList.push("			<div class=\"file_btn_wrap\">");	
	addList.push("                  <div style=\"display: flex\">");	
	addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+popupOpinion+"\" data-seq=\"0\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">파일 없음</div>");	
	addList.push("                   	<button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");	
	addList.push("                        <i class=\"close icon white\"></i>파일삭제");	
	addList.push("                      </button>");	
	addList.push("                </div>");	
	addList.push("            	</div>");	
	addList.push("       	</td>");	
	addList.push("	</tr>	");							                                
	addList.push("</tbody>");	

	popupOpinion++;
	$("#popupOpinionItemList").append(addList.join(''));
}


function resetOpinionItem(opinion){
	
	let addList = new Array();
	
	let opinionTitle = opinion.opinionTitle;
	let opinionContent = opinion.opinionContent;
	let opinionItemFile = opinion.opinionItemFile;
	
	addList.push(" <tbody id=\"popupOpinionItem"+popupOpinion+"\" class=\"popupOpinionItem\" >	");					                              
    addList.push("	 <tr>");	
    addList.push("      <th class=\"info_reg_th\">설정</th>");	
	addList.push("      <td>");	
	addList.push("        <div class=\"txt-r\">");
	addList.push("          <button class=\"btn nohover\">");
	addList.push("          	<i class=\"download white icon\"></i> PDF 업로드");
	addList.push("           </button>");
	addList.push("          <button class=\"btn nohover\">");
	addList.push("          	<i class=\"download white icon\"></i> 한글파일 다운로드");
	addList.push("           </button>");
	addList.push("          <button class=\"btn nohover t1\"  onclick=\"addOpinionItem();return false;\" >");
	addList.push("          	<i class=\"pluse icon\"></i> 추가");
	addList.push("           </button>");
	addList.push("           <button class=\"btn nohover t1\" onclick=\"removeOpinionItem('"+popupOpinion+"');return false;\" >");
	addList.push("               <i class=\"close icon\"></i> 삭제");
	addList.push("           </button>");
	addList.push("         </div>	");					                            
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
	addList.push("		<tr>");	
	addList.push("    <th class=\"info_reg_th\">파일</th>");	
	addList.push("     <td class=\"file_flex\">");	
	addList.push("     <input class=\"input40 file_name\">");	
	addList.push("			<div class=\"file_btn_wrap\">");	
	addList.push("                  <div style=\"display: flex\">");	
	addList.push("                      <div class=\"input40 file_btn popupOpinionItemFile\" id=\"popupOpinionItemFile"+popupOpinion+"\" data-seq=\""+opinionItemFile+"\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('1');return false;\">파일 없음</div>");	
	addList.push("                   	<button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('1');return false;\">");	
	addList.push("                        <i class=\"close icon white\"></i>파일삭제");	
	addList.push("                      </button>");	
	addList.push("                </div>");	
	addList.push("            	</div>");	
	addList.push("       	</td>");	
	addList.push("	</tr>	");							                                
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

