<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

<%

String currentStep = request.getParameter("currentStep");

%>

<div class="step div6">
     <ol>
         <li class="start">
             <div id="currentStep1" class="s_wrap">
                 <strong>STEP
                     <mark>01</mark></strong>
                 <span>LTIS입력<br/>정보확인</span>
             </div>
         </li>
         <li>
             <div id="currentStep2" class="s_wrap">
                 <strong>STEP
                     <mark>02</mark></strong>
                 <span>재결접수</span>
             </div>
         </li>
         <li>
             <div id="currentStep3" class="s_wrap">
                 <strong >STEP
                     <mark>03</mark></strong>
                 <span>열람공고</span>
             </div>
         </li>
         <li>
             <div id="currentStep4" class="s_wrap">
                 <strong>STEP
                     <mark>04</mark></strong>
                 <span>심의안건의뢰</span>
             </div>
         </li>
         <li>
             <div id="currentStep5" class="s_wrap">
                 <strong>STEP
                     <mark>05</mark></strong>
                 <span>재결 진행중</span>
             </div>
         </li>
         <li>
             <div id="currentStep6" class="s_wrap">
                 <strong>STEP
                     <mark>06</mark></strong>
                 <span>심사완료</span>
             </div>
         </li>
     </ol>
 </div>
 
 <script type="text/javascript">

	let step = "<%=currentStep%>";

	switch(step){
		case "1":element= document.getElementById('currentStep1');
			break;
		case "2":element= document.getElementById('currentStep2');
			break;
		case "3":element= document.getElementById('currentStep3');
			break;
		case "4":element= document.getElementById('currentStep4');
			break;
		case "5":element= document.getElementById('currentStep5');
			break;
		case "6":element= document.getElementById('currentStep6');
			break;
	}

	element.classList.add('on');

</script>