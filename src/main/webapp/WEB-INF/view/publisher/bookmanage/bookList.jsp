<%@ page import="shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>

    <div class="" style="border: 1px solid gray" >

        <table class="table">
            <thead class="table-secondary">
            <tr>
                <th scope="col">NO</th>
                <th scope="col">표지</th>
                <th scope="col">도서명</th>
                <th scope="col">저자</th>
                <th scope="col">별점</th>
                <th scope="col">스크랩</th>
                <th scope="col">상태</th>
                <th scope="col">요청</th>
            </tr>
            </thead>
            <tbody id="bookListTbody">

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
                url: `http://localhost:8080/api/publishers/books`,
                type: 'GET',
                dataType: 'json',
                data: { publisherId: publisherId }
            })
                .done((res) => {
                    populateTable(res);
                })
                .fail((err) => {
                    alert(err.responseJSON.msg);
                })
        }
    });



    function populateTable(books) {
        var tbody = $('#bookListTbody');
        tbody.empty();
        for (var i = 0; i < books.length; i++) {
            var book = books[i];
            var tr = $('<tr>');
            tr.append('<th scope="row">' + (i + 1) + '</th>');
            tr.append('<td><img src="' + book.coverUrl + '" style="width: 75px;height: 100px"></td>');
            tr.append('<td><a href="/publishers/books/detail/' + book.id + '">' + book.title + '</a></td>');
            tr.append('<td>' + book.author + '</td>');
            tr.append('<td>' + book.stars + '</td>');
            tr.append('<td>' + book.hearts + '</td>');
            tr.append('<td>' + book.status + '</td>');
            tr.append(`
            <td>
                <a href="/publishers/books/updateForm/`+ book.id + `"><button type="button" class="btn btn-warning">수정</button></a>
                <a href="/publishers/books/deleteForm/`+ book.id + `"><button type="button" class="btn btn-danger">삭제</button></a>
            </td>
        `);
            tbody.append(tr);
        }
    }

</script>


    <%@ include file="../../layout/footer.jsp" %>