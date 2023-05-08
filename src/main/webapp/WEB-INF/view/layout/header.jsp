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


<div style="text-align: center;">
    <img src="/images/readme_long.png" style="max-width: 100%;">
</div>


<div class="p-3" >


<c:choose>
    <c:when test="${userRole eq 'publisher'}">
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <a href="/publishers/books" class="btn btn-outline-primary">도서관리</a>
            <a href="/publishers/reviews" class="btn btn-outline-primary">리뷰관리</a>
            <a href="/publishers/claims" class="btn btn-outline-primary">문의내역</a>
        </div>
    </c:when>
    <c:when test="${userRole eq 'admin'}">
        <div class="btn-group" role="group" aria-label="Basic outlined example">
            <a href="/admins/userManage" class="btn btn-outline-primary">유저관리</a>
            <a href="/admins/publisherList" class="btn btn-outline-primary">출판사관리</a>
            <a href="/admins/books" class="btn btn-outline-primary">도서관리</a>
            <a href="/admins/reviews" class="btn btn-outline-primary">리뷰관리</a>
            <a href="/admins/claims" class="btn btn-outline-primary">문의내역</a>
        </div>
    </c:when>
</c:choose>

