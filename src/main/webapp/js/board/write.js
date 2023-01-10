
$(function () {
	CKEDITOR.replace('boardContent');
});

function saveBoardContent(){
	let csrfToken = $("meta[name='_csrf']").attr("content");
    let csrfHeader = $("meta[name='_csrf_header']").attr("content");

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/board/write";
	
	let msg="게시물 작성을 등록하시겠습니까?";

	let boardSeq = $('#boardSeq').val();

	//BASE START
	let option = $('#bw_option')[0].checked;
	let title = $('#boardTitle').val();
	/*let content = editor.getData();*/
	let content = CKEDITOR.instances.boardContent.getData(); 
	let link = $('#link').val();

	// 제목
	if (title == null || title == "") {
		alert("게시물 제목을 입력해주세요");
		$('#boardTitle').focus();
		return false;
	}

	if (contents == null || contents == "") {
		alert("게시물 내용을 입력해주세요");
		return false;
	}

	let searchTitle = removeHtml(title);
	let searchContent = removeHtml(content);

	if(confirm(msg)) {

		$.ajax({
			url : url,
			type : "POST",
			dataType : "json",
			data : {
				"boardSeq" : boardSeq,
				"secretCheck" : option,
				"title" : title,
				"content" : content,
				"searchTitle" : searchTitle,
				"searchContent" : searchContent,
				"link" : link,
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