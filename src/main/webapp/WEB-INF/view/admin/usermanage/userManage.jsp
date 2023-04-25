<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>


<h1>
    유저관리
</h1>

    <div class="" style="border: 1px solid orange" >

        <table class="table">
            <thead>
            <tr>
                <th scope="col">NO</th>
                <th scope="col">username</th>
                <th scope="col">멤버쉽</th>
                <th scope="col">자동결제</th>
                <th scope="col">가입일</th>
                <th scope="col">상태</th>
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
            url: 'http://localhost:8080/users',
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

    function populateTable(users) {
        var tbody = $('table tbody');
        tbody.empty();
        for (var i = 0; i < users.length; i++) {
            var user = users[i];
            var tr = $('<tr>');
            tr.append('<th>' + (i+1) + '</th>');
            tr.append('<td>' + user.username + '</td>');
            tr.append('<td>' + user.isMembership + '</td>');
            tr.append('<td>' + user.isAutoPayment + '</td>');
            tr.append('<td>' + user.joinTime + '</td>');

            var selectStatus = `
                <select class="form-select" name="status" id="status-` + user.id + `">
                    <option value="ACTIVE"` + (user.status === 'ACTIVE' ? ' selected' : '') + `>활성</option>
                    <option value="DELETE"` + (user.status === 'DELETE' ? ' selected' : '') + `>비활성</option>
                </select>
            `;
            tr.append('<td>' + selectStatus + '</td>');
            tr.append(`
                <td>
                    <button onclick="changeStatus(` + user.id + `)">변경</button>
                </td>
            `);

            tbody.append(tr);
        }
    }

    // 변경된 상태를 서버에 전송하는 코드
    function changeStatus(id) {
        var status = $('#status-' + id).val();

        $.ajax({
            url: 'http://localhost:8080/users/' + id,
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