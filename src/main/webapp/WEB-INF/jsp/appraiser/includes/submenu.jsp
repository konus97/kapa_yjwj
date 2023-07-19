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
             <a href="${pageContext.request.contextPath}/appraiser/application.do">감정평가사</a>
         </li>
         <li>
             <div class="csn_menu">
                 <button type="button" class="csnm_btn" id="subTitle">
                     
                 </button>
                 <div class="csnm_wrap">
                     <ul>
                         <li>
                             <a href="${pageContext.request.contextPath}/appraiser/application.do" id="subMenuApplication" >감정평가사 의견조회</a>
                         </li>
                         <li>
                             <a href="${pageContext.request.contextPath}/appraiser/agenda.do" id="subMenuAgenda" >심의서작성</a >
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
		case "agenda":element= document.getElementById('subMenuAgenda');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 

</script>


   