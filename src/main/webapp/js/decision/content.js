

function goToAnnouncementList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement.do";
}

function goToAnnouncementView(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement/view.do?decisionId="+seqNo;
}

function goToAnnouncementWrite(seqNo){
	
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/announcement/write.do?decisionId="+seqNo;

}


function goToAgendaView(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/agenda/view.do?decisionId="+seqNo;
}


function goToAgendaList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/agenda.do";
}

function goToDecisionRegisterList(){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register.do";
}

function goToDecisionRegister(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register/step1.do?decisionId="+seqNo;
}

function goToDecisionRegisterStep2(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register/step2.do?decisionId="+seqNo;
}

function goToDecisionRegisterStep3(seqNo){
	let contextPath = $('#contextPath').val();
	location.href=contextPath+"/decision/register/step3.do?decisionId="+seqNo;
}