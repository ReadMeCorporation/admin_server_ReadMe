<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerClaim.jsp" %>

<div class="mx-auto" style="width: 1000px">
    <h1>
        문의내용
    </h1>

    <div>
        <div class="form-group pb-1">
            <div class="input-group mb-3">
                <span class="input-group-text">문의 제목</span>
                <input type="text" class="form-control form-control" name="title" id="title" readonly>

                <span class="input-group-text">닉네임</span>
                <input type="text" class="form-control form-control" name="username" id="username" readonly >
<%--                <input type="text" class="form-control" id="username" readonly>--%>
            </div>
        </div>
        <div class="mb-3 mt-3" >
            <textarea class="form-control" id="question" rows="5" readonly>

            </textarea>
        </div>


</div>
<h1>
    답변내용
</h1>

        <div class="mb-3 mt-3" >
            <textarea class="form-control" id="answer" rows="5" ></textarea>
        </div>

        <div class="d-flex justify-content-center">
            <button onclick="save()" type="button" class="btn btn-primary">등록</button>
        </div>
    </div>

</div>
</div>

<script>
    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/questions/`+${id} +`?page=0&size=200` ,
            type: 'GET',
        })
            .done((res) => {
                populateTable(res.data);
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    });

    function populateTable(question) {
        $('#title').val(question.title);
        $('#question').val(question.content);
        if (question.user!= null) {
            $('#username').val(question.user.username);
        }else{
            $('#username').val(question.publisher.businessName);
        }

        questionId = question.id;
    }

    function save() {
        // FormData 객체 생성
        var formData = new FormData();

        // input 요소에서 값을 가져와서 FormData 객체에 추가
        formData.append('content', $('#answer').val());
        formData.append('questionId', questionId);

        $.ajax({
            type: 'post',
            url: '/answer',
            data: formData,
            contentType: false,
            processData: false,
            dataType: "json"
        }).done((res) => { // 20X 일때
            alert(res.msg);
            location.href = "/admins/claims";
        }).fail((err) => { // 40X, 50X 일때
            alert(err.responseJSON.msg);
        });
    }


</script>

<%@ include file="../../layout/footer.jsp" %>