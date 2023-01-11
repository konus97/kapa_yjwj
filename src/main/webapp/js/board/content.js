
function goToBoardList() {

	let boardSeq = $('#boardSeq').val();
	let contextPath = $('#contextPath').val();
	
	let url=contextPath+"/board/";

	if(boardSeq==1){
		url=url+"notice.do";
	}else if(boardSeq==2){
		url=url+"inquiry.do";
	}else if(boardSeq==3){
		url=url+"inquiryLaw.do";
	}

	let paging = document.paging;
	paging.action = url;
	paging.submit();
  
}


function goToBoardWrite(){

	let boardSeq = $('#boardSeq').val();
	let contextPath = $('#contextPath').val();
	
	let url=contextPath+"/board/";

	if(boardSeq==1){
		url=url+"notice/write.do";
	}else if(boardSeq==2){
		url=url+"inquiry/write.do";
	}else if(boardSeq==3){
		url=url+"inquiryLaw/write.do";
	}

	location.href = url;

}

function goToBoardEdit(){

	let boardSeq = $('#boardSeq').val();
	let contextPath = $('#contextPath').val();
	let viewSeq = $('#viewSeq').val();
	
	
	let url=contextPath+"/board/";

	if(boardSeq==1){
		url=url+"notice/edit.do";
	}else if(boardSeq==2){
		url=url+"inquiry/edit.do";
	}else if(boardSeq==3){
		url=url+"inquiryLaw/edit.do";
	}
	
	url+="?viewSeq="+viewSeq;

	location.href = url;

}


function deleteBoardContent() {

	let contextPath = $("#contextPath").val();
	console.log(contextPath);
	let url = contextPath+"/api/board/delete";
	
	let viewSeq = $("#viewSeq").val();

	if(confirm("게시물을 삭제하시곘습니까?")){
		$.ajax({
			url : url,
			type : "POST",
			dataType : "json",
			async: false,
			data : {
				"seqNo" : viewSeq,
			},
        	beforeSend : function(xhr){
        		xhr.setRequestHeader(csrfHeader, csrfToken);
        	},
			success : function(data) {
				goToBoardList();
			},
			error : function(xhr, status, error) {

				//에러!
				//alert("code:"+xhr.status);
			}
		});
	}


}


