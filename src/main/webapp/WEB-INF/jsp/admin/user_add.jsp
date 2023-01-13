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
					<form name="admin_user_add" method="post" action ="<c:url value='/admin/user.do'/>">
						<input style="display:none" type="text" id="mode" name="mode" value="${mode}" class="input t1" />

						<div class="cs_title">
							<h4 class="fl title t1 bold cb s1 bullet">회원정보</h4>
						</div>
						<div class="form t1">
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_id">아이디</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_id" name="userId" class="input t1" value="${adminVO.userId }"
										<c:if test="${not empty adminVO.userId}">
											readonly
										</c:if>
										/>
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_password">패스워드</label>
									</div>
									<div class="ff_wrap">
										<input type="password" id="aua_password" name="password" class="input t1" value="" required/>
									</div>
								</div>
							</div>
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_name">이름</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_name" name="userName" class="input t1" value="${adminVO.userName }" />
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_org">소속</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_org" name="dept" class="input t1" value="${adminVO.dept }"/>
									</div>
								</div>
							</div>
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_email">이메일</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_email" name="userEmail" class="input t1" value="${adminVO.userEmail }"/>
									</div>
								</div>
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_call">연락처</label>
									</div>
									<div class="ff_wrap">
										<input type="text" id="aua_call" name="mobile" class="input t1" value="${adminVO.mobile }"/>
									</div>
								</div>
							</div>
							<div class="f_wrap">
								<div class="f_field div2">
									<div class="ff_title">
										<label for="aua_level">권한</label>
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
												${result.groupName }</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="mt30 btn_wrap">
							<ul class="full">
								<li class="fl"><a href="<c:url value='/admin/user.do'/>" class="btn ico list">목록</a></li>
								<li class="fr"><button type="submit" class="btn t2 ico write">등록</button></li>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<hr>
</div>

</body>
<script>
$(document).ready(function() {
	var url = new URL(window.location.href);
	var urlParams = url.searchParams;
	if(urlParams.get('mode')){
		document.getElementById('mode').value='moduser';
	}
});



</script>
</html>
