<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerNotice.jsp" %>

<h1>
    공지사항
</h1>
<div class="" style="border: 1px solid gray" >

    <table class="table">
        <thead class="table-secondary">
        <tr>
            <th scope="col">NO</th>
            <th scope="col">제목</th>
            <th scope="col">등록일</th>
            <th scope="col">상태</th>
            <th scope="col"> </th>

        </tr>
        </thead>
        <tbody id="noticeListTbody">

        </tbody>
    </table>

</div>

</div>


<script>

    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/notices?page=0&size=200`,
            type: 'GET',
        })
            .done((res) => {
                populateTable(res.data.content);
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    })

    function populateTable(notices) {
        var tbody = $('#noticeListTbody');
        tbody.empty();
        for (var i = 0; i < notices.length; i++) {
            var notice = notices[i];
            var tr = $('<tr>');
            tr.append('<th scope="row">' + (i + 1) + '</th>');

            tr.append('<td><a href="/admins/notices/detail/' + notice.id + '">' + notice.title + '</a></td>');

            tr.append('<td>' + notice.createdDate + '</td>');
            var selectStatus = `
                <select class="form-select" name="status" id="status-` + notice.id + `">
                    <option value="ACTIVE"` + (notice.status === 'ACTIVE' ? ' selected' : '') + `>활성</option>
                    <option value="DELETE"` + (notice.status === 'DELETE' ? ' selected' : '') + `>비활성</option>
                </select>
            `;
            tr.append('<td>' + selectStatus + '</td>');
            tr.append(`
                <td>
                    <button onclick="changeStatus(` + notice.id + `)">변경</button>
                </td>
            `);

            tbody.append(tr);
        }
    }

    // 변경된 상태를 서버에 전송하는 코드
    function changeStatus(id) {
        var status = $('#status-' + id).val();
        $.ajax({
            url: 'http://localhost:8080/notices/' + id+'/state',
            type: 'PUT',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                status: status
            })
        })
            .done((res) => {
                alert("상태가 변경되었습니다.");
                location.reload();
            })
            .fail((err) => {
                alert("상태 변경에 실패했습니다. 오류: " + err.responseJSON.msg);
            });
    }


</script>
<%@ include file="../../layout/footer.jsp" %>