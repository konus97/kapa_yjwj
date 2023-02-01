<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
	%>

     <div class="popup land" id="popupLand">
         <div class="p_box">
             <div class="p_head">
                 <h3 class="p_title">
                  	   필지 상세보기
                 </h3>
                 <a href="#" class="p_close" onclick="closePopup('land');return false;"><span class="blind">닫기</span></a>
             </div>
             <div class="p_body">
                 <div class="wrap">
           <!--           <div class="cs_title">
                         <div class="cs_option">
                             <div
                                 class="cso_btnwrap"
                             >
                                 <a
                                     href="#"
                                     download=""
                                     class="btn t2 small ico download"
                                     >다운로드</a
                                 >
                             </div>
                         </div>
                     </div> -->
				 	 <button type="button" onclick="downloadExcelLands(); return false;">필지 엑셀 다운로드</button>
                     <div class="c_table t1">
                         <table>
                             <caption>
                                 	필지
                             </caption>
                             <thead>
                                 <tr>
                                     <th>연번</th>
                                     <th>소재지</th>
                                     <th>지번</th>
                                     <th>본번</th>
                                     <th>부번</th>
                                     <th>공</th>
                                     <th>실</th>
                                     <th>면적</th>
                                     <th>단가</th>
                                     <th>소유자</th>
                                     <th>지분</th>
                                 </tr>
                             </thead>
                             <tbody id="landList">
                                 
                                 
                             </tbody>
                         </table>
                     </div>
                 </div>
             </div>
         </div>
     </div>

