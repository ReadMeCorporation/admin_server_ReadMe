<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>


    <div class="" style="border: 1px solid orange" >

        <table class="table">
            <thead>
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
            <tbody>
<%-- --%>
<%--<tr>--%>
<%--    <th scope="row">1</th>--%>
<%--    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>--%>
<%--    <td><a href="/books/detail/1">1984</a></td>--%>
<%--    <td>조지오웰</td>--%>
<%--    <td>4.5</td>--%>
<%--    <td>100</td>--%>
<%--    <td> - </td>--%>
<%--    <td>--%>
<%--        <a href="/books/updateForm/1"><button type="button" class="btn btn-outline-dark">수정</button></a>--%>
<%--        <a href="/books/deleteForm/1"><button type="button" class="btn btn-outline-dark">삭제</button></a>--%>
<%--    </td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--    <th scope="row">2</th>--%>
<%--    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>--%>
<%--    <td>1984</td>--%>
<%--    <td>조지오웰</td>--%>
<%--    <td>4.5</td>--%>
<%--    <td>100</td>--%>
<%--    <td> - </td>--%>
<%--    <td>--%>
<%--        <button>수정</button>--%>
<%--        <button>삭제</button>--%>
<%--    </td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--    <th scope="row">3</th>--%>
<%--    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>--%>
<%--    <td>1984</td>--%>
<%--    <td>조지오웰</td>--%>
<%--    <td>4.5</td>--%>
<%--    <td>100</td>--%>
<%--    <td> - </td>--%>
<%--    <td>--%>
<%--        <button>수정</button>--%>
<%--        <button>삭제</button>--%>
<%--    </td>--%>
<%--</tr>--%>
<%--<tr>--%>
<%--    <th scope="row">4</th>--%>
<%--    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>--%>
<%--    <td>1984</td>--%>
<%--    <td>조지오웰</td>--%>
<%--    <td>4.5</td>--%>
<%--    <td>100</td>--%>
<%--    <td> - </td>--%>
<%--    <td>--%>
<%--        <button>수정</button>--%>
<%--        <button>삭제</button>--%>
<%--    </td>--%>
<%--</tr>--%>
<%-- --%>
            </tbody>
        </table>

    </div>

</div>

<script>
    $(document).ready(function() {
        $.ajax({
            url: 'http://localhost:8080/books',
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

    function populateTable(books) {
        var tbody = $('table tbody');
        tbody.empty();
        for (var i = 0; i < books.length; i++) {
            var book = books[i];
            var tr = $('<tr>');
            tr.append('<th scope="row">' + (i + 1) + '</th>');
            tr.append('<td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>');
            tr.append('<td><a href="/publishers/books/detail/' + book.id + '">' + book.title + '</a></td>');
            tr.append('<td>' + book.author + '</td>');
            tr.append('<td>' + book.status + '</td>');
            tr.append(`
            <td>
                <a href="/publishers/books/updateForm/`+ book.id + `"><button>수정</button></a>
                <a href="/publishers/books/deleteForm/`+ book.id + `"><button>삭제</button></a>
            </td>
        `);
            tbody.append(tr);
        }
    }

</script>


    <%@ include file="../../layout/footer.jsp" %>