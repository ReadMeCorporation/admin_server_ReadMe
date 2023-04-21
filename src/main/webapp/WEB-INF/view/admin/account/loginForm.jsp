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

            <h3> 어드민 로그인 페이지 </h3>

            <div class="" >
                <form action="/admins/login" method="post">
                    <div class="form-group pb-1 mb-3" >
                        <input type="text" class="form-control form-control" placeholder="이메일을 입력해주세요" name="username" id="username" value="admin@readme.com">
                    </div>

                    <div class="form-group pb-1 mb-3">
                        <input type="password" class="form-control form-control" placeholder="비밀번호를 입력해주세요" name="password" id="password" value="1234">
                    </div>

                    <div class="d-grid gap-2 mb-5">
                        <button class="btn btn-dark" type="submit">로그인</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>