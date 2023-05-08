<%@ page import="shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerClaim.jsp" %>

<h1>
    문의내역
</h1>
<div class="" style="border: 1px solid gray" >

    <table class="table">
        <thead class="table-secondary">
        <tr>
            <th scope="col">NO</th>
            <th scope="col">제목</th>
            <th scope="col">등록일</th>
            <th scope="col">상태</th>
        </tr>
        </thead>
        <tbody id="claimListTbody">

        </tbody>
    </table>

</div>

</div>


<script>

    $(document).ready(function() {
        // 세션에서 publisherId 가져오기
        const publisherId = '<%= request.getSession().getAttribute("principal") != null ? ((Publisher) request.getSession().getAttribute("principal")).getId() : 0 %>';

        // publisherId 존재하는 경우에만 API 요청을 보냅니다.
        if (publisherId !== 0) {
            $.ajax({
                url: `http://localhost:8080/api/publishers/questions?page=0&size=200&publisherId=` + publisherId,
                type: 'GET',
            })
                .done((res) => {
                    populateTable(res.data.content);
                })
                .fail((err) => {
                    alert(err.responseJSON.msg);
                })
        }
    })

    function populateTable(questions) {
        var tbody = $('#claimListTbody');
        tbody.empty();
        for (var i = 0; i < questions.length; i++) {
            var question = questions[i];
            var tr = $('<tr>');
            tr.append('<th scope="row">' + (i + 1) + '</th>');

            if (question.status == 'ACCEPT') {
                tr.append('<td><a href="/publishers/claims/detail/' + question.id + '">' + question.title + '</a></td>');
            } else{
                tr.append('<td>' + question.title + '</td>');
            }

            tr.append('<td>' + question.writeTime + '</td>');
            tr.append('<td>' + getStatusInKorean(question.status) + '</td>');

            tbody.append(tr);
        }
    }

    // 상태값을 한글로 치환
    function getStatusInKorean(status) {
        switch (status) {
            case 'WAIT':
                return '답변미완료';
            case 'ACCEPT':
                return '답변완료';
            default:
                return status;
        }
    }


</script>
<%@ include file="../../layout/footer.jsp" %>