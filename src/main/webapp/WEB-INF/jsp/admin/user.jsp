<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

	<div id="contents" class="c_sub">
		<div class="wrap">
			<div class="cs_hero">
				<h2>통합 관리</h2>
			</div>
			<div class="cs_navi">
				<ul>
					<li><a href="/system/main.do"><span class="blind">HOME</span></a></li>
					<li><a href="/admin/user.do">통합 관리</a></li>
					<li>
						<div class="csn_menu">
							<button type="button" class="csnm_btn">회원관리</button>
							<div class="csnm_wrap">
								<ul>
									<li class="on"><a href="<c:url value='/admin/user.do'/>">회원관리</a></li>
									<li><a href="<c:url value='/admin/role.do'/>">회원권한관리</a></li>
									<li><a href="<c:url value='/admin/menu.do'/>">메뉴권한관리</a></li>
									<li><a href="<c:url value='/admin/panel.do'/>">재결관 자문단 현황관리</a></li>
									<li><a href="<c:url value='/admin/account.do'/>">재결관 계정관리</a></li>
									<li><a href="<c:url value='/admin/law.do'/>">관련 법령</a></li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="cs_wrap">
				<div class="cs_head">
					<h3 class="title bold cb">회원관리</h3>
				</div>
				<div class="cs_body">
					<div class="cs_search">
						<form id= "admin_user" name="admin_user" action="<c:url value='/admin/user.do'/>">
						<input type="hidden" id="pageNo" name="pageNo" value="${adminVO.pageIndex}"/>
							<div class="form t1">
								<div class="f_wrap">
									<div class="f_field">
										<div class="ff_title">
											<label for="au_name">이름</label>
										</div>
										<div class="ff_wrap">
											<span class="ff_group w170">
												<input type="text" id="au_name" name="userName" class="input t1" value="${adminVO.userName}"required />
											</span>
											<span class="ff_group">
												<button type="button" id="au_submit" name="au_submit" class="btn t1 small ico search" onclick="search()" >검색</button>
											</span>
										</div>
									</div>
								</div>
								<div class="f_wrap">
									<div class="f_field div3">
										<div class="ff_title">
											<label for="au_org">소속</label>
										</div>
										<div class="ff_wrap">
											<input type="text" id="au_org" name="dept" class="input t1" value="${adminVO.dept}"/>
										</div>
									</div>
									<div class="f_field div3">
										<div class="ff_title">
											<label for="au_email">이메일</label>
										</div>
										<div class="ff_wrap">
											<input type="text" id="au_email" name="userEmail" class="input t1" value="${adminVO.userEmail}"/>
										</div>
									</div>
									<div class="f_field div3">
										<div class="ff_title">
											<label for="au_level">권한구분</label>
										</div>
										<div class="ff_wrap">
											<select name="groupCode" id="au_level" class="select t1" required>
												<c:forEach var="result" items="${authList}" varStatus="status">
													<option
														value="${result.groupCode }"
														<c:if test="${result.groupCode eq adminVO.groupCode }">
															selected
														</c:if>
													>
													${result.groupName }
													</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="cs_title">
						<h4 class="fl title t1 bold cb s1 bullet">회원 (${paging.totalCount}명)</h4>
						<!-- <div class="cs_option">
							<button type="button" class="btn t2 small ico download" onclick="excelDownload();">리스트 다운로드</button>
						</div> -->
					</div>
					<div class="c_table">
						<table>
							<caption>회원 목록</caption>
							<thead>
								<tr>
									<th>순번</th>
									<th>아이디</th>
									<th>이름</th>
									<th>소속</th>
									<th>이메일</th>
									<th>연락처</th>
									<th>권한</th>
									<th>옵션</th>
								</tr>
							</thead>
							<tbody>
								<!-- loop S -->
								<c:set var ="i" value="${(adminVO.pageIndex - 1) * 10}"/>
								<c:forEach var="result" items="${resultList}" varStatus="status">
									<c:set var ="i" value="${i+1}"/>
									<tr>
										<th>
											<strong>${i}</strong>
										</th>
										<td>
											<strong>아이디</strong>
											<span>${result.userId }</span>
										</td>
										<td>
											<strong>이름</strong>
											<span>${result.userName }</span>
										</td>
										<td class="left">
											<strong>소속</strong>
											<span>${result.dept }</span>
										</td>
										<td>
											<strong>이메일</strong>
											<span>${result.userEmail }</span>
										</td>
										<td>
											<strong>연락처</strong>
											<span>${result.mobile }</span>
										</td>
										<td>
											<strong>권한</strong>
											<span>${result.groupName }</span>
										</td>
										<td>
											<strong>옵션</strong>
											<span><a href="<c:url value='/admin/user_add.do'/>?mode=mod&userId=${result.userId}" class="btn tiny">수정</a> <button type="button" class="btn tiny t1" onclick="deluser('${result.userId}')">삭제</button></span>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="btn_wrap">
						<a href="<c:url value='/admin/user_add.do'/>" class="fr btn t1 ico plus">회원추가</a>
					</div>
					
					<%-- <jsp:include page="/WEB-INF/views/common/paging2.jsp" flush="true">
		                    <jsp:param name="firstPageNo" value="${paging.firstPageNo}"/>
		                    <jsp:param name="prevPageNo" value="${paging.prevPageNo}"/>
		                    <jsp:param name="startPageNo" value="${paging.startPageNo}"/>
		                    <jsp:param name="pageNo" value="${paging.pageNo}"/>
		                    <jsp:param name="endPageNo" value="${paging.endPageNo}"/>
		                    <jsp:param name="nextPageNo" value="${paging.nextPageNo}"/>
		                    <jsp:param name="finalPageNo" value="${paging.finalPageNo}"/>
		                </jsp:include> --%>
		                
		                
					<%-- <div class="paging">
						<div class="p_wrap">
							<div id="p_prev" class="p_arrow prev">
								<a href="javascript:paging(${paginationInfo.currentPageNo-1})"><i>&lt;</i><span class="blind">이전</span></a>
							</div>
							<div class="p_btn">
								<ul class="pagination">
						       		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="paging" />
								</ul>
							</div>

							<div id="p_next" class="p_arrow next">
								<a href="javascript:paging(${paginationInfo.currentPageNo+1})"><span class="blind">다음</span><i>&gt;</i></a>
							</div>
						</div>
					</div> --%>
				</div>
			</div>
		</div>
	</div>
	<hr>
