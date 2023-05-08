<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerClaim.jsp" %>

<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

<h1>문의내용</h1>
    <div>
        <div class="mb-3 mt-3" >
            <textarea class="form-control" id="question" rows="5" readonly></textarea>
        </div>
    </div>

<h1>답변내용</h1>
    <div>
        <div class="mb-3 mt-3" >
            <textarea class="form-control" id="answer" rows="5" readonly></textarea>
        </div>

    </div>

</div>

</div>

<script>
    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/answers/?page=0&size=200`,
            type: 'GET',
        })
            .done((res) => {
                populateTable(res.data.content);
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    })

    function populateTable(answers) {
        for (var i = 0; i < answers.length; i++) {
            var answer = answers[i];
            if (answer.question.id == ${id}){
                console.log('id = ${id}')
                $('#question').val(answer.question.content);
                $('#answer').val(answer.content);
            }
        }
    }

</script>
<%@ include file="../../layout/footer.jsp" %>