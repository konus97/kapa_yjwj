
function goToImplementerList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/implementer/application.do";
}

function goToDeliberateView(selectDate){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/view.do?selectDate="+selectDate;
}

function goToDeliberatePdf(seqNo){
	let contextPath = $('#contextPath').val();
	/*location.href=contextPath+"/deliberate/agenda/pdfview.do?decisionId="+seqNo;*/
	window.open(contextPath+"/deliberate/agenda/pdfview.do?decisionId="+seqNo,"_blank","toolbar=no,width=880,height=900")
}

function ebookViewOpen(selectDate){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/ebookView.do?selectDate="+selectDate;
}

function goToDeliberateDetail(decisionId){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/deliberate/agenda/detail.do?decisionId="+decisionId;
}
