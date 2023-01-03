<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>


<div class="cs_navi">
     <ul class="center">
         <li>
             <a href="${pageContext.request.contextPath}/"><span class="blind">HOME</span></a>
         </li>
         <li>
             <a href="${pageContext.request.contextPath}/cities/announcement.do">시·군·구</a>
         </li>
         <li>
             <div class="csn_menu">
                 <button type="button" class="csnm_btn">
                     	열람공고
                 </button>
                 <div class="csnm_wrap">
                     <ul>
                         <li class="on">
                             <a href="${pageContext.request.contextPath}/cities/announcement.do">열람공고</a>
                         </li>
                     </ul>
                 </div>
             </div>
         </li>
     </ul>
 </div>