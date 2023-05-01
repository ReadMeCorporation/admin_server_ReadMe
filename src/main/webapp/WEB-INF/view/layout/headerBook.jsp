<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<br>

<c:choose>
    <c:when test="${userRole eq 'publisher'}">
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <a href="/publishers/books" class="btn btn-outline-primary">전체</a>
            <a href="/publishers/books/saveForm" class="btn btn-outline-primary">도서 등록</a>
            <a href="/publishers/books/stay" class="btn btn-outline-primary">도서 대기</a>

        </div>
    </c:when>
    <c:when test="${userRole eq 'admin'}">
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <a href="/admins/books" class="btn btn-outline-primary">전체</a>
            <a href="/admins/books/saveList" class="btn btn-outline-primary">신규승인</a>
            <a href="/admins/books/bookUpdateAndDeleteList" class="btn btn-outline-primary">수정/삭제</a>
        </div>
    </c:when>
</c:choose>