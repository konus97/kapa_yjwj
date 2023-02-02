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
                 
                 	<div class="p_filter">
                 		<div class="p_filter__opt">
                 			<span class="p_filter__optnm">법령</span>
							<select id="lawTitleList" class="p_filter__select">
							</select>                 		
                 		</div>
						<div class="p_filter__opt">
							<span class="p_filter__optnm">조</span>
							<select id="lawArticleList" class="p_filter__select">
							</select>                 		
                 		</div>
                 		<div class="p_filter__opt">
                 			<span class="p_filter__optnm">항</span>
							<select id="lawParagraphList" class="p_filter__select">
							</select>                 		
                 		</div>
                 		<div>
							<button type="button" onclick="getLawInfo(1); return false;" class="btn small t4 ico search">검색</button>
							<button type="button" onclick="reset_law(); return false;" class="btn small t2 nohover">설정 초기화</button>
                 		</div>
					</div>
					
					<div class="c_table t1">
                       <table>
                           <caption>
                              	 관련 법령
                           </caption>
                           
                           
                            <thead>
                               <tr>
                                   <th style="width: 2em">선택</th>
                                   <th style="width: 14em">법령</th>
                                   <th style="width: 6em">조</th>
                                   <th style="width: 6em">항</th>
                                   <th>내용</th>
                               </tr>
                           </thead>
                           <tbody id="lawList" style="text-align: center">
                               
                           </tbody>
                           
                       </table>
                   </div>
					<div class="paging">
						<div class="p_wrap" id="pageList">
							
						</div>
					</div>
               </div>
               <div class="p_foot">
                    <button class="btn h50 mr10" onclick="checkItemLaw(); checkLawTbody(); return false;" >선택</button>
                    <a href="#" class="btn t1 h50" onclick="closePopupLaw();return false;">취소</a>
               </div>
           </div>
       </div>
   </div>
</div>

<script type="text/javascript">

	$(document).ready(function () {
		getLawTitle();
	});
	
	$("#lawTitleList").change(function(){
		getLawArticles();
		//getLawInfo(1);
	});

	$("#lawArticleList").change(function(){
		getLawParagraph();
		//getLawInfo(1);
	});

	$("#lawParagraphList").change(function(){
		//getLawInfo(1);
	});
	
	
	function reset_law(){
		getLawTitle();
		getLawInfo(1);
	}
</script>