<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
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
		<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
		<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
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
        <link rel="stylesheet" href="../../css/init.css" />
        <link rel="stylesheet" href="../../css/common.css" />
        <link rel="stylesheet" href="../../css/layout.css" />
        <link rel="stylesheet" href="../../css/sub.css" />
        <link rel="stylesheet" href="../../css/owl.carousel.min.css" />
        <link rel="stylesheet" href="../../css/jquery-ui.css" />
    </head>
    <body>
    
    	<input type="hidden" name="decisionId" id="decisionId" value="${decisionId}">
       
		<form id="fileForm" style="display: none;'">
		    <input type="file" class="form-control wd-100p" id="fileSeq" name="file"  >
		    <input type="hidden" name="decisionId" id="decisionId" value="${decisionId}">
		    
		</form>
		
        <div id="wrap">
            <!-- header start -->
        	<jsp:include page="/WEB-INF/jsp/components/header.jsp" flush="false">
				<jsp:param name="login" value="login" />
			</jsp:include> 
			<!-- header end -->

            <hr />
            <div id="contents" class="c_sub">
                <div class="wrap">
                    <div class="sub_title sub_title03">
                        <h2 class="title bold center">열람공고</h2>
                    </div>
                    
              		<!-- cities submenu start -->
		        	<jsp:include page="../cities/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- cities submenu end -->
					
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">열람공고 상세</h3>
                        </div>
                        <div class="cs_body">
                      
                      
                                <!-- step start -->
	                       		<jsp:include page="/WEB-INF/jsp/components/view/step.jsp" flush="false">
									<jsp:param name="currentStep" value="3" />
								</jsp:include> 
	                            <!-- step end -->
	                            
    
                                <div class="form t1 mt80">
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>의뢰 문서 번호</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${decisionNotice.docNumber}</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>사건 번호</label>
                                            </div>
                                            <div class="ff_wrap">
                                       			<p>${avo.case_no}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>문서 제목</label>
                                            </div>
                                            <div class="ff_wrap">
                                            <c:choose>
                                            	<c:when test="${decisionNotice.docTitle ne null}">
                                                <p>
					                              ${decisionNotice.docTitle}
                                                </p>
                                                </c:when>
                                                <c:otherwise>
                                                <p>-</p>
                                                </c:otherwise>
                                            </c:choose>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>수신처(수신자)</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <c:choose>
                                            	<c:when test="${decisionNotice.receiver ne null}">
                                                <p>
					                              ${decisionNotice.receiver}
                                                </p>
                                                </c:when>
                                                <c:otherwise>
                                                <p>-</p>
                                                </c:otherwise>
                                            </c:choose>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>의뢰 문서</label>
                                            </div>
                                            <div class="ff_wrap">
                                            
                                     <!--           <div>
                                                    <div class="file_flex">
                                                        <input class="file_view" value="파일이름" readonly="" disabled="">
                                                        <input class="file_view" value="파일명" readonly="" disabled="">
                                                        <button class="btn small02 t1 nohover">
                                                            <i class="icon-block download"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                      -->             
                                      <c:choose>
														<c:when test="${fn:length(noticeFiles) == 0}">
															<div class="file_flex">
																<input class="file_view" value="파일이름" readonly disabled />
																<input class="file_view" value="파일명" readonly disabled />
															</div>
														</c:when>
														<c:otherwise>
															<c:set var="notExist" value="true" />
															<c:forEach var="noticeFiles" items="${noticeFiles}"
																varStatus="status">
																
																	<c:set var="notExist" value="false" />
																	<div class="file_flex">
																		<input class="file_view" value="${noticeFiles.fileDescription}" readonly disabled />
																		<input class="file_view" value=${noticeFiles.fileNameOri } readonly disabled />
																		<button type="button"
																			class="btn small02 t1 nohover downloadButton"
																			id="${noticeFiles.seqNo}">
																			<i class="icon-block download"></i>
																		</button>
																	</div>
															
															</c:forEach>
															<c:if test="${notExist}">
																<div class="file_flex">
																	<input class="file_view" value="파일이름" readonly disabled />
																	<input class="file_view" value="파일명" readonly disabled />
																</div>
															</c:if>
														</c:otherwise>
													</c:choose>                                        
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>의뢰일</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>2022.08.01</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    
                                     <div class="f_wrap">
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>열람공고만료일</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>-</p>
                                            </div>
                                        </div>
                                        <div class="f_field div2">
                                            <div class="ff_title">
                                                <label>회보일</label>
                                            </div>
                                            <div class="ff_wrap">
                                              <p>${decisionNotice.newsletterDay}</p>
                                            </div>
                                        </div>
                                        
                                    </div>
                      
                                    <div class="f_wrap">
                                          <div class="f_field">
                                                <div class="ff_title">
                                                    <label>회보 첨부파일</label>
                                                </div>
                                                <div class="ff_wrap ff_wrap_inner ff_wrap_inner02">
                                                    <label>회보 공문</label>
                                                    <div style="width: 100%" id="fileList2">
                                                    
                                                    
                                                      <div id="fileInfo2-1" class="ff_wrap fileInfo2">
														  <div class="file_flex">
														    <input class="input40 file_name fileLabel2" id="description2-1" maxlength="50">
														    <div class="file_btn_wrap">
														      <div style="display: flex">
														        <div id="fileText3-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('2','1');return false;">파일 없음</div>
														        <button class="btn nohover t4 small" onclick="removeFileTarget('2','1');return false;">
														          <i class="close icon white"></i> 삭제 </button>
														        <button class="btn nohover t4 small" onclick="addNewFileTarget('2');return false;">
														          <i class="pluse icon white"></i>추가 </button>
														      </div>
														    </div>
														  </div>
														</div>

                                                        
                                                        <!-- input 추가 시 해당 div 안에 추가되어야합니다.  -->
                                                    </div>
                                                </div>
                                                <div class="ff_wrap ff_wrap_inner ff_wrap_inner02" >
                                                    <label>공고문</label>
                                                    <div style="width: 100%" id="fileList3">
                                                                                                    
                                                       <div id="fileInfo3-1" class="ff_wrap fileInfo3">
														  <div class="file_flex">
														    <input class="input40 file_name fileLabel3" id="description3-1" maxlength="50">
														    <div class="file_btn_wrap">
														      <div style="display: flex">
														        <div id="fileText3-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('3','1');return false;">파일 없음</div>
														        <button class="btn nohover t4 small" onclick="removeFileTarget('3','1');return false;">
														          <i class="close icon white"></i> 삭제 </button>
														        <button class="btn nohover t4 small" onclick="addNewFileTarget('3');return false;">
														          <i class="pluse icon white"></i>추가 </button>
														      </div>
														    </div>
														  </div>
														</div>
                                                    
                                                    </div>
                                                </div>
                                                <div class="ff_wrap ff_wrap_inner ff_wrap_inner02" >
                                                    <label>등기송달증빙</label>
                                                    <div style="width: 100%" id="fileList4">
                                                         
                                                        <div id="fileInfo4-1" class="ff_wrap fileInfo4">
														  <div class="file_flex">
														    <input class="input40 file_name fileLabel4" id="description4-1" maxlength="50">
														    <div class="file_btn_wrap">
														      <div style="display: flex">
														        <div id="fileText4-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('4','1');return false;">파일 없음</div>
														        <button class="btn nohover t4 small" onclick="removeFileTarget('4','1');return false;">
														          <i class="close icon white"></i> 삭제 </button>
														        <button class="btn nohover t4 small" onclick="addNewFileTarget('4');return false;">
														          <i class="pluse icon white"></i>추가 </button>
														      </div>
														    </div>
														  </div>
														</div>
														
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                                <div class="mt40 btn_wrap">
                                    <ul class="btns">
                                        <li>
                                            <button class="btn h50 big"  id="success" >
                                                	완료
                                            </button>
                                        </li>
                                        <li>
                                            <a href="#" class="btn t1 h50 big" onclick="goToCityAnnouncementList();return false">확인</a>
                                        </li>
                                    </ul>
                                </div>
                    
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
            
        <!-- decision -->
        <script src="../../js/cities/content.js"></script>
        
        <script type="text/javascript">


        
    	const downloadButtons = document.querySelectorAll('.downloadButton');
