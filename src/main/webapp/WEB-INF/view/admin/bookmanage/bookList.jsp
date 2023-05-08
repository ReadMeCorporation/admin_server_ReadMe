<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>
<h1>
    도서관리
</h1>
    <div class="" style="border: 1px solid gray" >

        <table class="table">
            <thead>
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
            <tbody id="bookListTbody">

            </tbody>
        </table>

<div class="pagination-container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination">
        </ul>
    </nav>
</div>
    </div>

</div>

<%--<script>--%>
<%--    $(document).ready(function() {--%>
<%--        // 현재 페이지 번호를 저장하는 변수를 추가--%>
<%--        var currentPage = 0;--%>

<%--        function loadBooks(page) {--%>
<%--            $.ajax({--%>
<%--                url: 'http://localhost:8080/api/books/activeOrDelete?page=' + page,--%>
<%--                type: 'GET',--%>
<%--                dataType: 'json',--%>
<%--            })--%>
<%--                .done((res) => {--%>
<%--                    currentPage = page;--%>
<%--                    populateTable(res.content);--%>
<%--                    createPagination(res.totalPages);--%>
<%--                })--%>
<%--                .fail((err) => {--%>
<%--                    alert(err.responseJSON.msg);--%>
<%--                });--%>
<%--        }--%>

<%--        // 페이지네이션 생성 함수--%>
<%--        function createPagination(totalPages) {--%>
<%--            var pagination = $('#pagination');--%>
<%--            pagination.empty();--%>
<%--            for (var i = 0; i < totalPages; i++) {--%>
<%--                var li = $('<li class="page-item' + (i === currentPage ? ' active' : '') + '">');--%>
<%--                li.append('<a class="page-link" href="#" onclick="changePage(' + i + ')">' + (i + 1) + '</a>');--%>
<%--                pagination.append(li);--%>
<%--            }--%>
<%--        }--%>

<%--        // 페이지 변경 함수--%>
<%--        window.changePage = function(page) {--%>
<%--            loadBooks(page);--%>
<%--        };--%>

<%--        // 처음에 첫 번째 페이지 로드--%>
<%--        loadBooks(0);--%>

<%--    function populateTable(books) {--%>
<%--        var tbody = $('#bookListTbody');--%>
<%--        tbody.empty();--%>
<%--        for (var i = 0; i < books.length; i++) {--%>
<%--            var book = books[i];--%>
<%--            var tr = $('<tr>');--%>
<%--            tr.append('<th>' + (i+1) + '</th>');--%>
<%--            tr.append('<td><img src="' + book.coverFile.fileUrl + '" style="width: 75px;height: 100px"></td>');--%>
<%--            tr.append('<td>' + book.title + '</td>');--%>
<%--            tr.append('<td>' + book.author + '</td>');--%>
<%--            tr.append('<td>' + book.publisher.businessName + '</td>');--%>
<%--            tr.append('<td>' + book.createDate + '</td>');--%>
<%--            var selectStatus = `--%>
<%--                <select class="form-select" name="status" id="status-` + book.id + `">--%>
<%--                    <option value="ACTIVE"` + (book.status === 'ACTIVE' ? ' selected' : '') + `>활성</option>--%>
<%--                    <option value="DELETE"` + (book.status === 'DELETE' ? ' selected' : '') + `>비활성</option>--%>
<%--                </select>--%>
<%--            `;--%>
<%--            tr.append('<td>' + selectStatus + '</td>');--%>
<%--            tr.append(`--%>
<%--                <td>--%>
<%--                    <button onclick="changeStatus(` + book.id + `)">변경</button>--%>
<%--                </td>--%>
<%--            `);--%>
<%--            tbody.append(tr);--%>
<%--        }--%>
<%--    }--%>
<%--    // 변경된 상태를 서버에 전송하는 코드--%>
<%--    function changeStatus(id) {--%>
<%--        var status = $('#status-' + id).val();--%>
<%--        $.ajax({--%>
<%--            url: 'http://localhost:8080/books/' + id+'/state',--%>
<%--            type: 'PUT',--%>
<%--            dataType: 'json',--%>
<%--            contentType: 'application/json',--%>
<%--            data: JSON.stringify({--%>
<%--                status: status--%>
<%--            })--%>
<%--        })--%>
<%--            .done((res) => {--%>
<%--                alert("상태가 변경되었습니다.");--%>
<%--                location.reload();--%>
<%--            })--%>
<%--            .fail((err) => {--%>
<%--                alert("상태 변경에 실패했습니다. 오류: " + err.responseJSON.msg);--%>
<%--            });--%>
<%--    }--%>
<%--</script>--%>

<script>
    $(document).ready(function() {
        $.ajax({
            url: 'http://localhost:8080/api/books/activeOrDelete',
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
        var tbody = $('#bookListTbody');
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
                    <option value="ACTIVE"` + (book.status === 'ACTIVE' ? ' selected' : '') + `>활성</option>
                    <option value="DELETE"` + (book.status === 'DELETE' ? ' selected' : '') + `>비활성</option>
                </select>
            `;
            tr.append('<td>' + selectStatus + '</td>');
            tr.append(`
                <td>
                    <button onclick="changeStatus(` + book.id + `)">변경</button>
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