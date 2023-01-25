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
             <a href="${pageContext.request.contextPath}/admin/user.do">통합관리</a>
         </li>
         <li>
             <div class="csn_menu">
                 <button type="button" class="csnm_btn" id="subTitle">
                     
                 </button>
                 <div class="csnm_wrap">
                     <ul>
                         <li>
                             <a href="${pageContext.request.contextPath}/admin/user.do" id="subMenuManage" >회원관리</a>
                         </li>
                         <li>
                             <a href="${pageContext.request.contextPath}/admin/law.do" id="subMenuLaw" >관련 법령</a >
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
		case "manage": element= document.getElementById('subMenuManage');
				break;
		case "law":element= document.getElementById('subMenuLaw');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 

</script>


   