
function goToImplementerList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/implementer/application.do";
}

function goToDeliberateView(selectDate){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/view.do?selectDate="+selectDate;
}


function goToDeliberateDetail(decisionId){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/detail.do?decisionId="+decisionId;
}

