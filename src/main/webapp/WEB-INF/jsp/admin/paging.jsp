<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="paging">
    <div class="p_wrap">
        <div class="p_arrow start">
            <a href="#"><i></i><span class="blind">처음</span></a>
        </div>
        <div class="p_arrow prev">
            <a href="#"><i></i><span class="blind">이전</span></a>
        </div>
        <div class="p_btn">
            <c:if test="${0 eq paging.totalCount}">
                <a href="javascript:fn_goPage(1)" class="on">${1}</a>
            </c:if>
            <c:if test="${0 < paging.pageCnt}">
                <c:forEach var="i" begin="0" end="${paging.endPage}" step="1">
                    <c:choose>
                        <c:when test="${i eq paging.page}"><a href="#" class="on">${i}</a></c:when>
                        <c:otherwise><a href="#">${i}</a></c:otherwise>
                    </c:choose>
                </c:forEach>
            </c:if>
        </div>
        <div class="p_arrow next">
            <a href="#"><span class="blind">다음</span><i></i></a>
        </div>
        <div class="p_arrow end">
            <a href="#"><span class="blind">끝</span><i></i></a>
        </div>
    </div>
</div>
