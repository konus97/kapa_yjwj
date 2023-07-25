<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"
	import="java.io.*"
%>

<div class="popup goodsowner" id="popupGoodsownerCheck">
         <div class="p_box">
             <div class="p_head">
                 <h3 class="p_title">
                     	지장물 소유자 상세보기
                 </h3>
                 <a href="#" class="p_close" onclick="closePopup('goodsownercheck');return false;"><span class="blind" >닫기</span></a>
             </div>
             
             <div class="p_body">
                 <div class="wrap">
                 
                 <!-- 검색버튼 추가 -->
                 <div class="search_Area">
                 	<div class="pop_search">                                       
		                <span class="ff_group w290">
		                    <input type="text" id="il_input2" name="il_input2" class="input40 t1" placeholder="소유자 혹은 주소 검색" required="">
		                </span>
		                <span class="ff_group">
		                    <button type="button" id="il_submit2" name="il_submit2" class="btn small ico search" onclick="getApplicationListSearch();return false;">
		                        	검색
		                    </button>
		                </span>
		            </div>
		            
		            <div class="dwldArea">
			            <span>*엑셀파일 다운로드 후 업로드 해주시기 바랍니다</span>
			            <div class="dwldBtnArea">		            
			            	<div type="button" class="cso_btnwrap">
	                               <a href="#" download="" class="btn download">엑셀폼 파일 다운로드</a>
	                        </div>
	                        <div type="button" class="cso_btnwrap">
	                               <a href="#" download="" class="btn download">엑셀파일 업로드</a>
	                        </div>
			            </div>
		            </div>
	            </div>
	            
		        	<!--   
		             <div class="cs_title">
                       <div class="cs_option">
                           <div class="cso_btnwrap">
                               <a href="#" download="" class="btn t2 small ico download">다운로드</a>
                           </div>
                       </div>
                   </div> 
                   -->
                   <div class="c_table">
                       <table>
                           <caption>
                              	 필지
                           </caption>
                           <thead>
                               <tr>
                                   <th><input type="checkbox" id="all" name="all" ></th>
                                   <th>소유자</th>
                                   <th>필지</th>
                                   <th>지장물</th>
                                   <th>세부정보</th>
                              </tr>
                           </thead>
	                           <tr>
	                           <td><input type="checkbox" name="checkBox"></td>
	                           <td></td>
	                           <td></td>
	                           <td></td>
	                           <td><a href="#" class="btn_check"></a></td>
	                           </tr>
                       </table>
                   </div>
                   
                   <h3 class="p_t1_title">- 필지 지장물 목록</h3>
                   
                   <div class="c_table t1" id="goodsownerCheckList2">
                       <table>
                           <caption>
                              	 지장물
                           </caption>
                           <thead>
                               <tr>
                                   <th>선택</th>
                                   <th>연번</th>
                                   <th>소유자</th>
                                   <th>지분</th>
                                   <th>구분<a href="#" class="btn_check"></a></th>
                                   <th>소재지</th>
                                   <th>지번</th>
                                   <th>본번</th>
								   <th>부번</th>
                                   <th>공</th>
                                   <th>실</th>
                                   <th>면적</th>
                                   <th>단가</th>
                                   <th>총전가액</th>
                               </tr>
                           </thead>
                           <tbody id="goodsownerCheckList">
                               
                           </tbody>
                       </table>
                   </div>
               </div>
               
               
               <div class="p_foot">
                    <button class="btn h50 mr10" onclick="submitGoodsOwnrNew(); checkResultWrTbody(); return false;" >선택</button>
                    <a href="#" class="btn t1 h50" onclick="closePopup('goodsownercheck');return false;">취소</a>
               </div>
           </div>
       </div>
   </div>
   <script>
  function submitGoodsOwnrNew(){
	  document.getElementById('selectedItemTit').innerText
	  let text = document.getElementById('selectedItemTit').innerText;
	  let type = Number(text.substring(9,10));
	  if(type != ''){
	  submitGoodsOwnr(type);
	  }else{
		  return false;
	  }
  }
   </script>

