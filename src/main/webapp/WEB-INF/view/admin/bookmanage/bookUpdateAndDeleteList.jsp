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
            <th scope="col">요청</th>
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
            url: 'http://localhost:8080/api/books/updateListAndDeleteList?page=0&size=200',
            type: 'GET',
            dataType: 'json',
        })
            .done((res) => {
                populateTable(res.data);
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
            tr.append('<td><img src="' + book.coverUrl + '" style="width: 75px;height: 100px"></td>');
            tr.append('<td>' + book.title + '</td>');
            tr.append('<td>' + book.author + '</td>');
            tr.append('<td>' + book.publisher + '</td>');
            tr.append('<td>' + book.createdDate + '</td>');

            var requestTypeText = '';
            if (book.requestType === 'UPDATE') {
                requestTypeText = '수정';
                tr.append('<td class="text-primary">' + requestTypeText + '</td>');
                tr.append(`
                <td>
                    <a href="/admins/books/bookUpdateRequest/`+ book.id + `"><button type="button" class="btn btn-warning">관리</button></a>
                </td>
            `);

            } else if (book.requestType === 'DELETE') {
                requestTypeText = '삭제';
                tr.append('<td class="text-danger">' + requestTypeText + '</td>');
                tr.append(`
                <td>
                    <a href="/admins/books/bookDeleteRequest/`+ book.id + `"><button type="button" class="btn btn-warning">관리</button></a>
                </td>
            `);

            }

            tbody.append(tr);
        }
    }



</script>


<%@ include file="../../layout/footer.jsp" %>