</div>
<script>
	function excelDownload(){
		document.getElementById('admin_user').method = "post";
		document.getElementById('admin_user').action = "<c:url value='/admin/excelDownload.do'/>";
		document.admin_user.submit();
	}
	function search(){
		document.getElementById('admin_user').method = "get";
		document.getElementById('admin_user').action = "<c:url value='/admin/user.do'/>";
		document.admin_user.submit();
	}
	/* pagination 페이지 링크 function */
	function paging(pageNo){

		//페이지 끝인지 체크
		if(pageNo == 0){
			pageNo = pageNo + 1;
		}else if (pageNo == ${paginationInfo.totalPageCount}+1){
			pageNo = pageNo - 1;
		}

		var url = new URL(window.location.href);
		var urlParams = url.searchParams;

		//TODO 검색 파라미터 추가

		location.href = "<c:url value='/admin/user.do'/>?pageIndex="+pageNo;
	}

	function deluser(userId){

		if(!confirm('정말 삭제하시겠습니까?')){
			return;
		}

		var form = document.createElement('form');
	    form.setAttribute('method', 'post'); //POST 메서드 적용
	    form.setAttribute('action', '<c:url value="/admin/user.do"/>');	// 데이터를 전송할 url
	    document.charset = "utf-8";


	    var hiddenField = document.createElement('input');
	    hiddenField.setAttribute('type', 'hidden'); //값 입력
	    hiddenField.setAttribute('name', 'mode');
	    hiddenField.setAttribute('value', 'deluser');
	    form.appendChild(hiddenField);

	    var hiddenField = document.createElement('input');
	    hiddenField.setAttribute('type', 'hidden'); //값 입력
	    hiddenField.setAttribute('name', 'userId');
	    hiddenField.setAttribute('value', userId);
	    form.appendChild(hiddenField);

	    document.body.appendChild(form);
	    form.submit();	// 전송
	}

	function fn_goPage(pageNo) {
        $('#pageNo').val(pageNo);

        $("#admin_user").attr("action", "<c:url value='/admin/user.do'/>");
        $("#admin_user").submit();
    }


</script>
</body>
</html>