let contextPath = $("#contextPath").val();
const downloadurl = contextPath + '/file/download';
for (let i = 0; i < downloadButtons.length; i++) {
	downloadButtons[i].addEventListener("click",
			function(e) {
				let seqNo = e.currentTarget.id;
				window.location = downloadurl + "?seqNo=" + seqNo;
			})
};
        
        
            function completeDecisionCities(){
            	let csrfToken = $("meta[name='_csrf']").attr("content");
                let csrfHeader = $("meta[name='_csrf_header']").attr("content");
            	let contextPath = $("#contextPath").val();
            	let url = contextPath+"/api/cities";
            	
            	let msg="열람공고를 완료하시겠습니까?";

            	const decisionId = $('#decisionId').val();

            	if(confirm(msg)) {

            		$.ajax({
            			url : url,
            			type : "POST",
            			dataType : "json",
            			data : {
            				"decisionId" : decisionId,
            			},
            			beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
            			success : function(data) {
            				alert("완료됐습니다.");
            				goToCityAnnouncementList();
            			},
            			error : function(xhr, status, error) {
            				//에러!
            				//alert("code:"+xhr.status);
            			}
            		});

            	}

            }
            
            
            function triggerFileUpload(fileType, rank){
            	
            	console.log("triggerFileUpload start");

    			
    			let description = document.getElementById('description'+fileType+'-'+rank).value ;
    			
    			if(description.includes('-')){
	        		alert('파일 설명란에 특수문자 -는 작성이 불가합니다.');
	        		return false;
	        	}
	        	
	        	if(description =='' || description == null){
	        		alert('파일 설명란을 작성해주세요');
	        		return false;
	        	}
    			
	        	//파일 정보 데이터 세팅
    			document.getElementById('fileSeq').name = 'file'+'-'+fileType+'-'+rank+'-'+description;
    			console.log(document.getElementById('fileSeq').name);
				
    			fileType = fileType;
    			rank = rank;
    			    			

            	$('#fileSeq').trigger('click');
            	}

            $(document).ready(function () {
            	
              	$('#success').on('click', function(){
              		completeDecisionCities();
            	});
              	
                //파일 용량 체크
                let fileSize = 1024*1024*50;

                //파일 업로드
                $('#fileSeq').on("change", function(){
                


                	let contextPath = $("#contextPath").val();
                	let url = contextPath+"/uploadContentFile/cities";
                	
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


	
               

                	
                	
                    
                    
                    
                    if(iSize > fileSize) {
                        alert("선택한 파일 총용량은 50MB를 초과할 수 없습니다.");
                        return false;
                    }

                    $("#fileForm").ajaxForm({
                        type: "post",
                        dataType: "json",
                        url: url,
                    	beforeSend : function(xhr){
            				xhr.setRequestHeader(csrfHeader, csrfToken);
            			},
                        complete: function (xhr) {
                            //alert("완료");
                        },
                        success: function(data){
                        	
                        	let filename = data.name;
                        	console.log(name);
                        	let typeAndRank = data.typeAndRank;
                        	let seq = Number(typeAndRank.substring(0,1))+1;
                        	let rank = Number(typeAndRank.substring(2,3));
                        	
                        	document.getElementById('fileText'+seq+'-'+rank).innerText = filename;
                        	
                            //         let fileText = document.getElementById('fileText'+Number(fileType+1)+'-'+rank);
            	            //	console.log(fileText);
            	                //    fileText.innerText = fileName;
            				

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
