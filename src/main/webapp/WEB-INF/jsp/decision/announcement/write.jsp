<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>

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
		<meta id="_csrf" name="_csrf" content="${_csrf.token}" />
		<meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}" />
        <meta name="description" content="재결정보지원센터" />
        <meta name="keywords" content="재결정보지원센터" />
        <meta name="author" content="재결정보지원센터" />
        <meta name="format-detection" content="telephone=no" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="재결정보지원센터" />
        <meta property="og:site_name" content="재결정보지원센터" />
        <meta property="og:description" content="재결정보지원센터" />
        <meta property="og:image" content="../css/favicon_1200x630.png" />
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
                    <div class="sub_title sub_title05">
                        <h2 class="title bold center">열람공고</h2>
                    </div>
                    
                    <!-- decision submenu start -->
		        	<jsp:include page="../../decision/includes/submenu.jsp" flush="false">
						<jsp:param name="currentPage" value="${currentPage}" />
					</jsp:include> 
					<!-- decision submenu end -->
					
				
                    <div class="cs_wrap">
                        <div class="cs_head">
                            <h3 class="title bold cb">열람공고 등록</h3>
                        </div>
                        <div class="cs_body">
                            <div class="cs_search">
                    
                                    <div class="form t1">
                                        <div class="f_wrap">
                                        
                                             <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label>사건 번호</label>
                                                </div>
                                                <div class="ff_wrap">
                                                    <p>${avo.case_no}</p>
                                                </div>
                                            </div>
                                            
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label>의뢰 문서 번호</label>
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        class="input40"
                                                        id="docNumber"
                                                    />
                                                </div>
                                            </div>
                                       
                                        </div>
                                        <div class="f_wrap">
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label>문서 제목</label>
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        class="input40"
                                                        id="docTitle"
                                                    />
                                                </div>
                                            </div>
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label
                                                        >수신처(수신자)</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <input
                                                        type="text"
                                                        class="input40"
                                                        id="receiver"
                                                    />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="f_wrap">
                                          
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label for=""
                                                        >의뢰마감일</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <span class="ff_group">
                                                        <span class="w140"
                                                            ><label
                                                                for="requestStartDate"
                                                                class="blind"
                                                                >시작일</label
                                                            ><input
                                                                type="text"
                                                                name="requestStartDate"
                                                                id="requestStartDate"
                                                                class="datepicker input40 t1"
                                                                value="" /><i></i
                                                        ></span>
                                                        <span class="side"
                                                            >~</span
                                                        >
                                                        <span class="w140"
                                                            ><label
                                                                for="requestEndDate"
                                                                class="blind"
                                                                >종료일</label
                                                            ><input
                                                                type="text"
                                                                name="requestEndDate"
                                                                id="requestEndDate"
                                                                class="datepicker input40 t1"
                                                                value="" /><i></i
                                                        ></span>
                                                    </span>
                                                </div>
                                            </div>
                                            
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label for="publicationExpiryDate"
                                                        >열람공고만료일</label
                                                    >
                                                </div>
                                                <div class="ff_wrap">
                                                    <span class="ff_group">
                                                        <span class="w140"><input
                                                                type="text"
                                                                id="publicationExpiryDate"
                                                                class="datepicker input40 t1"
                                                                value="" /><i></i
                                                        ></span>
                                                        
                                                    </span>
                                                </div>
                                            </div>
                                            
                                        </div>

                                        <div class="f_wrap">
                                        
                                       	
                                       		<div class="f_field div2">
                                                <div class="ff_title">
                                                    <label>회보일</label>
                                                </div>
                                                <div class="ff_wrap">
                                                
	                                                 <span class="ff_group">
	                                                        <span class="w140"
	                                                            ><label
	                                                                for="newsletterDay"
	                                                                class="blind"
	                                                                >회보일</label
	                                                            ><input
	                                                                type="text"
	                                                                name="newsletterDay"
	                                                                id="newsletterDay"
	                                                                class="datepicker input40 t1"
	                                                                value="" /><i></i
	                                                        ></span>
	                                                  </span>
	                                        
                                                </div>
                                              
                                            </div>
                                            
                                            
                                            <div class="f_field div2">
                                                <div class="ff_title">
                                                    <label>의뢰 문서</label>
                                                </div>
                                                
                                                <div id="fileList1">
                                                                                               
	                                                <div id="fileInfo1-1" class="ff_wrap fileInfo1">
													  <div class="file_flex">
													    <input class="input40 file_name fileLabel1" maxlength="50">
													    <div class="file_btn_wrap">
													      <div style="display: flex">
													        <div id="fileText1-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('1','1');return false;">파일 없음</div>
													        <button class="btn nohover t4 small" onclick="removeFileTarget('1','1');return false;">
													          <i class="close icon white"></i> 삭제 </button>
													        <button class="btn nohover t4 small" onclick="addNewFileTarget('1');return false;">
													          <i class="pluse icon white"></i>추가 </button>
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
                                                <button class="btn h50 big" id="success">
                                                   	 완료
                                                </button>
                                            </li>
                                            <li>
                                                <a href="#" class="btn t1 h50 big" onclick="goToAnnouncementList();return false;" >확인</a>
                                            </li>
                                        </ul>
                                    </div>
                           
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
     
        <script src="../../js/common.js"></script>
            
        <!-- decision -->
        <script src="../../js/decision/file.js"></script>
        <script src="../../js/decision/content.js"></script>
                    
        <script type="text/javascript">
        
        function triggerFileUpload(rank,id){
        	$('#fileSeq').attr('data-id',id);
          	$('#fileSeq').attr('data-rank',rank);
        	$('#fileSeq').trigger('click');
        }
                
        function saveDecisionNotice(){

        	let msg="열람공고를 등록하시겠습니까?";
	
        	
        	let contextPath = $("#contextPath").val();
        	let url = contextPath+"/api/decision";
        	console.log(url);
        	
        	//BASE START
        	const decisionId = $('#decisionId').val();
        	const docNumber = $('#docNumber').val();
        	const docTitle = $('#docTitle').val();
        	const receiver = $('#receiver').val();
        	const requestStartDate = $('#requestStartDate').val();
        	const requestEndDate = $('#requestEndDate').val();
        	const newsletterDay = $('#newsletterDay').val();
        	const publicationExpiryDate = $('#publicationExpiryDate').val();

        	//console.log(publicationExpiryDate);
        	// 의뢰 문서 번호
        	if (docNumber == null || docNumber == "") {
        		alert("의뢰 문서 번호를 입력해주세요");
        		$('#docNumber').focus();
        		return false;
        	}
        	
          	//문서 제목
        	if (docTitle == null || docTitle == "") {
        		alert("문서 제목를 입력해주세요");
        		$('#docTitle').focus();
        		return false;
        	}
        	
        	//수신처(수신자)
        	if (receiver == null || receiver == "") {
        		alert("수신처(수신자)를 입력해주세요");
        		$('#receiver').focus();
        		return false;
        	}
        	
        	//의뢰마감일
        	if(requestStartDate=="" || requestEndDate == ""){
        		alert("의뢰마감일을 입력해주세요.");
        		return false;
        	}
         	

        	if (Number(requestStartDate.replace(/-/gi, "")) > Number(requestEndDate.replace(/-/gi, ""))) {
        		alert("의뢰 시작일이 종료일보다 클 수 없습니다.");
        		return false;
        	}
        	
        	//회보일
        	if(newsletterDay=="" || newsletterDay == ""){
        		alert("회보일을 입력해주세요.");
        		return false;
        	}
        	
        	let	data = {
				"decisionId" : decisionId,
				"docNumber" : docNumber,
				"docTitle" : docTitle,
				"receiver" : receiver,
				"requestStartDate" : requestStartDate,
				"requestEndDate" : requestEndDate,
				"newsletterDay" : newsletterDay,
				"publicationExpiryDate" : publicationExpiryDate,
			};
        	
        	var csrfToken = $("meta[name='_csrf']").attr("content");
            var csrfHeader = $("meta[name='_csrf_header']").attr("content");
        	if(confirm(msg)) {
      		
        		$.ajax({
        			url : url,
        			type : "POST",
          			contentType : "application/json; charset=UTF-8",
        			data : JSON.stringify(data),
        			async: false, 
        			beforeSend : function(xhr){
        				xhr.setRequestHeader(csrfHeader, csrfToken);
        			},
        			success : function(data) {
        				alert("열람공고가 등록되었습니다.");
        				goToAnnouncementList();
        			},
        			error : function(xhr, status, error) {
        				//에러!
        				//alert("code:"+xhr.status);
        			}
        		});
        

        	}

        }
        
        
        
        $('document').ready(function(){
        	
          	$('#success').on('click', function(){
          		saveDecisionNotice();
        	})
        	

         	 //파일 용량 체크
             let fileSize = 1024*1024*50;

             //드라마 이미지
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

                 let inputId = $("#fileSeq").attr("data-id");
                 let inputRank = $('#fileSeq').attr('data-rank');
                 
                 if(iSize > fileSize) {
                     alert("선택한 파일 총용량은 50MB를 초과할 수 없습니다.");
                     return false;
                 }
                 var csrfToken = $("meta[name='_csrf']").attr("content");
                 var csrfHeader = $("meta[name='_csrf_header']").attr("content");
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
                     	
                     	let fileInfo = data.fileInfo;
                     	console.log(fileInfo);
                     	
                     	let getId = "#fileInfo"+inputRank+"-"+inputId;
                     	
                     	let seqNo = fileInfo.seqNo;
                     	let fileNameOri = fileInfo.fileNameOri;
                     	
                     	$(getId).attr("data-seq",seqNo);
                     	$(getId+">div").text(fileNameOri);

                     },
                     error: function(e) {

                     }
                 });
                 //ajaxForm 이벤트 호출
                 $("#fileForm").submit();

             });

        })
        
 
        
        

        </script>
    </body>
</html>
