<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>


<%

String currentPage = request.getParameter("currentPage");

%>

<div class="cs_navi">
       <ul class="center">
           <li>
               <a href="${pageContext.request.contextPath}/"><span class="blind">HOME</span></a>
           </li>
           <li>
               <a href="../implementer/application.do">사업시행자</a>
           </li>
           <li>
               <div class="csn_menu">
                   <button type="button" id="subTitle" class="csnm_btn">
                       		
                   </button>
                   <div class="csnm_wrap">
                       <ul>
                           <li>
                               <a href="../implementer/application.do" id="subMenuApplication">LTIS입력정보확인</a >
                           </li>
                           <li>
                               <a href="../implementer/opinion.do" id="subMenuOpinion">재결의견작성</a>
                           </li>
                       </ul>
                   </div>
               </div>
           </li>
       </ul>
</div>


<script type="text/javascript">


	let menu = "<%=currentPage%>";
	let element;
	let subTitle = "";
	
	switch(menu){
		case "application": element= document.getElementById('subMenuApplication');
				break;
		case "opinion":element= document.getElementById('subMenuOpinion');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 

</script>
