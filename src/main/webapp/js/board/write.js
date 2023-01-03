let editor;

ClassicEditor
	.create( document.querySelector( '#boardContent' ), {
		extraPlugins: [ MyCustomUploadAdapterPlugin ],
		toolbar: {
			items: [
				'heading',
				'|',
				'bold',
				'italic',
				'fontSize',
				'fontColor',
				'highlight',
				'link',
				'bulletedList',
				'numberedList',
				'|',
				'outdent',
				'indent',
				'|',
				'imageUpload',
				'insertTable',
				'mediaEmbed',
				'undo',
				'redo'
			]
		},
		language: 'ko',
		image: {
			toolbar: [
				'imageTextAlternative',
				'imageStyle:full',
				'imageStyle:side'
			]
		},
		table: {
			contentToolbar: [
				'tableColumn',
				'tableRow',
				'mergeTableCells'
			]
		},
		licenseKey: '',
	} )
	.then( newEditor => {
		editor = newEditor;
	} )
	.catch( error => {
		console.error( 'Oops, something went wrong!' );
		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
		console.warn( 'Build id: 95xpmoz2za9p-z7ulnbnv6nkk' );
		console.error( error );
	} );


function saveBoardContent(){

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/board/write";
	
	let msg="게시물 작성을 등록하시겠습니까?";

	let boardSeq = $('#boardSeq').val();

	//BASE START
	let option = $('#bw_option')[0].checked;
	let title = $('#boardTitle').val();
	let content = editor.getData();
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