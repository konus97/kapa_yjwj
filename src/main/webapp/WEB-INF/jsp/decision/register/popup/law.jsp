<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
	%>

<div id="contents">
<div class="popup law" id="popupLawCheck">
         <div class="p_box">
             <div class="p_head">
                 <h3 class="p_title">
                     	관련법령 상세보기
                 </h3>
                 <a href="#" class="p_close" onclick="closePopupLaw();return false;"><span class="blind" >닫기</span></a>
             </div>
             <div class="p_body1">
                 <div class="wrap">
                   <div class="c_table t1">
                       <table>
                           <caption>
                              	 관련 법령
                           </caption>
                           <thead>
                               <tr>
                                   <th>선택</th>
                                   <th>연번</th>
                                   <th>법령</th>
                                   <th>조</th>
                                   <th>항</th>
                                   <th>내용</th>
                               </tr>
                           </thead>
                           <tbody id="lawList">
                               
                           </tbody>
                       </table>
                   </div>
					<div class="paging">
						<div class="p_wrap" id="pageList">
							
						</div>
					</div>
               </div>
               <div class="p_foot">
                    <button class="btn h50 mr10" onclick="checkItemLaw();return false;" >선택</button>
                    <a href="#" class="btn t1 h50" onclick="closePopupLaw();return false;">취소</a>
               </div>
           </div>
       </div>
   </div>
   
</div>