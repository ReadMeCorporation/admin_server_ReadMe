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


<div style="border: 1px solid red; text-align: center;">
    <img src="/images/readme_long.png" style="max-width: 100%;">
</div>


<div class="p-3" style="border: 1px solid green" >
     출판사 도서관리
    <div class="btn-group" role="group" aria-label="Basic outlined example">
        <a href="/publishers/books" class="btn btn-outline-primary">전체</a>
        <a href="/publishers/books/saveForm" class="btn btn-outline-primary">도서 등록</a>
        <a href="/publishers/books/Stay" class="btn btn-outline-primary">도서 대기</a>
    </div>
    <br>
    어드민 도서관리
    <div class="btn-group" role="group" aria-label="Basic outlined example">
        <a href="/admins/books" class="btn btn-outline-primary">전체</a>
        <a href="#" class="btn btn-outline-primary">신규승인</a>
        <a href="#" class="btn btn-outline-primary">수정/삭제</a>
    </div>