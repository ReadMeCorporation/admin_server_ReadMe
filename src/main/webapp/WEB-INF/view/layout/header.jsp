<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>Read Me</title>

</head>
<body>

<link href="/data/style.css" rel="stylesheet">
<%--<div style="text-align: center;">--%>
<%--    <img src="/images/readme_long.png" style="max-width: 100%;">--%>
<%--</div>--%>


<%--<div class="p-3" >--%>

<c:choose>
<c:when test="${userRole eq 'publisher'}">
<nav class="nav mx-3 align-items-center nav-fill" style="flex-wrap: nowrap; gap: 200px;">
    <img class="d-flex" src="/images/readme_long.png">
    <div class="d-flex">
        <a href="/publishers/books" class="my-nav-list nav-link" >
            도서관리
        </a>
        <a href="/publishers/reviews" class="my-nav-list nav-link ">
            리뷰관리
        </a>
        <a href="/publishers/claims" class="my-nav-list nav-link ">
            문의내역
        </a>
    </div>
</nav>
</c:when>
<c:when test="${userRole eq 'admin'}">
<nav class="nav mx-3 align-items-center nav-fill" style="flex-wrap: nowrap; gap: 200px;">
    <img class="d-flex" src="/images/readme_long.png">
    <div class="d-flex">
        <a href="/admins/userManage" class="my-nav-list nav-link active">
            유저관리
        </a>
        <a href="/admins/publisherList" class="my-nav-list nav-link" >
            출판사관리
        </a>
        <a href="/admins/books" class="my-nav-list nav-link" >
            도서관리
        </a>
        <a href="/admins/reviews" class="my-nav-list nav-link ">
            리뷰관리
        </a>
        <a href="/admins/claims" class="my-nav-list nav-link ">
            문의내역
        </a>
        <a href="/admins/notices" class="my-nav-list nav-link"> <!-- href 추가-->
            공지사항관리
        </a>
        <a href="/admins/banners" class="my-nav-list nav-link"> <!-- href 추가-->
            배너관리
        </a>
    </div>
</nav>

</c:when>
</c:choose>

<%--<c:choose>--%>
<%--    <c:when test="${userRole eq 'publisher'}">--%>
<%--        <div class="btn-group" role="group" aria-label="Basic outlined example">--%>
<%--            <a href="/publishers/books" class="btn btn-outline-primary">도서관리</a>--%>
<%--            <a href="/publishers/reviews" class="btn btn-outline-primary">리뷰관리</a>--%>
<%--            <a href="/publishers/claims" class="btn btn-outline-primary">문의내역</a>--%>
<%--        </div>--%>
<%--    </c:when>--%>
<%--    <c:when test="${userRole eq 'admin'}">--%>
<%--        <div class="btn-group" role="group" aria-label="Basic outlined example">--%>
<%--            <a href="/admins/userManage" class="btn btn-outline-primary">유저관리</a>--%>
<%--            <a href="/admins/publisherList" class="btn btn-outline-primary">출판사관리</a>--%>
<%--            <a href="/admins/books" class="btn btn-outline-primary">도서관리</a>--%>
<%--            <a href="/admins/reviews" class="btn btn-outline-primary">리뷰관리</a>--%>
<%--            <a href="/admins/claims" class="btn btn-outline-primary">문의내역</a>--%>
<%--            <a href="/admins/notices" class="btn btn-outline-primary">공지사항관리</a>--%>
<%--            <a href="/admins/banners" class="btn btn-outline-primary">배너관리</a>--%>
<%--        </div>--%>
<%--    </c:when>--%>
<%--</c:choose>--%>

<!-- </div> -->
<div class="mx-3 p-3" >