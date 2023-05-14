<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

    <title>ReadMe</title>
</head>
<body>

<div class="my-container my-5 " >
    <div class="row justify-content-center" >
        <!-- col-md => col-lg 변환 : div width 증가 -->
        <div class="p-3" style="width: 500px">

            <div class="mb-4" style="border: 1px  red; text-align: center;">
                <img src="/images/readme_long.png" style="width: 350px;">
            </div>

            <div class="" style="border: 1px  mediumturquoise">
                <form action="/publishers/login" method="post">
                    <div class="form-group pb-1 mb-3" >
                        <input type="text" class="form-control form-control" placeholder="이메일을 입력해주세요" name="username" id="username"  pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="올바른 이메일 주소 형식을 입력해주세요.">
                    </div>

                    <div class="form-group pb-1 mb-3">
                        <input type="password" class="form-control form-control" placeholder="비밀번호를 입력해주세요" name="password" id="password" >
                    </div>

                    <div class="d-grid gap-2 mb-5">
                        <button class="btn btn-dark" type="submit">로그인</button>
                    </div>

                </form>
                <div style="text-align: center">
                    <a href="/publishers/joinForm"> 아직 회원이 아니신가요? </a>

                </div>

                <!-- "회원가입 신청이 완료되었습니다" 메시지 출력 -->
                <% if(request.getAttribute("message") != null) { %>
                    <div class="alert alert-success" role="alert">
                        <%= request.getAttribute("message") %>
                    </div>
                <% } %>

            </div>
        </div>
    </div>
</div>



</body>
</html>