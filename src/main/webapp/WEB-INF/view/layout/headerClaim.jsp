<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<br>
<c:choose>
    <c:when test="${userRole eq 'publisher'}">
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <a href="/publishers/claims" class="btn btn-outline-primary">전체</a>
            <a href="/publishers/claims/saveForm" class="btn btn-outline-primary">문의하기</a>

        </div>
    </c:when>
    <c:when test="${userRole eq 'admin'}">
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <a href="/admins/claims" class="btn btn-outline-primary">전체</a>
            <a href="/admins/claims/publishers" class="btn btn-outline-primary">출판사</a>
            <a href="/admins/claims/users" class="btn btn-outline-primary">유저</a>
        </div>
    </c:when>
</c:choose>



