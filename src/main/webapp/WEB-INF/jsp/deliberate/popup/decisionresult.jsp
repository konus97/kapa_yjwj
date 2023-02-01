<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
	%>

     <div class="popup" id="popupDecisionResult">
         <div class="p_box">
             <div class="p_head">
                 <h3 class="p_title">
                  	   심사결과 상세보기
                 </h3>
                 <a href="#" class="p_close" onclick="closeResultPopup(); return false;" ><span class="blind">닫기</span ></a>
             </div>
             <div class="p_body">
                 <div class="wrap">
                     <div class="c_table t1">
                         <table>
                             <caption>
                           	      심사결과
                             </caption>
                             <thead>
                                 <tr>
                                     <th>연번</th>
                                     <th>심의위원</th>
                                     <th>승인여부</th>
                                     <th>사유</th>
                                 </tr>
                             </thead>
                             <tbody id="decisionResultList">
                             	 <%-- 심사 결과 시작 --%>
                                 <tr>
                                     <td>1</td>
                                     <td>문승민</td>
                                     <td>승인</td>
                                     <td>제1항에 따라 매수 또는 수용의 청구가 있는 잔여지 및 잔여지에 있는 물건에 관하여 권리를 가진 자는 사업시행자나 관할 토지수용위원회에 그 권리의 존속을 청구할 수 있으니 타당함</td>
                                 </tr>
                                 <tr>
                                     <td>2</td>
                                     <td>허창원</td>
                                     <td>승인</td>
                                     <td>공익사업의 시행으로 교통이 두절되어 사용이나 경작이 불가능한 경우로 보상함이 타당함.</td>
                                 </tr>
                                 <tr>
                                     <td>3</td>
                                     <td>이희영</td>
                                     <td>반려</td>
                                     <td>사업시행자의 협의 평가와는 별도로 우리위원회에서 새로이 감정평가법인 2곳(삼성, 다우에셋감정평가법인)에 재결감정평가 의뢰한 바, 감정평가업자 2인이 평가한 금액을 산술평균하여 손실보상금으로 보상함이 타당함.</td>
                                 </tr>
                                 <%-- 심사 결과 끝 --%>
                             </tbody>
                         </table>
                     </div>
                 </div>
             </div>
         </div>
     </div>

