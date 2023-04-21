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
        <div class="p-3" style=" width: 500px">

            <div class="mb-4" style="text-align: center;">
                <img src="/images/readme_long.png" style="width: 350px;">
            </div>

            <div class="" style="">
                <form action="/publishers/join" method="post">
                    <div class="form-group pb-1 mb-3">
                        <input type="email" class="form-control form-control" placeholder="이메일을 입력해주세요" name="username" id="username" value="test@nate.com" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="올바른 이메일 주소 형식을 입력해주세요.">
                    </div>

                    <div class="form-group pb-1 mb-3">
                        <input type="password" class="form-control form-control" placeholder="비밀번호를 입력해주세요" name="password" id="password" value="1234">
                    </div>

                    <div class="form-group pb-1 mb-3">
                        <input type="text" class="form-control form-control" placeholder="사업자 번호를 입력해주세요" name="businessNumber" id="businessNumber" value="123456">
                    </div>

                    <div class="form-group pb-1 mb-3">
                        <input type="text" class="form-control form-control" placeholder="사업자 명을 입력해주세요" name="businessName" id="businessName" value="그린컴퓨터">
                    </div>

                    <div class="d-grid gap-2 mb-5">
                        <button class="btn btn-dark" type="button" onclick="submitForm()">회원 가입</button>
                    </div>

                </form>
                    <div style="text-align: center">
                        <a href="/publishers/loginForm"> 이미 회원이신가요? </a>

                    </div>

            </div>
        </div>
    </div>
</div>

</body>

<script>
    function submitForm() {
        if (confirm("회원가입을 진행하시겠습니까?")) {
            document.querySelector("form").submit();
        }
    }
</script>

</html>