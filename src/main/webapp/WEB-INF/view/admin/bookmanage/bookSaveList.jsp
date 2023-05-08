<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>
<h1>
    도서관리
</h1>
<div class="" style="border: 1px solid gray" >

    <table class="table">
        <thead class="table-secondary">
        <tr>
            <th scope="col">NO</th>
            <th scope="col">표지</th>
            <th scope="col">도서명</th>
            <th scope="col">저자</th>
            <th scope="col">출판사</th>
            <th scope="col">등록일</th>
            <th scope="col">상태</th>
            <th scope="col"> </th>
        </tr>
        </thead>
        <tbody id="bookSaveListTbody">

        </tbody>
    </table>

</div>

</div>

<script>

    $(document).ready(function() {
        $.ajax({
            url: 'http://localhost:8080/api/books/saveList?page=0&size=100',
            type: 'GET',
            dataType: 'json',
        })
            .done((res) => {
                populateTable(res.data.content); // 'content' 속성을 사용하도록 수정
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    });

    function populateTable(books) {
        var tbody = $('#bookSaveListTbody');
        tbody.empty();
        for (var i = 0; i < books.length; i++) {
            var book = books[i];
            var tr = $('<tr>');
            tr.append('<th>' + (i+1) + '</th>');
            tr.append('<td><img src="' + book.coverFile.fileUrl + '" style="width: 75px;height: 100px"></td>');
            tr.append('<td>' + book.title + '</td>');
            tr.append('<td>' + book.author + '</td>');
            tr.append('<td>' + book.publisher.businessName + '</td>');
            tr.append('<td>' + book.createDate + '</td>');

            var selectStatus = `
                <select class="form-select" name="status" id="status-` + book.id + `">
                    <option selected>상태를 선택해주세요</option>
                    <option value="ACTIVE">승인</option>
                    <option value="REJECTED">반려</option>
                </select>
            `;
            tr.append('<td>' + selectStatus + '</td>');
            tr.append(`
                <td>
                    <button onclick="changeStatus(` + book.id + `)">등록</button>
                </td>
            `);

            tbody.append(tr);
        }
    }

    // 변경된 상태를 서버에 전송하는 코드
    function changeStatus(id) {
        var status = $('#status-' + id).val();

        $.ajax({
            url: 'http://localhost:8080/books/' + id+'/state',
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