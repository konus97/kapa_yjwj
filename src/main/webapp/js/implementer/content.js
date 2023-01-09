
function goToImplementerList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/implementer/application.do";
}

function goToImplementerOpinionList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/implementer/opinion.do";
}


function goToDecisionRegisterList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register.do";
}