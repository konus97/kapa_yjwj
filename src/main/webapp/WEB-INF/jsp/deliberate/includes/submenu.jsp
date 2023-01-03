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
             <a href="${pageContext.request.contextPath}/deliberate/agenda.do">심의의원</a>
         </li>
         <li>
             <div class="csn_menu">
                 <button type="button" class="csnm_btn" id="subTitle">
                     		
                 </button>
                 <div class="csnm_wrap">
                     <ul>
                         <li class="on">
                             <a href="${pageContext.request.contextPath}/deliberate/agenda.do" id="subMenuAgenda">심의안건 정보</a>
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
		case "agenda":element= document.getElementById('subMenuAgenda');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 

</script>


   