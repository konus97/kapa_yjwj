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
				<a href="${pageContext.request.contextPath}/board/notice.do">게시판</a>
			</li>
			<li>
				<div class="csn_menu">
					<button type="button" class="csnm_btn" id="subTitle">
						
					</button>
					<div class="csnm_wrap">
						<ul>
							<li><a href="${pageContext.request.contextPath}/board/notice.do" id="subMenuNotice">공지사항</a></li>
							<li><a href="${pageContext.request.contextPath}/board/inquiry.do" id="subMenuInquiry">묻고답하기</a></li>
							<li><a href="${pageContext.request.contextPath}/board/inquiryLaw.do" id="subMenuInquiryLaw">법률질의</a></li>
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
		case "notice": element= document.getElementById('subMenuNotice');
				break;
		case "inquiry":element= document.getElementById('subMenuInquiry');
				break;
		case "inquiryLaw": element= document.getElementById('subMenuInquiryLaw');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 
	   

	


</script>
