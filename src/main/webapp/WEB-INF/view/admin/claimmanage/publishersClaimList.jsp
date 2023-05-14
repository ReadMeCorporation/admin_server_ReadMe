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
            <th scope="col">닉네임</th>
            <th scope="col">등록일</th>
            <th scope="col">답변일</th>
            <th scope="col">상태</th>
            <th scope="col"> </th>
        </tr>
        </thead>
        <tbody id="claimListTbody">

        </tbody>
    </table>

</div>

<script>

    $(document).ready(function() {


            $.ajax({
                url: `http://localhost:8080/api/questions?page=0&size=200`,
                type: 'GET',
                dataType: 'json',
            })
                .done((res) => {
                    populateTable(res.data.content);
                })
                .fail((err) => {
                    alert(err.responseJSON.msg);
                })
    })


    function populateTable(questions) {
        var num =0;
        var tbody = $('#claimListTbody');
        tbody.empty();
        for (var i = 0; i < questions.length; i++) {
            var question = questions[i];
            var tr = $('<tr>');
            if (question.role == 'PUBLISHER'){
                num++;
            tr.append('<th scope="row">' + num + '</th>');
                tr.append('<td>' + question.title + '</td>');
                    tr.append('<td>' + question.publisher.businessName + '</td>');

                tr.append('<td>' + question.createdDate + '</td>');
                if (question.modifiedDate == '2021-01-01T00:01'){
                    tr.append('<td> - </td>');
                } else {
                    tr.append('<td>' + question.modifiedDate + '</td>');
                }
                tr.append('<td>' + getStatusInKorean(question.status) + '</td>');

                if (question.status == 'ACCEPT'){
                    tr.append(`
                        <td>
                            <button type="button" class="btn btn-secondary" disabled>답변</button>
                        </td>
                    `);
                } else{
                    tr.append(`
                        <td>
                            <a href="/admins/claims/saveForm/`+ question.id + `"><button type="button" class="btn btn-secondary">답변</button></a>
                        </td>
                    `);
                }
            }


            tbody.append(tr);
        }
    }


    // 상태값을 한글로 치환
    function getStatusInKorean(status) {
        switch (status) {
            case 'ACTIVE':
                return '-';
            case 'DELETE':
                return '-';
            case 'WAIT':
                return '-';
            case 'ACCEPT':
                return '답변완료';
            default:
                return status;
        }
    }


</script>

<%@ include file="../../layout/footer.jsp" %>