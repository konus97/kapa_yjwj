let targetFileCount = 2;

function addNewFileTarget(position) {

	let trCount = $(".fileInfo"+position).length;

	let addList = new Array();
	
	addList.push("<div id=\"fileInfo"+position+"-"+targetFileCount+"\" class=\"ff_wrap fileInfo"+position+"\">  ");        
	addList.push("	<div class=\"file_flex\">");                                        	
    addList.push("      <input class=\"input40 file_name fileLabel"+position+"\"  maxlength=\"50\"> ");
    addList.push("      <div class=\"file_btn_wrap\"> ");
    addList.push("           <div style=\"display: flex\"> ");
    addList.push("               <div id=\"fileText"+position+"-"+targetFileCount+"\" class=\"input40 file_btn\" style=\"cursor: pointer\" onclick=\"triggerFileUpload('"+position+"','"+targetFileCount+"');return false;\">파일 없음</div> ");
    addList.push("               <button class=\"btn nohover t4 small\" onclick=\"removeFileTarget('"+position+"','"+targetFileCount+"');return false;\"> ");
    addList.push("                   <i class=\"close icon white\"></i> ");
    addList.push("                   	삭제");
    addList.push("               </button>");
    addList.push("               <button class=\"btn nohover t4 small\" onclick=\"addNewFileTarget('"+position+"');return false;\">");
    addList.push("               	<i class=\"pluse icon white\"></i>추가");
    addList.push("               </button>");
    addList.push("          </div>");
    addList.push("      </div>");
    addList.push("   </div>");
    addList.push("</div>");

    $("#fileList"+position).append(addList.join(''));

	targetFileCount++;
	
}

function removeFileTarget(position,viewSeq){
	
	let trCount = $(".fileInfo"+position).length;
	let getId = "#fileInfo"+position+"-"+viewSeq;

	if(trCount>1){
		$(getId).remove();
	} 
	
} 



function goToCityAnnouncementList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/cities/announcement.do";
}


function goToAnnouncementWrite(seqNo){
	
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement/write.do?decisionId="+seqNo;

}
