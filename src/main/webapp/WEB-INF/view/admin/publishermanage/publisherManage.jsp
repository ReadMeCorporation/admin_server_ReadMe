<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerPublisher.jsp" %>

<h1>
    출판사관리
</h1>

<div class="" style="border: 1px solid gray" >

    <table class="table">
        <thead class="table-secondary">
        <tr>
            <th scope="col">NO</th>
            <th scope="col">출판사 이메일</th>
            <th scope="col">출판사명</th>
            <th scope="col">사업자번호</th>
            <th scope="col">가입일</th>
            <th scope="col">상태</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>

</div>

</div>

<script>
    $(document).ready(function() {
        $.ajax({
            url: 'http://localhost:8080/api/publishers/request/',
            type: 'GET',
            dataType: 'json',
        })
            .done((res) => {
                populateTable(res.content); // 'content' 속성을 사용하도록 수정
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    });

    function populateTable(publishers) {
        var tbody = $('table tbody');
        tbody.empty();
        for (var i = 0; i < publishers.length; i++) {
            var publisher = publishers[i];
            var tr = $('<tr>');
            tr.append('<th>' + (i+1) + '</th>');
            tr.append('<td>' + publisher.username + '</td>');
            tr.append('<td>' + publisher.businessName + '</td>');
            tr.append('<td>' + publisher.businessNumber + '</td>');
            tr.append('<td>' + publisher.joinTime + '</td>');

            var selectStatus = `
                <select class="form-select" name="status" id="status-` + publisher.id + `">
                    <option selected>상태를 선택해주세요</option>
                    <option value="ACTIVE">승인</option>
                    <option value="DELETE">반려</option>
                </select>
            `;
            tr.append('<td>' + selectStatus + '</td>');
            tr.append(`
                <td>
                    <button onclick="changeStatus(` + publisher.id + `)">등록</button>
                </td>
            `);


            tbody.append(tr);
        }
    }

    // 변경된 상태를 서버에 전송하는 코드
    function changeStatus(id) {
        var status = $('#status-' + id).val();
        // if (status == 'ACTIVE'){
            $.ajax({
                url: 'http://localhost:8080/publishers/' + id,
                type: 'PUT',
                dataType: 'json',
                contentType: 'application/json',
                data: JSON.stringify({
                    status: status
                })
            })
                .done((res) => {
                    // 성공 시 처리할 내용 (예: 알림 표시, 테이블 업데이트 등)
                    alert("상태가 변경되었습니다.");
                    location.reload();
                })
                .fail((err) => {
                    // 실패 시 처리할 내용 (예: 오류 메시지 표시 등)
                    alert("상태 변경에 실패했습니다. 오류: " + err.responseJSON.msg);
                });
    }


</script>

<%@ include file="../../layout/footer.jsp" %>