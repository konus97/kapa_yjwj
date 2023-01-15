
function goToImplementerList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/implementer/application.do";
}

function goToDeliberateView(selectDate){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/view.do?selectDate="+selectDate;
}

function goToDeliberatePdf(selectDate){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/pdfview.do?selectDate="+selectDate;
}

function ebookViewOpen(selectDate){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/ebookView.do?selectDate="+selectDate;
	
	
}

function goToDeliberateDetail(decisionId){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/detail.do?decisionId="+decisionId;
}

