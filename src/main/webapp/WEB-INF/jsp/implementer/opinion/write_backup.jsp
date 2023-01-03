<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%> 

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
        <meta
            name="viewport"
            content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"
        />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <meta http-equiv="Cache-Control" content="no-cache" />

        <title>재결정보지원센터</title>

        <meta name="description" content="재결정보지원센터" />
        <meta name="keywords" content="재결정보지원센터" />
        <meta name="author" content="재결정보지원센터" />
        <meta name="format-detection" content="telephone=no" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="재결정보지원센터" />
        <meta property="og:site_name" content="재결정보지원센터" />
        <meta property="og:description" content="재결정보지원센터" />
        <meta property="og:image" content="../../css/favicon_1200x630.png" />
        <meta name="twitter:description" content="재결정보지원센터" />
        <meta name="twitter:image" content="../../css/favicon_270x270.png" />
        <link rel="shortcut icon" href="../../css/favicon_seoul.ico" />
        <link rel="icon" href="../../css/favicon_seoul.ico" />

        <link rel="apple-touch-icon" href="../css/favicon_seoul.ico" />
        <link rel="stylesheet" href="../../css/init.css?after" />
        <link rel="stylesheet" href="../../css/common.css?after" />
        <link rel="stylesheet" href="../../css/layout.css?after" />
        <link rel="stylesheet" href="../../css/sub.css?after" />
        <link rel="stylesheet" href="../../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../../css/jquery-ui.css" />
        
    </head>
    <body>
        <div id="wrap">
        
        	 <form id="fileForm" style="display: none;'">
			    <input type="file" class="form-control wd-100p" id="fileSeq" name="file"  >
			</form>
			
        
        	<input type="hidden" name="decisionId" id="decisionId" value="${decisionId}">
            <input type="hidden" name="masterId" id="masterId" value="${masterId}">
       
        
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title02">
                        <h2 class="title bold center">재결접수</h2>
                    </div>
                   
					<!-- implementer submenu start -->
		        	<jsp:include page="../includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- implementer submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">재결의견작성 상세</h3>
                        </div>
                        <div class="cs_body">
                            <form class="decision_form" name="inquiry_view">
                               
                                <!-- step start -->
	                       		<jsp:include page="/WEB-INF/jsp/components/view/step.jsp" flush="false">
									<jsp:param name="currentStep" value="${avo.decisionState}" />
								</jsp:include> 
	                            <!-- step end -->
                                
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	사업 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건번호</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                	${avo.caseNo}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건명</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>
                                            	 ${avo.judgBizNm}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>접수일자</label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>
                                                	${avo.recvDt}
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>진행상태</label>
                                            </div>
                                            <div class="ff_wrap">
                                     			<p>${avo.decisionStateStr }</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>시행자가격시점</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.priceDt}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>재결구분</label>
                                            </div>
                                            <div class="ff_wrap">
                                            	<p>${avo.judeDivCdName}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>수용재결법인</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p></p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>협의법인</label>
                                            </div>
                                            <div class="ff_wrap">
                                     		  <p>${avo.csltApprInstNm}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                      	  담당자 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>시행자명</label>
                                            </div>
                                            <div class="ff_wrap">
                                            	<p>${avo.bizOprtNm}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사업유형</label>
                                            </div>
                                            <div class="ff_wrap">
                                              <p>${avo.bizTpCd}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>소재지</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                  ${avo.reptLoc}	
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	조서 정보
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>지장물수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('goods','${objectCount}');return false;" >${objectCount}건<i class="icon search"></i ></a>
                                                </p>
                                            </div>
                                        </div>
                                  		<div class="f_field div2">
                                            <div class="ff_title">
                                                <label>필지수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx" onclick="openPopup('land','${landCount}');return false;">${landCount}건<i class="icon search" ></i></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                       <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>지장물소유자수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('goodsowner','${objectRightCount}');return false;" >${objectRightCount}명<i class="icon search"></i></a>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>필지소유자수</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>
                                                    <a href="#" class="cx"  onclick="openPopup('landsowner','${landRightCount}');return false;" >${landRightCount}명<i class="icon search"></i ></a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>면적</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${totalAreaAmot}㎡</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>종전금액합계(원)</label>
                                            </div>
                                            <div class="ff_wrap">
                                                 <p>${totalCost}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                      	  비고
                                    </h4>
                                </div>
                                <div class="form t2">
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label for="bw_subject"
                                                    >제출기한
                                                </label>
                                            </div>
                                            <div class="ff_wrap">
                                               <p>-</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label for="bw_subject"
                                                    >사업시행자
                                                  	  담당자(연락처)</label
                                                >
                                            </div>
                                            <div class="ff_wrap">
                                                 <p>
                                                	${avo.bizOprtIchrNm}                                             	
                                                   	 <a
                                                        href="tel:${avo.bizOprtPhoneNo}"
                                                        class="cx"
                                                        >${avo.bizOprtPhoneNo}</a
                                                    >
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
          						<div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                        	소유자의견 및 사업시행자 의견 작성
                                    </h4>
                                </div>
                                
                                                 <div class="c_table t1">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>연번</th>
                                                <th>소유자</th>
                                                <th>항목</th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach var="ownerInfo" items="${ownerList}" varStatus="status">
											<c:set var ="i" value="${i+1}"/>
									           <tr>
	                                                <th>
	                                                    <strong>${i}</strong>
	                                                </th>
	                                                <td>
	                                                    <strong>소유자</strong>
	                                                    <span>
	                                                      <a
	                                                        href="#!"
	                                                        class="cx owner"
	                                                        >${ownerInfo.ownr_nm}</a>
	                                                    </span>
	                                                    <div></div>
	                                                </td>
	                                                <td>
	                                                    <button><a href="#" class="btn_check" onclick="openPopup('checkbox','${ownerInfo.ownr_seq}');return false;">항목 선택</a></button>
	                                                </td>
                                            	</tr>
                                            	
	                                            <tr class="inner_table">
	                                              <td colspan="100%">
	                                                <div class="inner_table_div" >
	                                                  <p class="title t3 s${i} bullet">필지</p>
	                                                  <table>
	                                                    <caption>
	                                                      	  필지
	                                                    </caption>
	                                                    <thead>
	                                                        <tr>
	                                                            <th>연번</th>
	                                                            <th>소유자</th>
	                                                            <th>지분</th>
	                                                            <th>소재지</th>
	                                                            <th>지번</th>
	                                                            <th>본번</th>
	                                                            <th>부번</th>
	                                                            <th>공</th>
	                                                            <th>실</th>
	                                                            <th>면적</th>
	                                                            <th>단가</th>
	                                                            <th>항목</th>
	                                                        </tr>
	                                                    </thead>
	                                                    <tbody>
	                                                        <tr>
	                                                            <th>
	                                                                <strong>1</strong>
	                                                            </th>
	                                                            <td>
	                                                                <strong>소유자</strong>
	                                                                <span>
	                                                               	   김형은
	                                                                </span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>지분</strong>
	                                                                <span>1/1</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>소재지</strong>
	                                                                <span
	                                                                    >경상남도 진주시 금산면
	                                                                  	  종천리</span
	                                                                >
	                                                            </td>
	                                                            <td>
	                                                                <strong>지번</strong>
	                                                                <span></span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>본번</strong>
	                                                                <span>0237</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>부번</strong>
	                                                                <span>0017</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>공</strong>
	                                                                <span>답</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>실</strong>
	                                                                <span>답</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>면적</strong>
	                                                                <span>5</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>단가</strong>
	                                                                <span>921,000</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>단가</strong>
	                                                                <div><select class="ownerItem${ownerInfo.ownr_seq}" >
	                                                                  <option value="" selected>항목 선택</option>
	                                                                  <option value="1">1</option>
	                                                                  <option value="2">2</option>
	                                                                </select></div>
	                                                            </td>
	                                                        </tr>
	                                                    </tbody>
	                                                  </table>
	                                                </div>
	                                                <div class="inner_table_div" >
	                                                  <p class="title t3 s${i} bullet">지장물</p>
	                                                  <table>
	                                                    <caption>
	                                                      	지장물
	                                                    </caption>
	                                                    <thead>
	                                                        <tr>
	                                                            <th>연번</th>
	                                                            <th>소유자</th>
	                                                            <th>지분</th>
	                                                            <th>소재지</th>
	                                                            <th>지번</th>
	                                                            <th>본번</th>
	                                                            <th>부번</th>
	                                                            <th>공</th>
	                                                            <th>실</th>
	                                                            <th>면적</th>
	                                                            <th>단가</th>
	                                                            <th>항목</th>
	                                                        </tr>
	                                                    </thead>
	                                                    <tbody>
	                                                        <tr>
	                                                            <th>
	                                                                <strong>1</strong>
	                                                            </th>
	                                                            <td>
	                                                                <strong>소유자</strong>
	                                                                <span>
	                                                                  	김형은
	                                                                </span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>지분</strong>
	                                                                <span>1/1</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>소재지</strong>
	                                                                <span
	                                                                    >경상남도 진주시 금산면
	                                                                   	 종천리</span
	                                                                >
	                                                            </td>
	                                                            <td>
	                                                                <strong>지번</strong>
	                                                                <span></span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>본번</strong>
	                                                                <span>0237</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>부번</strong>
	                                                                <span>0017</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>공</strong>
	                                                                <span>답</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>실</strong>
	                                                                <span>답</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>면적</strong>
	                                                                <span>5</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>단가</strong>
	                                                                <span>921,000</span>
	                                                            </td>
	                                                            <td>
	                                                                <strong>단가</strong>
	                                                                <div><select class="ownerItem${ownerInfo.ownr_seq}" >
	                                                                  <option value="" selected>항목 선택</option>
	                                                                  <option value="1">1</option>
	                                                                  <option value="2">2</option>
	                                                                </select></div>
	                                                            </td>
	                                                        </tr>
	                                                    </tbody>
	                                                  </table>
	                                                </div>
	                                              </td>
	                                            </tr>
									
											</c:forEach>
								
                                 
                               
                                        </tbody>
                                    </table>
                                </div>
                                
                 
                                <div class="mt40 btn_wrap">
                                    <ul class="btns">
                                        <li>
                                            <button class="btn h50 big" id="success" type="submit">
                                                	완료
                                            </button>
                                        </li>
                                        <li>
                                            <a href="#" class="btn t1 h50 big" onclick="goToImplementerOpinionList();return false;">취소</a>
                                        </li>
                                    </ul>
                                </div>
                                
                                <!-- 체크 팝업 S -->
                                <%@ include file="../../implementer/popup/checkbox.jsp"%> 
                                <!-- 체크 팝업  E -->                              

                				<!-- 팝업, 지장물수 검색 S -->
                                <%@ include file="../../implementer/popup/goods.jsp"%> 
                                <!-- 팝업, 지장물수 검색 E -->
                                
                                <!-- 팝업, 필지 검색 S -->
                           		<%@ include file="../../implementer/popup/land.jsp"%> 
                                <!-- 팝업, 필지 검색 E -->
                               
                                <!-- 팝업, 지장물 소유자 검색 S -->
                       			<%@ include file="../../implementer/popup/goodsowner.jsp"%> 
                                <!-- 팝업, 지장물 소유자 검색 E -->
                                
                                <!-- 팝업, 필지 소유자 검색 S -->
                                <%@ include file="../../implementer/popup/landsowner.jsp"%> 
                                <!-- 팝업, 필지 소유자 검색 E -->
                                         
                                <!-- 팝업, 평가사 정보 S -->
                              
                                <!-- 팝업, 평가사 정보 E -->
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            
            <!-- footer start -->
            <jsp:include page="/WEB-INF/jsp/components/footer.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
            <!-- footer end -->
        </div>
        
        <!-- 소유자의견 팝업 S -->
        <div id="popupOwnerOpinion" class="popup owner_opinion">
            <div class="p_box">
                <div class="p_head">
                    <h3 class="p_title">의견입력
                    </h3>
                    <a href="#" class="p_close" onclick="closeOwnerOpinion();return false" ><span class="blind">닫기</span></a>
                </div>
                <div class="p_body">
                    <div class="wrap">
                        <div class="c_table t1">
                    
                            <div class="mt20">
                                <input type="text" id="opinionTitle" class="input40 mb5" placeholder="제목">
                                <textarea id="opinionContent" class="textarea"></textarea>
                            </div>
                            
                            <div class="mt20 file_flex">
                                <input class="input40 file_name">
                                <div id="fileList" class="file_btn_wrap">
                                    <div id="fileInfo" class="fileInfo" style="display: flex">
                                        <div class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('1'');return false;">파일 없음</div>
                                        <button class="btn nohover t4 small" onclick="removeFileTarget('1');return false;">
                                            <i class="close icon white"></i>
                                            	삭제
                                        </button>
                                        <button class="btn nohover t4 small" onclick="addNewFileTarget();return false;"><i class="pluse icon white"></i>추가</button>
                                    </div>                     
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="p_foot">
                    <button class="btn h50 mr10" onclick="submitOwnerOpinion();return false;" >확인</button>
                    <a href="#" class="btn t1 h50" onclick="closeOwnerOpinion();return false">취소</a>
                </div>
            </div>
        </div>
        <!-- 소유자의견 팝업 E -->

	    <!-- join popup S -->
	    <jsp:include page="/WEB-INF/jsp/components/join.jsp" flush="false">
			<jsp:param name="login" value="login" />
		</jsp:include> 
	    <!-- join popup E -->
	
	    <!-- 팝업, 로그인 S -->
	   	<jsp:include page="/WEB-INF/jsp/components/login.jsp" flush="false">
			<jsp:param name="login" value="login" />
		</jsp:include> 
	    <!-- 팝업, 로그인 E -->
        
        <script src="../../lib/jquery.3.1.0.min.js"></script>
        <script src="../../lib/owl.carousel.min.js"></script>
        <script src="../../lib/jquery-ui.min.js"></script>
        <script src="../../lib/lib.js"></script>

        <script src="../../lib/form/jquery.form.js"></script>
        
        <!--common start-->
		<script src="../../js/common.js"></script>	
		
		<script src="../../js/implementer/content.js"></script>
				
		<script src="../../js/implementer/opinion/content.js"></script>
				
		<script src="../../js/implementer/popup/block.js"></script>
		<script src="../../js/implementer/popup/content.js"></script>
       
        <script type="text/javascript">

	        function triggerFileUpload(){
	        	$('#fileSeq').trigger('click');
	        }

            function saveOpinion(){

            	let contextPath = $('#contextPath').val();
            	let url = contextPath+"/api/implementer/opinion";
            	let msg="재결의견 작성을 완료하시겠습니까?";

            	//BASE START
            	let decisionId = $('#decisionId').val();
            	
            	let opinionTextareaCount = $('.opinionData').length;
            	let opinionTextList = new Array(); // json의 전체를 가리키는 배열
            	
            	console.log(opinionTextareaCount);
            	if(opinionTextareaCount>0) {

            		for ( let i = 0; i < opinionTextareaCount; i++) {
            			
            			let getSeq = $(".ownerOpinion:eq("+i+")").attr("data-seq");
            			let ownerOpinion = $(".ownerOpinion:eq("+i+")").val();
            			let executorOpinion = $(".executorOpinion:eq("+i+")").val();
            			
            			let sub = new Object();
            			sub['reptSeq'] = getSeq;
            			sub['ownerOpinion'] = ownerOpinion;
            			sub['executorOpinion'] = executorOpinion;
            	
            			opinionTextList[i] = sub;
            		}
            		
            		console.log(opinionTextList);
            		
            		
            	}
            	
            	
            	//상세의견
            	let opinionCount = $('.opinionGet').length;
            	let opinionList = new Array(); // json의 전체를 가리키는 배열
         
            	if(opinionCount>0) {

            		for ( let i = 0; i < opinionCount; i++) {

            			let getSeq = $(".opinionGet:eq("+i+")").attr("data-seq");
            			let getType = $(".opinionGet:eq("+i+")").attr("data-type");
            			let getTitle = $(".opinionGet:eq("+i+")").attr("data-title");
            			let getContent = $(".opinionGet:eq("+i+")").attr("data-content");
            			
            			if (getTitle == null || getTitle == "") {
            				alert("의견 제목을 입력해주세요");
            				return false;
            			}

            			if (getContent == null || getContent == "") {
            				alert("의견 내용을 입력해주세요");
            				return false;
            			}
            			
            			let sub = new Object();
            			sub['reptSeq'] = getSeq;
            			sub['opinionType'] = getType;
            			sub['opinionTitle'] = getTitle;
            			sub['opinionContent'] = getContent;
            			
            			opinionList[i] = sub;
            		}
          		
            		console.log(opinionList);
            	}
            	
            	const data = {
        			"decisionId" : decisionId,
         			"opinionList" : opinionList,
         			"opinionTextList" : opinionTextList,
        		}
            	
            	if(confirm(msg)) {            		
            		$.ajax({
            			url : url,
            			type : "POST",
            			contentType : "application/json; charset=UTF-8",
            			data : JSON.stringify(data),
            			async: false, 
            			success : function(data) {
            				alert("완료됐습니다.");
            				goToImplementerOpinionList();
            			},
            			error : function(xhr, status, error) {
            				//에러!
            				//alert("code:"+xhr.status);
            			}
            		});
            	}

            }
            
            $(document).ready(function () {
            	
                const owners = document.querySelectorAll(".owner");
                owners.forEach((owner) => {
                    owner.addEventListener("click", (e) => {
                        const tr =
                            e.target.parentElement.parentElement.parentElement;
                        const checkWrap = tr.nextElementSibling;
                        checkWrap.classList.toggle("on");
                    });
                });
                
              	$('#success').on('click', function(){
              		saveOpinion();
            	})
                
              	$('.decision_form').on('submit', function(e){
              		e.preventDefault()
              		console.log('form')
              		//completeOpinion();
              		
              		saveOpinion();
            	})
            	
            	$(".opinion_check").on('click', function() {
            		
            		let getSeq = $(this).attr("data-seq");
            		let getType =  $(this).attr("data-type");
              		let getTitle =  $(this).attr("data-title");
              		
              		console.log(getSeq);
              		console.log(getType);
             		console.log(getTitle);
             		
            	    if( $(this).prop('checked') ) {
            	        addOpinion(getSeq,getType,getTitle);
            	    }else {
            	    	deleteOpinion(getSeq,getType,getTitle);
            	    } 
            	  
            	});
            
            
            	 //파일 용량 체크
                let fileSize = 1024*1024*50;

                //파입 업로드
                $('#fileSeq').on("change", function(){

                	let contextPath = $("#contextPath").val();
                	let url = contextPath+"/uploadContentFile";
                	
                    let iSize = 0;
                    let total = $("#fileSeq")[0].files.length;

                    for(let i=0; i<total; i++) {
                        iSize += $("#fileSeq")[0].files[i].size;
                        let ext=fileCheck_doc($("#fileSeq")[0].files[i].name);
                        if(ext != "ok") {
                            alert(ext+" 파일은 업로드 하실 수 없습니다.");
                            return false;
                        }
                    }

                    let fileName = $("#fileSeq")[0].files[0].name;
                    
                    let inputPosition = $('#fileSeq').attr('data-position');
                    let inputId = $('#fileSeq').attr('data-id');
                	
                    let fullId = inputPosition+"-"+inputId;

                    if(iSize > fileSize) {
                        alert("선택한 파일 총용량은 50MB를 초과할 수 없습니다.");
                        return false;
                    }

                    $("#fileForm").ajaxForm({
                        type: "post",
                        dataType: "json",
                        url: url,
                        beforeSend: function () {
                            //alert("시작전");
                            //alert($("input[name=skin_set]").val());
                        },
                        complete: function (xhr) {
                            //alert("완료");
                        },
                        success: function(data){
                        	
                        	let fileInfo = data.fileInfo;
                        	console.log(fileInfo);
                        	
                        	let seqNo = fileInfo.seqNo;
                        	let fileNameOri = fileInfo.fileNameOri;           	
                        	
                        	$("#fileInfo"+fullId).attr("data-seq",seqNo);
                        	$("#fileText"+fullId).text(fileNameOri);

                        },
                        error: function(e) {

                        }
                    });
                    //ajaxForm 이벤트 호출
                    $("#fileForm").submit();

                });
            });
        </script>
    </body>
</html>
