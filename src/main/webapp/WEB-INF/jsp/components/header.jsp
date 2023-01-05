<%@	page contentType="text/html;charset=utf-8" language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<input type="hidden" name="contextPath" id="contextPath" value="${pageContext.request.contextPath}">	
	
<header id="header">
    <div class="wrap center">
        <div class="h_logo">
            <h1><a href="${pageContext.request.contextPath}/" title="재결정보지원센터"><span class="blind">재결정보지원센터</span></a></h1>
        </div>
        <nav class="h_menu">
            <h2 class="blind">MENU</h2>
            <div class="hm_list">
                <ul class="gnb">
                    <li>
                        <a href="${pageContext.request.contextPath}/land/compensation.do">토지수용제도안내</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/land/compensation.do">토지수용제도 및 보상금안내</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/land/acceptanceDecision.do">수용재결 안내</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/land/procedure.do" >수용재결 절차안내</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/land/committee.do">서울지방토지 수용위원회</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/land/relevantLaws.do" >관련 법령</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/implementer/application.do">사업시행자</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/implementer/application.do">LTIS입력정보확인</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/implementer/opinion.do">재결의견작성</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/cities/announcement.do">시·군·구</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/cities/announcement.do">열람공고</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/appraiser/application.do">감정평가사</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/appraiser/application.do">재결신청</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/appraiser/agenda.do">심의안건 정보</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/decision/agenda.do">재결관</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/decision/announcement.do">열람공고</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/decision/schedule.do">심의 일정</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/decision/agenda.do">심의안건 정보</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/decision/register.do">심의안건 등록</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/deliberate/agenda.do">심의위원</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/deliberate/agenda.do">심의안건 정보</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/board/notice.do">게시판</a>
                        <ul class="lnb">
                            <li>
                                <a href="${pageContext.request.contextPath}/board/notice.do">공지사항</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/board/inquiry.do">묻고답하기</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/board/inquiryLaw.do">법률질의</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="hm_top">
                <h2 class="blind">TOPMENU</h2>
                <ul>
                    <li>
                    
                        <a href="#login"><span>로그인</span></a>
                    
					
                    </li>
                    <li>
                        <a
                            href="#"
                            onclick="openUserReg();return false;"
                            ><span>회원가입</span></a
                        >
                    </li>
                </ul>
            </div>
            
            <div class="hm_all">
                <button type="button" class="hma_btn">
                    <i></i><span class="blind">전체메뉴</span>
                </button>
                <div class="hma_wrap">
                    <ul class="center">
                        <li>
                            <strong>
                                <span>토지수용제도 안내</span>
                                <a href="/land/compensation.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
                   					<a href="/land/compensation.do">토지수용제도 및 보상금안내</a>
                                </li>
                                <li>
                             		<a href="/land/acceptanceDecision.do">수용재결 안내</a>
                                </li>
                                <li>
                       				<a href="/land/procedure.do" >수용재결 절차안내</a>
                                </li>
                                <li>
                                     <a href="/land/committee.do">서울지방토지 수용위원회</a>
                                </li>
                                <li>
									 <a href="/land/relevantLaws.do" >관련 법령</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong>
                                <span>사업시행자</span>
                                <a href="/implementer/application.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
									<a href="/implementer/application.do">재결신청</a>
                                </li>
                                <li>
                					<a href="/implementer/opinion.do">재결의견작성</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong>
                                <span>시·군·구</span>
                                <a href="/cities/announcement.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
                          			<a href="/cities/announcement.do">열람공고</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong>
                                <span>감정평가사</span>
                                <a href="/appraiser/application.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
                                    <a href="/appraiser/application.do">재결신청</a>
                                </li>
                                <li>
                                    <a href="/appraiser/agenda.do">심의안건 정보</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong>
                                <span>재결관</span>
                                <a href="/decision/agenda.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
                    				 <a href="/decision/announcement.do">열람공고</a>
                                </li>
                                <li>
                                  <a href="/decision/schedule.do">심의 일정</a>
                                </li>
                                <li>
                        		  <a href="/decision/agenda.do">심의안건 정보</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong>
                                <span>심의 위원</span>
                                <a href="/deliberate/agenda.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
                             		 <a href="/deliberate/agenda.do">심의안건 정보</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <strong>
                                <span>게시판</span>
                                <a href="/board/notice.do"><span class="blind">바로가기</span></a>
                            </strong>
                            <ul>
                                <li>
                             		 <a href="/board/notice.do">공지사항</a>
                                </li>
                                <li>
                              		<a href="/board/inquiry.do">묻고답하기</a>
                                </li>
                                <li>
                          			 <a href="/board/inquiryLaw.do">법률질의</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>

      