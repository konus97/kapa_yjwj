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
            <a href="../land/compensation.do" >토지수용제도 안내</a>
        </li>
        <li>
            <div class="csn_menu">
                <button type="button" class="csnm_btn" id="subTitle">
                
                </button>
                <div class="csnm_wrap">
                    <ul>
                        <li>
                            <a href="../land/compensation.do" id="subMenuCompensation">토지수용제도 및 보상금안내</a>
                        </li>
                        <li>
                            <a href="../land/acceptanceDecision.do" id="subMenuAcceptanceDecision">수용재결 안내</a >
                        </li>
                        <li>
                            <a href="../land/procedure.do" id="subMenuProcedure" >수용재결 절차안내</a>
                        </li>
                        <li>
                            <a href="../land/committee.do" id="subMenuCommittee" >서울지방토지 수용위원회</a>
                        </li>
                        <li>
                            <a href="../land/relevantLaws.do"  id="subMenuRelevantLaws">관련 법령</a>
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
		case "compensation": element= document.getElementById('subMenuCompensation');
				break;
		case "acceptance":element= document.getElementById('subMenuAcceptanceDecision');
				break;
		case "procedure": element= document.getElementById('subMenuProcedure');
				break;
		case "committee": element= document.getElementById('subMenuCommittee');
				break;
		case "relevant": element= document.getElementById('subMenuRelevantLaws');
				break;
	}
	
   subTitle = element.innerText || element.textContent;
	  
	
   let x = document.getElementById("subTitle");
   x.innerText=subTitle; 
	   

	


</script>
