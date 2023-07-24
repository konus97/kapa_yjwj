<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ include file="/WEB-INF/jsp/components/temp_session.jsp"%> 

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta  charset=UTF-8  http-equiv="Content-Type" content="text/html;"/>
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

		
		<link rel="stylesheet" href="../../css/init.css" />
		<link rel="stylesheet" href="../../css/common.css" />
		<link rel="stylesheet" href="../../css/layout.css" />
		<link rel="stylesheet" href="../../css/sub.css" />
		<link rel="stylesheet" href="../../css/owl.carousel.min.css" />
		<link rel="stylesheet" href="../../css/jquery-ui.css" />
		<style>
		.needAttache {
		margin-right : 999px;
		}
		</style>
    </head>
    <body>
        <div id="wrap">
        
        	<input type="hidden" name="masterId" id="masterId" value="${masterId}">
        
        
			 <form id="fileForm" style="display: none;'" accept-charset="UTF-8"  enctype="multipart/form-data" method="post" action='${pageContext.request.contextPath}/uploadContentFile/decision'>
			 <input type="hidden" name="masterId" id="masterId" value="${masterId}">
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			 	<div id="fileDiv1">
			 	<input type="file" class="fileInput" id="fileInput1-0" name="fileInput1-0"/>
			 	<input type="text" class="textInput" id="input1-0" name="input1-0"/>
			 	</div>
            	<div id="fileDiv2"><input type="file" class="fileInput" id="fileInput2-0" name="fileInput2-0"/><input type="text" class="textInput" id="input2-0" name="input2-0"/></div>
            	<div id="fileDiv3"><input type="file" class="fileInput" id="fileInput3-0" name="fileInput3-0"/><input type="text" class="textInput" id="input3-0" name="input3-0"/></div>
            	<div id="fileDiv4"><input type="file" class="fileInput" id="fileInput4-0" name="fileInput4-0"/><input type="text" class="textInput" id="input4-0" name="input4-0"/></div>
            	<div id="fileDiv5"><input type="file" class="fileInput" id="fileInput5-0" name="fileInput5-0"/><input type="text" class="textInput" id="input5-0" name="input5-0"/></div>
            	<div id="fileDiv6"><input type="file" class="fileInput" id="fileInput6-0" name="fileInput6-0"/><input type="text" class="textInput" id="input6-0" name="input6-0"/></div>
            	<div id="fileDiv7"><input type="file" class="fileInput" id="fileInput7-0" name="fileInput7-0"/><input type="text" class="textInput" id="input7-0" name="input7-0"/></div>
            	<div id="fileDiv8"><input type="file" class="fileInput" id="fileInput8-0" name="fileInput8-0"/><input type="text" class="textInput" id="input8-0" name="input8-0"/></div>
            	<div id="fileDiv9"><input type="file" class="fileInput" id="fileInput9-0" name="fileInput9-0"/><input type="text" class="textInput" id="input9-0" name="input9-0"/></div>
            	<div id="fileDiv10"><input type="file" class="fileInput" id="fileInput10-0" name="fileInput10-0"/><input type="text" class="textInput" id="input10-0" name="input10-0"/></div>
            	<div id="fileDiv11"><input type="file" class="fileInput" id="fileInput11-0" name="fileInput11-0"  /><input type="text" class="textInput" id="input11-0" name="input11-0"/></div>
            	<div id="fileDiv12"><input type="file" class="fileInput" id="fileInput12-0" name="fileInput12-0" data-input-position="12" data-input-id="0"/><input type="text" class="textInput" id="input12-0" name="input12-0"/></div>
            	<div id="fileDiv13"><input type="file" class="fileInput" id="fileInput13-0" name="fileInput13-0" data-input-position="13" data-input-id="0"/><input type="text" class="textInput" id="input13-0" name="input13-0"/></div>
            	
			</form>
    
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
                            <h3 class="title bold cb">재결접수</h3>
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
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>사건번호</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.caseNo}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cs_title">
                                    <h4 class="fl title t1 bold cb s1 bullet">
                                       	 사업 개요
                                    </h4>
                                </div>
                                <div class="form t1">
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>사업명</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.title}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>위치/규모</label>
                                            </div>
                                             <div class="ff_wrap">
                                             <c:if test="${avo.reptLoc ne null or avo.reptLoc ne ''}">
											<p>${avo.reptLoc}</p>
											</c:if>
											<c:if test="${avo.reptLoc eq null or avo.reptLoc eq ''}">
											<p>-</p>
											</c:if>                                            
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                           <div class="ff_title">
                                                <label>사업기간</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <p>${avo.recmReqStartDate} ~ ${avo.recmReqEndDate}</p>                                   
                                            </div>
                                        </div>
                                    </div>
                                    
                        
 
                                         <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title required">
                                                <label class="lineOver">도시계획<br /> 조합설립</label>
                                            </div>
                                            
                                            <div class="ff_wrap ff_wrap_inner">  
                                            
                                            	<div class="ff_group wid100 mb10">
                                                      <span class="w140"><label for="il_date1" class="blind">시작일</label><input type="text" name="il_date1" id="il_date1" class="datepicker input40 t1" placeholder="조합설립" required /><i></i></span>                          
                                                </div>
                                    
                                            </div>
                                                           
                                        </div>
                                    </div>
                                    
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label class="lineOver">도시계획 <br/>[사업인정]관계</label>
                                            </div>
                                      
                                            <div class="ff_wrap">
	                                            <table class="table reg_table">
	                                                    <thead>
	                                                        <tr>	                                                          
	                                                            <th >
	                                                               	 제목
	                                                            </th>
	                                                            <th >
	                                                               	 내용
	                                                            </th>                                              
	                                                            <th>
	                                                            	 <a href="#!" class="btn small03 t4 nohover h30" onclick="addNewRelation();return false;" >추가</a>
	                                                            </th>
	                                                        </tr>	                                               
	                                                    </thead>
	                                                    <tbody id="relationList" >
	                                                        <tr>
					                                            <td colSpan="3">
					                                                	도시계획 [사업인정]관계 추가					                                                
					                                            </td>
					                                        </tr>     	                                                    
	                                                    </tbody>
	                                            </table>
                                            </div>
                                       
                                        </div>
                                    </div>
                                    
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title required">
                                                <label>협의 날짜</label>
                                            </div>
                                     
                                              <div class="ff_wrap">
                                              
                                                <table class="table reg_table">
	                                                    <thead>
	                                                        <tr>	                                                          
	                                                            <th >
	                                                               	 협의일
	                                                            </th>                                           
	                                                            <th>
	                                                            	 <a href="#!" class="btn small03 t4 nohover h30" onclick="addNewDate();return false;" >추가</a>
	                                                            </th>
	                                                        </tr>	                                               
	                                                    </thead>
	                                                    <tbody id="dateList" >
	                                                        <tr>
					                                            <td colSpan="2">
					                                                	협의 날짜 추가					                                                
					                                            </td>
					                                        </tr>     	                                                    
	                                                    </tbody>
	                                            </table>
	                                            
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title required">
                                                <label>재결신청사유</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <textarea
                                                    type="text"
                                                    class="textarea"
                                                    id="decisionReason"
                                                    required
                                                ></textarea>
                                            </div>
                                        </div>
                                    </div>
                                   
                                     <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label class="lineOver">감정평가 법인 및  <br/>사무소 선정 현황 </label>        
                                            </div>
                                            <div class="ff_wrap">
                                      
                                                <table class="table reg_table">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                               	사업시행자
                                                            </th>
                                                            <th>
                                                               	 시도지사 추천
                                                            </th>
                                                            <th>
                                                               	토지소유자추천
                                                            </th>                                                            
                                                        </tr>                                                    
                                                    </thead>
                                                    <tbody>
                                                        <tr>
				                                            <td>
				                                                <input type="text" id="inputBusinessOperator" class="input40 corporationInput" maxlength="25" data-type="1">
				                                            </td>
				                                            <td>
				                                                <input type="text" id="inputGovernor" class="input40 corporationInput" maxlength="25" data-type="2">
				                                            </td>
				                                            <td>
				                                                <input type="text" id="inputLandowner" class="input40 corporationInput" maxlength="25" data-type="3">
				                                            </td>			                                           
				                                        </tr>     
                                                    
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title required">
                                                <label>추천요청을 <br>하지 않은 이유</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <textarea
                                                    type="text"
                                                    class="textarea"
                                                    id="notReqReason"
                                                ></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label class="lineOver">협의  <br/>감정평가액</label>                                   
                                            </div>
                                            <div class="ff_wrap">
                                      
                                                <table class="table reg_table">
                                                    <thead>
                                                        <tr>
                                                            <th id="titleBusinessOperator">
                                                               	사업시행자 입력해주세요
                                                            </th>
                                                            <th id="titleGovernor">
                                                               	시도지사 추천 입력해주세요
                                                            </th>
                                                            <th id="titleLandowner">
                                                               	토지소유자추천 입력해주세요
                                                            </th>
                                                             <th>
                                                               	합계 평균
                                                            </th>
                                                            
                                                        </tr>                                                    
                                                    </thead>
                                                    <tbody>
                                                        <tr>
				                                            <td>
				                                               <input type="text" id="amountA" class="input40 amountInput" placeholder="0" maxlength="25" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);">
				                                            </td>
				                                            <td>
				                                               <input type="text" id="amountB" class="input40 amountInput" placeholder="0" maxlength="25" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);">
				                                            </td>
				                                            <td>
				                                               <input type="text" id="amountC" class="input40 amountInput" placeholder="0" maxlength="25" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);">
				                                            </td>
				                                            <td id="amountAverage">
				                                                 0
				                                            </td>				                                           
				                                        </tr>     
                                                    
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                     <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title required">
                                                <label>총물량조서</label>
                                            </div>
                                            <div class="ff_wrap">
                                                <table class="table reg_table" style="text-align: center">
                                                    <thead>
                                                        <tr>
                                                            <th rowspan="2">구 분</th>
                                                            <th colspan="3">총 보상대상</th>
                                                            <th colspan="3">협의취득 등</th>
                                                            <th colspan="3">재결신청</th>
                                                        </tr>
                                                        <tr>
                                                            <th>필,건</th>
                                                            <th>면적(m<sup>2</sup>)</th>
                                                            <th>금액(천 원)</th>
                                                            <th>필,건</th>
                                                            <th>면적(m<sup>2</sup>)</th>
                                                            <th>금액(천 원)</th>
                                                            <th>필,건</th>
                                                            <th>면적(m<sup>2</sup>)</th>
                                                            <th>금액(천 원)</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                       <c:forEach var="csltList" items="${csltList}" varStatus="status">
															<tr>
																<th>토 지</th>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_cnt}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_area_amot}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_amt}" pattern="#,###" /></td>
																<td><input id = "landCnt" class="conferVal" type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
                                                            <td><input id = "landArea" class="conferVal"  type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
                                                            <td><input id = "landPrice" class="conferVal" type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_cnt}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_area_amot}" pattern="#,###" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_land_amt}" pattern="#,###" /></td>
															</tr>
															<tr>
																<th>물건</th>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_cnt}" pattern="#,###" /></td>
																<td></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_amt}" pattern="#,###" /></td>
																<td><input id = "objCnt" class="conferVal"  type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
																<td></td>
																     <td><input id = "objPrice" class="conferVal" type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_cnt}" pattern="#,###" /></td>
																<td></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_obst_amt}" pattern="#,###" /></td>
															</tr>
															<tr>
																<th>영업권</th>
																<td><fmt:formatNumber
																		value="${csltList.cslt_business_cnt }" pattern="#,###" /></td>
																<td></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_business_amt }" pattern="#,###" /></td>
																<td><input id = "goodwillCnt" class="conferVal" type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
                                                            <td></td>
                                                            <td><input id = "goodwillPrice" class="conferVal" type="text" onkeyup="inputNumberFormat(this);" onchange="inputNumberFormat(this);" /></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_business_cnt }" pattern="#,###" /></td>
																<td></td>
																<td><fmt:formatNumber
																		value="${csltList.cslt_business_amt }" pattern="#,###" /></td>
															</tr>
														</c:forEach>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr>
                                                            <th>계</th>
															<td>-</td>
															<td>-</td>
															<td>-</td>
															<td id="totalConfer1"></td>
															<td id="totalConfer2"></td>
															<td id="totalConfer3"></td>
															<td>-</td>
															<td>-</td>
															<td>-</td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="f_wrap">
                                        <div class="f_field">
                                            <div class="ff_title">
                                                <label>대상(건축물)</label>
                                            </div>
                                            <div class="ff_wrap">
                                      
                                                <table class="table reg_table">
                                                    <thead>
                                                        <tr>
                                                            <th rowspan="2">
                                                                	소재지<br />(소유자)
                                                            </th>
                                                            <th rowspan="2">
                                                               	 지번
                                                            </th>
                                                            <th rowspan="2">
                                                               	 지목
                                                            </th>
                                                            <th colspan="2">
                                                                	면적(m<sup>2</sup>)
                                                            </th>
                                                            <th rowspan="2">
                                                                	비고
                                                            </th>
                                                            <th
                                                                rowspan="2"
                                                            >
                                                             <a href="#!" class="btn small03 t4 nohover h30" onclick="addNewTarget();return false;" >추가</a>
                                                            </th>
                                                        </tr>
                                                        <tr>
                                                            <th>
                                                                	편입 전<br />면적
                                                            </th>
                                                            <th>
                                                                	편입<br />면적
                                                            </th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="targetList" >
                                                        <tr>
				                                            <td colSpan="7">
				                                                	주요쟁점에 건축물이 있는 경우
				                                            </td>
				                                        </tr>     
                                                    
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="f_wrap" id='attachFile'>
                                        <div class="f_field">
                                        
                                        
                                            <div class="ff_title">
                                                <label>파일첨부</label>
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03" >
                                                <label><span class="required">1. 적정성 검토서</span></label>
                                                <div id="fileList1" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo1-1" class="file_flex fileInfo1 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel1"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText1-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('1',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('1', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('1');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>                             
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                <label><span class="required">2. 재결 신청서</span></label>
                                                
                                          		 <div id="fileList2" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo2-1" class="file_flex fileInfo2 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel2"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText2-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('2',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('2', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('2');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>                 
                                                  
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03"  >
                                                <label><span class="required" >3. 재결신청 청구서</span></label>
                                                 
                                                <div id="fileList3" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo3-1" class="file_flex fileInfo3 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel3"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText3-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('3',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('3', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('3');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                                
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03"  >
                                                <label><span class="required" >4. 사업계획서</span></label>
                                                 <div id="fileList4" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo4-1" class="file_flex fileInfo4 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel4"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText4-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('4',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('4', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('4');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03" >
                                                <label><span class="required" >5. 사업인정 고지문</span></label >
                                        		 <div id="fileList5" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo5-1" class="file_flex fileInfo5 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel5"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText5-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('5',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('5', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('5');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                <label><span class="required">6. 중토위 의견청취 관련 문서</span></label>
                                                <div id="fileList6" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo6-1" class="file_flex fileInfo6 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel6"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText6-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('6',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('6', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('6');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03" >
                                                <label><span class="required">7.소유자별서류(제시액조서,토지&물건 조서,협위경위서등)</span></label>
                                        		<div id="fileList7" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo7-1" class="file_flex fileInfo7 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel7"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText7-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('7',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('7', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('7');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03"  >
                                                <label><span class="required">8. 사업도면</span></label >
                                                  <div id="fileList8" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo8-1" class="file_flex fileInfo8 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel8"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText8-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('8',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('8', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('8');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>
                                            
                                            
                                            
                                            
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                <label><span class="required">9.협의관계서류(보상계획공고,협의요청서,공시송달문서)</span></label>
                                                  <div id="fileList9" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo9-1" class="file_flex fileInfo9 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel9"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText9-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('9',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('9', this);return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('9');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                <label><span class="required">10. 협의 감정평가서 </span></label>
                                                   <div id="fileList10" class="file_wrap upper" >
                                                
	                                                	<div id="fileInfo10-1" class="file_flex fileInfo10 fileDiv">                                               	
	                                                        <input class="input40 file_name fileLabel10" value="사업시행자" maxlength="50" readonly>
	                                                        <div class="file_btn_wrap">
	                                                            <div style="display: flex">
	                                                                <div id="fileText10-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('10', this);return false;">파일 없음</div>                                                   
	                                                            </div>
	                                                            
	                                                        </div>
	                                                    </div>
	                                                    </div>
	                                                    </div>
	                                             <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                <label><span></span></label>
	                                                      <div id="fileList12" class="file_wrap upper" >
	                                                    
	                                                    <div id="fileInfo12-1" class="file_flex fileInfo12 fileDiv">                                               	
	                                                        <input class="input40 file_name fileLabel12" value="시도지사추천"  maxlength="50" readonly>
	                                                        <div class="file_btn_wrap">
	                                                            <div style="display: flex">
	                                                                <div id="fileText12-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('12', this);return false;">파일 없음</div>                                              
	                                                            </div>
	                                                        </div>
	                                                    </div>
	                                                      </div>
	                                                      
	                                                      </div>
	                                                      
	                                                       
	                                                       
	                                                       
	                                                         <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                			<label><span></span></label>
	                                                      <div id="fileList13" class="file_wrap upper" >
	                                                    <div id="fileInfo13-1" class="file_flex fileInfo13 fileDiv">                                               	
	                                                        <input class="input40 file_name fileLabel13"  value="토지소유자 추천"  maxlength="50" readonly>
	                                                        <div class="file_btn_wrap">
	                                                            <div style="display: flex">
	                                                                <div id="fileText13-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('13', this);return false;">파일 없음</div>                                                          
	                                                            </div>
	                                                        </div>
	                                                    </div>                                         
                                                	</div>
                                                	</div>
                                                	
                                                 
                                            <div class="ff_wrap ff_wrap_inner ff_wrap_inner03">
                                                <label><span >11. 기타</span></label>
                                                    
                                                 <div id="fileList11" class="file_wrap upper" >
                                                
                                                	<div id="fileInfo11-1" class="file_flex fileInfo11 fileDiv">                                               	
                                                        <input class="input40 file_name fileLabel13"  maxlength="50">
                                                        <div class="file_btn_wrap">
                                                            <div style="display: flex">
                                                                <div id="fileText11-1" class="input40 file_btn" style="cursor: pointer" onclick="triggerFileUpload('11',this);return false;">파일 없음</div>
                                                                <button class="btn nohover t4 small" onclick="removeFileTarget('11','1');return false;">
                                                                    <i class="close icon white"></i>
                                                                    	삭제
                                                                </button>
                                                                <button class="btn nohover t4 small" onclick="addNewFileTarget('11');return false;">
                                                                	<i class="pluse icon white"></i>추가
                                                                </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                           
                                                	
                                                </div>   
                                            </div>

                                        </div>
                                    </div>
                                    
                                </div>
                                                                            <div class="ff_wrap">
                                                <p class="cb bold text">
                                                   <span class="needAttache"> * 필수 첨부 항목입니다.</span>
                                                </p>
                                            </div>
                                <div class="mt40 btn_wrap">
                                    <ul class="btns">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/implementer/application.do"
                                                class="btn t1 h50 big"
                                            >취소</a>
                                        </li>
                                        <li>
                                            <button type="button"
                                                class="btn t1 h50 big" id="temporarySaveBtn"
                                                onClick="storage2();return false;">임시저장
                                            </button>
                                            
                                            <button type="button" id="saveBtn"
                                                class="btn t1 h50 big" style="display: none;">저장
                                            </button>
                                        </li>
                                        <li>
                                            <a href="#" download="pdf_sample"
                                                class="btn t1 h50 big"
                                            >${avo.caseNo} 재결접수내용(PDF)</a>
                                        </li>
                                        <li>
                                            <button
                                            type="button"
                                                class="btn h50 big"
                                                onClick="saveDecision();return false;"
                                            >재결접수
                                            </button>
                                        </li>
                                    </ul>
                                </div>
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
      
        <!-- implementer start -->
        <script src="../../js/implementer/content.js"></script>

    	<script src="../../js/implementer/application/signup/file.js"></script>
    	<script src="../../js/implementer/application/signup/content.js"></script>
    	<script src="../../js/implementer/storage.js"></script>
        <script type="text/javascript">

			function storage2(){
				storage();
				document.getElementById("temporarySaveBtn").style.display = "none";
				document.getElementById("saveBtn").style.display = "inline-block";
			}
        
            function triggerFileUpload(position, arg) {
        	console.log("triggerFileUpload 실행");
                const fileForm = document.getElementById('fileForm');
                if(position == "10-2" || position == "10-3"){
                alert()
                	
                	
                	
                	
                	
                }
                const fileDiv = fileForm.querySelector('#fileDiv' + position);
				console.log(fileDiv);
                const fileWrap = arg.closest('.upper');
				//const div = fileWrap.closest('.fileDiv');
				console.log(fileWrap.children);

                console.log("legnth ::" +  fileWrap.children.length);
                
               
                let index = 0;
                for (let i = 0; i < fileWrap.children.length; i++) {
                    if (fileWrap.children[i].querySelector('#' + arg.id) !== null) {
                    	console.log(fileDiv.children[i]);
                    	//fileDiv.children[i].attr('data-position', position);
                        //fileDiv.children[i].attr('data-id', index + 1);
                        fileDiv.querySelectorAll('.fileInput')[i].click();
                    }
                }
                console.log(index);
                
            }
 
        function saveDecision(){
            const fileArr = [];
            // key, value 선언
        
            
        	var allTextLength = document.getElementsByClassName('input40 file_name').length;
        	
        	for(let i=1; i<allTextLength+1; i++){	
        		if($('.fileLabel'+i).val()){ // 1-1, 1-2. 1-3. 2 총 4개를 넣었다?
            	let len =	document.getElementsByClassName('fileLabel'+i).length; // 1일 때  3, 2일 때 1
	            	for(j=1; j<len+1; j++){
	            	    var fileContent = {};
	                    fileContent.key = '';
	                    fileContent.value = '';
	                    
	            		fileContent.key = i;
	            		fileContent.value = $('.fileLabel'+i).val();
	            		fileArr.push(fileContent);
	        			//alert(i+"-"+j+"번째 값 ::"+$('.fileLabel'+i).val()); //value 여기서 key, value값 생성하기
	            	}
        		}
        	}//file 
        		
        	let contextPath = $("#contextPath").val();
        	let url = contextPath+"/api/implementer/decision";
        	console.log(url);
        	
        	console.log("정상작동");  	
        	let msg="재결을 접수하시겠습니까?";
        	
        	const masterId = $('#masterId').val();   	
        	const locationSize = $('#locationSize').val();
        	const groupEstablishedDate = $('#il_date1').val();
        	const decisionReason = $('#decisionReason').val();
        	
         	//도시계획
			//[사업인정]관계
			if (groupEstablishedDate == null || groupEstablishedDate == "") {
        		alert("도시계획 조합설립를 입력해주세요");
        		return false;
        	}
         	
          	 let inputBusinessOperator1 = document.getElementById('inputBusinessOperator').value;
          	 let inputGovernor1 = document.getElementById('inputGovernor').value;
          	 let inputLandowner1 = document.getElementById('inputLandowner').value;
          	 let notReqReason1 =  document.getElementById('notReqReason').value;
          	 
          	 if(inputBusinessOperator1 == ''){
          		 if(notReqReason1 == ''){
 		       		alert("추천요청을 하지 않은 이유를 입력해주세요");
 	                $('#notReqReason1').focus();

 		       		
          			 return false;
          		 }
          	 }
          	 
          	 if(inputGovernor1 == ''){
          		 if(notReqReason1 == ''){
 		       		alert("추천요청을 하지 않은 이유를 입력해주세요");
 	                $('#notReqReason1').focus();

          			 return false;
          		 }
          	 }
          	 
          	 if(inputLandowner1 == ''){
          		 if(notReqReason1 == ''){
 		       		alert("추천요청을 하지 않은 이유를 입력해주세요");
 	                $('#notReqReason1').focus();

          			 return false;
          		 }
          	 }
          	 if(inputBusinessOperator1 != '' && inputGovernor1 != '' && inputLandowner1 && notReqReason1 != ''){
 	       		alert("모두 추천하여 추천미사유 작성이 불가능합니다");
	                $('#notReqReason1').focus();

     			 return false;
          	 }

         	
         	
			let relation = document.getElementsByClassName('relationItem');        	
			
           	const relationArr = [];
           	
       		for (let i=0; i<relation.length; i++) {
      	    	const Relation_Target = {};
      	    	
      	    	let relationTitle = relation[i].children[0].children[0].value;
      	    	let relationContent = relation[i].children[1].children[0].value;
      	    	
      	    	if(relationTitle == null || relationTitle == "") {
      	    		alert("도시계획 관계 제목을 입력해주세요");
      	    		return false;
      	    	}
      	    	
      	    	if(relationContent == null || relationContent == "") {
      	    		alert("도시계획 관계 제목을 입력해주세요");
      	    		return false;
      	    	}
      	    	
      	    	Relation_Target['relationTitle']= relationTitle;
      	    	Relation_Target['relationContent']= relationContent;

    	    	relationArr.push(Relation_Target);
       		}
      
          	//협의날짜
          	let dateItem = document.getElementsByClassName('dateItem');
       
           	const DateArr = [];
        		
       		for (let i=2; i<dateItem.length+2; i++) {
       	    	const ConsultationDateItem = {};
       	    	let consultationDate = $("#il_date"+i).val();
       	    	let consultationDateText = $("#il_date"+i+"_text").val();
       	    	if(consultationDate == null || consultationDate == "") {
       	    		alert("협의 날짜를 입력해주세요");
       	    		return false;
       	    	}
		
       	    	ConsultationDateItem['consultationDate']= consultationDate;   
       	    	ConsultationDateItem['consultationDateText']= consultationDateText;  
       	    	console.log(ConsultationDateItem);
       	    	
       	    	DateArr.push(ConsultationDateItem);
       		}
        		
          	//재결신청사유
         	if (decisionReason == null || decisionReason == "") {
                alert("재결신청사유를 입력해주세요");
                $('#decisionReason').focus();
                return false;
            }  
          	

      
          	
          	
          	
        	

          	
          	
          	//대상(건축물)
        	let targetCount = $('.targetItem').length;
        	
           	const targetArr = [];
           	
           	if(targetCount>0){
           		
        		for ( let i = 0; i < targetCount; i++) {
        			
        			let targetInfo = $(".targetInfo:eq("+i+")").val();
        			let bun1 = $(".bun1:eq("+i+")").val();
        			let bun2 = $(".bun2:eq("+i+")").val();     
        			let areaBeforeTranster = $(".areaBeforeTranster:eq("+i+")").val();
        			let areaAfterTranster = $(".areaAfterTranster:eq("+i+")").val();     			
           			let etc = $(".etc:eq("+i+")").val();
      
        			
        			let sub = new Object();
        			sub['TargetInfo'] = targetInfo;
        			sub['BUN1'] = bun1;
        			sub['BUN2'] = bun2;
        			sub['Area_Before_Transfer'] = areaBeforeTranster;
        			sub['Area_After_Transfer'] = areaAfterTranster;
        			sub['Etc'] = etc;
   				
        			targetArr.push(sub);
        		}            	
           }
           	
           console.log(targetArr);
          	
           let inputBusinessOperator = $('#inputBusinessOperator').val();
           let inputGovernor = $('#inputGovernor').val();
           let inputLandowner = $('#inputLandowner').val();         	
           	
      	   let amountA = $('#amountA').val();
     	   let amountB = $('#amountB').val();
     	   let amountC = $('#amountC').val();
     	   
     	   let landCnt = $('#landCnt').val();
           let landArea = $('#landArea').val();
           let landPrice = $('#landPrice').val();
           let objCnt = $('#objCnt').val();
           let objPrice = $('#objPrice').val();
           let goodwillCnt = $('#goodwillCnt').val();
           let goodwillPrice = $('#goodwillPrice').val();
     	   
       	   amountA=uncomma(amountA);
     	   amountB=uncomma(amountB);
     	   amountC=uncomma(amountC);
   	
     	  landCnt=uncomma(landCnt);
     	 landArea=uncomma(landArea);
     	landPrice=uncomma(landPrice);
     	objCnt=uncomma(objCnt);
     	objPrice=uncomma(objPrice);
     	goodwillCnt=uncomma(goodwillCnt);
     	goodwillPrice=uncomma(goodwillPrice);
     	   console.log("goodwillPrice" + goodwillPrice);

	       	const notReqReason = $('#notReqReason').val();
	       	
	       	var needNoReqReason = "";		// 추천여부 확인하여 사유 입력 활성 or 비활성
	       	if (inputBusinessOperator || inputGovernor || inputLandowner) {
	       		needNoReqReason = 1	
	       	}
	       	
	 /*       	if (needNoReqReason == 1){
		       	if (notReqReason == null || notReqReason == "") {
		       		alert("추천요청을 하지 않은 이유를 입력해주세요");
		       		$('#notReqReason').focus();
		       		return false;
		       	}
	       	} */
     	   
			const data = {
	       			
				"masterID" : masterId,
				"groupEstablishedDate" : groupEstablishedDate,
				"CityPlan" : relationArr,
				"DateArr" : DateArr,
				"decisionReason" : decisionReason,
				"Decision_Target" : targetArr,
				"businessOperator" : inputBusinessOperator,
				"governor" : inputGovernor,
				"landowner" : inputLandowner,
				"amountA" : amountA,
				"amountB" : amountB,
				"amountC" : amountC,
				"landCnt" : landCnt,
				"landArea" : landArea,
				"landPrice" : landPrice,
				"objCnt" : objCnt,
				"objPrice" : objPrice,
				"goodwillCnt" : goodwillCnt,
				"goodwillPrice" : goodwillPrice,
				"notReqReason" : notReqReason
			}
			var csrfToken = $("meta[name='_csrf']").attr("content");
	        var csrfHeader = $("meta[name='_csrf_header']").attr("content");
	        
	        if(confirm("제출하시면 내용 수정이 불가합니다. 제출하시겠습니까?")){
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
    				 alert("등록을 성공했습니다.");
    				goToImplementerList(); 
    				console.log('성공');
    			},
    			error : function(xhr, status, error) {
    				//에러!
    				//alert("code:"+xhr.status);
    			}
    		});
	        }else{
	        	return false;
	        }
       
			 let fileNameInputs = document.getElementsByClassName('file_name');
			
			for (let i=0; i<fileNameInputs.length; i++) {
				//fileNameInputs[i].closest('.file_flex').id.split('-')[1]
			
				if((fileNameInputs[i].value !== '') && (fileNameInputs[i].value !== null)){
					let parent = fileNameInputs[i].closest('.file_flex').id;
					console.log('fileNameInputs', fileNameInputs[i].value)
					console.log(parent);
					let input = document.getElementById('input'+parent.split('fileInfo')[1].split('-')[0]+'-'+(Number(parent.split('-')[1])-1));
					console.log(input);
					input.value = fileNameInputs[i].value;
				}
			}
		
		       let form = $('#fileForm')[0];
		       form.submit(); 
	        	/* let url2 = contextPath+"/api/implementer/decision/file";

		       $.ajax({
	    			url : url2,
	    			type : "POST",
	    			contentType : "application/json; charset=UTF-8",
	    			data : fileArr,
	    			async: false, 
	    			beforeSend : function(xhr){
	    				xhr.setRequestHeader(csrfHeader, csrfToken);
	    			},
	    			success : function(data) {
	    				alert("등록을 성공했습니다.");
	    				goToImplementerList();
	    			},
	    			error : function(xhr, status, error) {
	    				//에러!
	    				//alert("code:"+xhr.status);
	    			}
	    		}); */
        }

		

        $(document).ready(function () {
        			let masterId = document.getElementById('masterId').value;
			
        	if(window.localStorage.getItem('dataList'+masterId) != null){
        		if(confirm("임시저장된 내용이 있습니다. 불러오시겠습니까?")){
        			
        			const dataString1 = window.localStorage.getItem('dataList'+masterId);
                	const dataObj1 = JSON.parse(dataString1);
                	
                	let values = Object.values(dataObj1);
                	console.log(values[17].length);
                	console.log(values[17][0]);
                	console.log(values);
                	document.getElementById("il_date1").value = values[1];
                	document.getElementById("decisionReason").value = values[2];
                	document.getElementById("inputBusinessOperator").value = values[3];
                	document.getElementById("inputGovernor").value = values[4];
                	document.getElementById("inputLandowner").value = values[5];
                	document.getElementById("amountA").value = values[6];
                	document.getElementById("amountB").value = values[7];
                	document.getElementById("amountC").value = values[8];
                	document.getElementById("landCnt").value = values[9];
                	document.getElementById("landArea").value = values[10];
                	document.getElementById("landPrice").value = values[11];
                	document.getElementById("objCnt").value = values[12];
                	document.getElementById("objPrice").value = values[13];
                	document.getElementById("goodwillCnt").value = values[14];
                	document.getElementById("goodwillPrice").value = values[15];
                	document.getElementById("notReqReason").value = values[16];
                	
                	if(values[17].length>1){
                		for(var i=0; i<values[17].length; i++){
                		addNewRelation()
                		//title
                		document.getElementById("relationTitle"+i).value = values[17][i].relationTitle;
                		//content
                		document.getElementById("relationContent"+i).value = values[17][i].relationContent;
                		}
                	}else{
                		addNewRelation()
            			//li태그 추가 기능 필요
            			document.getElementById("relationTitle"+0).value = values[17][0].relationTitle;
                		//content
                		document.getElementById("relationContent"+0).value = values[17][0].relationContent;
            		}
                	
                	if(values[18].length>1){
                		for(var i=0; i<values[18].length; i++){
                			var j = i+2;
                			
                			addNewDate();
                			
                			document.getElementById("il_date"+j).value = values[18][i].consultationDate;
                			document.getElementById("il_date"+j+"_text").value = values[18][i].consultationDateText;
                		}
                	}else{
                		addNewDate();
            			
            			document.getElementById("il_date2").value = values[18][0].consultationDate;
            			document.getElementById("il_date2_text").value = values[18][0].consultationDateText;
            		}
                	
                	if(values[19].length>1){
                		for(var i=0; i<values[19].length; i++){
                			addNewTarget();
                			
                			document.getElementById("targetAddr"+i).value = values[19][i].TargetInfo;
                			document.getElementById("targetMainBun"+i).value = values[19][i].BUN1
                			document.getElementById("targetSubBun"+i).value = values[19][i].BUN2;
                			document.getElementById("targetBefore"+i).value = values[19][i].Area_Before_Transfer;
                			document.getElementById("targetAfter"+i).value = values[19][i].Area_After_Transfer;
                			document.getElementById("targetBigo"+i).value = values[19][i].Etc;
                		}
                	}
                	
                	
        		}else{
        			return false;
        		}
        		
        	}
        	
        	for (let i=1; i<12; i++){
        		let fileInput = document.getElementById('fileInput'+i+'-0');
        		fileInput.dataset.inputPosition = i;
        		fileInput.dataset.inputId = 0;
        	}

        	$(".corporationInput").on("propertychange change paste input", function() {
        		 
        	   let type = $(this).attr("data-type");
        	   let getVal = $(this).val();
        	    
        	   if(getVal.length==0){
        		   
        		   if(type==1){
        			   $('#titleBusinessOperator').text("사업시행자 입력해주세요");
        		   }else if(type==2){
        			   $('#titleGovernor').text("시도지사 추천 입력해주세요");
        		   }else if(type==3){       	
        			   $('#titleLandowner').text("토지소유자추천 입력해주세요");
        		   }
        		   
        	   }else{
        		   
        		   if(type==1){
        			   $('#titleBusinessOperator').text(getVal);
        		   }else if(type==2){
        			   $('#titleGovernor').text(getVal);
        		   }else if(type==3){       	
        			   $('#titleLandowner').text(getVal);
        		   }
        		   
        	   }
        	  
        	   
        	});
        	
        	$("#amountA").click(function(){
        		if(document.getElementById('inputBusinessOperator').value == ""){
        			alert("사업시행자를 입력해주세요.");
         			$('#inputBusinessOperator').focus();
        			return false;
        		}
        	});
        	$("#amountB").click(function(){
        		if(document.getElementById('inputGovernor').value == ""){
        			alert("시도지사 추천을 입력해주세요.");
         			$('#inputGovernor').focus();
        			return false;
        		}
        	});
        	$("#amountC").click(function(){
        		if(document.getElementById('inputLandowner').value == ""){
         			alert("토지소유자 추천을 입력해주세요.");
         			$('#inputLandowner').focus(); 
        			return false;
        		}
        	});
        	
        	
        	$(".amountInput").on("propertychange change paste input", function() {
       		 
        		var count = 0;
        		

             	let inputBusinessOperator1 = document.getElementById('inputBusinessOperator').value;
             	let inputGovernor1 = document.getElementById('inputGovernor').value;
             	let inputLandowner1 = document.getElementById('inputLandowner').value;

    			if (inputBusinessOperator1 != "") count ++;
    	  		if (inputGovernor1 != "") count ++;
    	  		if (inputLandowner1 != "") count ++;
    	  		
    	  		if (count==0) return;
    	  		
         	    let amountA = $('#amountA').val();
         	    console.log(amountA);
         	    let amountB = $('#amountB').val();
         	    console.log(amountB);
         	    let amountC = $('#amountC').val();
         	    console.log(amountC);

      			
         	   amountA=uncomma(amountA);
         	   amountB=uncomma(amountB);
         	   amountC=uncomma(amountC);
         	  
          	   amountA = Number(amountA);
         	   amountB = Number(amountB);
         	   amountC = Number(amountC);
      	  
   			   let totalAmount = amountA+amountB+amountC;
				
   			   //let amountAverage = totalAmount/3; 
   			   let amountAverage = totalAmount/count; 			   
   			   amountAverage =amountAverage.toFixed(0);  
   			   console.log(amountAverage);
   			   
   			   amountAverage=numberWithCommas(amountAverage);
   			   
   			   $('#amountAverage').text(amountAverage);
       	
        	});
        	
        	$(".conferVal").on("propertychange change paste input", function() {
          		 
          	   let landCnt = $('#landCnt').val();
          	   let landArea = $('#landArea').val();
          	   let landPrice = $('#landPrice').val();
          	   
          	   let objCnt = $('#objCnt').val();
        	   let objPrice = $('#objPrice').val();
        	   
        	   let goodwillCnt = $('#goodwillCnt').val();
          	   let goodwillPrice = $('#goodwillPrice').val();
         	   
          	 	landCnt=uncomma(landCnt);
          	 	objCnt=uncomma(objCnt);
          	 	goodwillCnt=uncomma(goodwillCnt);
	          	
          	 	landArea=uncomma(landArea);
	          	
	          	landPrice=uncomma(landPrice);
	          	objPrice=uncomma(objPrice);
	          	goodwillPrice=uncomma(goodwillPrice);
	          	
	          	
	          	landCnt = Number(landCnt);
	          	objCnt = Number(objCnt);
	          	goodwillCnt = Number(goodwillCnt);
	          	
	          	landArea = Number(landArea);
	          	
	          	landPrice = Number(landPrice);
	          	objPrice = Number(objPrice);
	          	goodwillPrice = Number(goodwillPrice);
       	  
   			    let totalCnt = landCnt+objCnt+goodwillCnt;
   			    let totalPrice = landPrice+objPrice+goodwillPrice;
   			   
   			   
   			    totalCnt=numberWithCommas(totalCnt);
   			    landArea=numberWithCommas(landArea);
   			    totalPrice=numberWithCommas(totalPrice);
   			   
   			    $('#totalConfer1').text(totalCnt);
   			    $('#totalConfer2').text(landArea);
   			    $('#totalConfer3').text(totalPrice);
    			   
        	
         	});
        	
        	
        	
        
            //재결접수 버튼을 누를때 파일첨부 input을 순회한다.
            function detectInput() {
                const attachFileDiv = document.getElementById('attachFile');
                for (let i = 1; i < 12; i++) {
                    let attachFile = attachFileDiv.querySelector(
                        '#fileList' + i
                    );
                    let attachFileInputs = attachFile.querySelectorAll('input');
                    for (let j = 0; j < attachFileInputs.length; j++) {
                        if (attachFileInputs[j].value.trim() !== '') {
                            const fileForm =
                                document.getElementById('fileForm');
                            let div = fileForm.querySelectorAll('div')[i - 1];
                            div.children[j].dataset.name =
                                attachFileInputs[j].value;
                        }
                    }
                }
            }
        	
        	 
        	 //파일 용량 체크
            let fileSize = 1024*1024*50;

            $(document).on("change", ".fileInput", function(args){  

                let iSize = 0;
                let total = $(this)[0].files.length;

                for(let i=0; i<total; i++) {
                    iSize += $(this)[0].files[i].size;
                    let ext=fileCheck_doc($(this)[0].files[i].name);
                    if(ext != "ok") {
                        alert(ext+" 파일은 업로드 하실 수 없습니다.");
                        return false;
                    }
                }
				// 파일명이 길 경우 
                let fileName = $(this)[0].files[0].name;
                if(fileName.length > 5){
                	fileName = fileName.substring(0,5) + '...';
                }
                
                console.log("this", $(this)[0]);
                console.log(fileName);
                let inputPosition = $(this)[0].dataset.inputPosition;
                console.log('input Position :::>' +inputPosition );
                let inputId = $(this)[0].dataset.inputId;
                console.log('inputId :::>' +inputId );
                let fullId = inputPosition+"-"+inputId;

                if(iSize > fileSize) {
                    alert("선택한 파일 총용량은 50MB를 초과할 수 없습니다.");
                    return false;
                }
                
                let fileText = document.getElementById('fileText'+inputPosition+'-'+(Number(inputId)+1)); 
                // 10-1, 10-2, 10-3 저장할 때 8-0 + 1 > 8번의 1번째 파일 업로드로 인식하는데
                //10-1, 10-2, 10-3의 경우 이미 생성되어 있기 때문에 문제가 발생
                console.log(fileText);
                fileText.innerText=fileName;
                
            });
            
            
        });
        </script>
    </body>
</html>