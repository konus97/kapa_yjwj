let rowItem = 10;

//************************************************
//Decision Agenda list
// ************************************************

function getDecisionOpinionList() {

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/decision/agenda/opinion/list";

	let decisionId = $("#decisionId").val();

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"decisionId" : decisionId,
		},
		success : function(data) {

			let list = data.list;
			
			if (list.length != 0) {

				for( let i = 0; i < list.length; i++) {
					getDecisionOpinionInfo(list[i]);
				}

			}

		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}


function getDecisionOpinionItemList(viewSeq) {

	let contextPath = $("#contextPath").val();
	let url = contextPath+"/api/decision/agenda/opinion/item";

	$.ajax({
		url : url,
		type : "GET",
		dataType : "json",
		async: false,
		data : {
			"viewSeq" : viewSeq,
		},
		success : function(data) {

			let list = data.list;

			$("#popupOpinionItemList").empty();
			
			if (list.length != 0) {

				for( let i = 0; i < list.length; i++) {
					getDecisionOpinionItem(list[i]);		
				}

			}

		},
		error : function(xhr, status, error) {

			//에러!
			//alert("code:"+xhr.status);
		}
	});


}