<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBanner.jsp" %>

<h1>
    공지사항
</h1>
<div class="" style="border: 1px solid gray" >

    <table class="table">
        <thead class="table-secondary">
        <tr>
            <th scope="col">NO</th>
            <th scope="col">배너이미지</th>
            <th scope="col">등록일</th>
            <th scope="col">상태</th>
            <th scope="col"> </th>

        </tr>
        </thead>
        <tbody id="bannerListTbody">

        </tbody>
    </table>

</div>

</div>


<script>

    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/banners?page=0&size=200`,
            type: 'GET',
        })
            .done((res) => {
                populateTable(res.data.content);
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    })

    function populateTable(banners) {
        var tbody = $('#bannerListTbody');
        tbody.empty();
        for (var i = 0; i < banners.length; i++) {
            var banner = banners[i];
            var tr = $('<tr>');
            tr.append('<th scope="row">' + (i + 1) + '</th>');

            tr.append('<td><img src="' + banner.imageFile.fileUrl + '" style="width: 300px"></td>');

            tr.append('<td>' + banner.createdDate + '</td>');
            var selectStatus = `
                <select class="form-select" name="status" id="status-` + banner.id + `">
                    <option value="ACTIVE"` + (banner.status === 'ACTIVE' ? ' selected' : '') + `>활성</option>
                    <option value="DELETE"` + (banner.status === 'DELETE' ? ' selected' : '') + `>비활성</option>
                </select>
            `;
            tr.append('<td>' + selectStatus + '</td>');
            tr.append(`
                <td>
                    <button onclick="changeStatus(` + banner.id + `)">변경</button>
                </td>
            `);

            tbody.append(tr);
        }
    }

    // 변경된 상태를 서버에 전송하는 코드
    function changeStatus(id) {
        var status = $('#status-' + id).val();
        $.ajax({
            url: 'http://localhost:8080/banners/' + id+'/state',
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