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
             <a href="${pageContext.request.contextPath}/decision/agenda.do">재결관</a>
         </li>
         <li>
             <div class="csn_menu">
                 <button type="button" class="csnm_btn" id="subTitle">
     
                 </button>
                 <div class="csnm_wrap">
                     <ul>
                         <li>
                             <a href="${pageContext.request.contextPath}/decision/announcement.do" id="subMenuAnnouncement">열람공고</a>
                         </li>
                         <li>
                             <a href="${pageContext.request.contextPath}/decision/schedule.do" id="subMenuSchedule">심의 일정 관리</a>
                         </li>
                         <li>
                             <a href="${pageContext.request.contextPath}/decision/agenda.do" id="subMenuAgenda">심의안건 내용검토</a>
                         </li>
                          <li>
                             <a href="${pageContext.request.contextPath}/decision/register.do" id="subMenuRegister">심의서 작성</a>
                         </li>
                         <li>
                             <a href="#" id="subMenuAgenda">템플릿</a>
                         </li>
                          <li>
                             <a href="#" id="subMenuRegister">재결서 열람</a>
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
		case "announcement": element= document.getElementById('subMenuAnnouncement');
				break;
		case "agenda":element= document.getElementById('subMenuAgenda');
				break;
		case "schedule":element= document.getElementById('subMenuSchedule');
				break;
		case "register":element= document.getElementById('subMenuRegister');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 

</script>


   