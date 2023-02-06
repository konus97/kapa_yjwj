<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
	%>

     <div class="popup land" id="popupAppraiser">
         <div class="p_box">
             <div class="p_head">
                 <h3 class="p_title">
                  	   평가사 상세보기
                 </h3>
                 <a href="#" class="p_close" onclick="closePopup('appraiser');return false;"><span class="blind">닫기</span></a>
             </div>
             <div class="p_body">
                 <div class="wrap">
                     <div class="c_table t1">
                         <table>
                             <caption>
                                 	평가사
                             </caption>
                             <thead>
                                 <tr>
                                     <th>연번</th>
                                     <th>컬럼명</th>
                                     <th>컬럼명</th>
                                     <th>컬럼명</th>
                                     <th>컬럼명</th>
                                 </tr>
                             </thead>
                             <tbody id="appraiserList">
                                 
                                 
                             </tbody>
                         </table>
                     </div>
                 </div>
             </div>
         </div>
     </div>

