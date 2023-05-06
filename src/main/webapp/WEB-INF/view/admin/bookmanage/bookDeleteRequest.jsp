<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>


<div class="p-3" style="border: 1px solid #00539C" >

    <h2>도서 삭제 요청</h2>
    <hr>

    <form>
        <div class="px-3" style="border: 1px solid olive">

            <div class="d-flex justify-content" style="border: 1px solid palegreen">
                <div>
                    <h5><b>표지</b></h5>
                    <img src="" style="height: 170px; width: 140px" id="coverUrl">
                </div>
                <div>
                    도서명
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" name="title" id="title" readonly >
                    </div>

                    저자
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" name="author" id="author" readonly >
                    </div>

                    출판사
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" name="publisher" id="publisher" readonly >
                    </div>

                    가격
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" name="price" id="price" readonly >
                    </div>
                </div>
            </div>

            <div class="input-group mb-3">

                <span class="input-group-text">큰 카테고리</span>
                <input type="text" class="form-control form-control" name="BigCategory" id="BigCategory" readonly>

                <span class="input-group-text">작은 카테고리</span>
                <input type="text" class="form-control form-control" name="SmallCategory" id="SmallCategory" readonly >

            </div>

            <div class="mb-3 mt-3" >
                <label for="introduction" class="form-label">책소개</label>
                <textarea class="form-control" id="introduction" rows="5" readonly></textarea>
            </div>

            <div class="mb-3 mt-3" >
                <label for="authorInfo" class="form-label">저자소개</label>
                <textarea class="form-control" id="authorInfo" rows="5" readonly></textarea>
            </div>

            <div class="mb-3 mt-3" >
                <label for="content" class="form-label">삭제 사유</label>
                <textarea class="form-control" id="content" rows="5" readonly></textarea>
            </div>

            <div class="d-flex justify-content-center">
                <button onclick="changeStatus()" type="button" class="btn btn-primary">삭제 승인</button>
            </div>
        </div>
    </form>

</div>

<script>
    const id = ${id};

    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/books/deleteRequest/` + id +`?page=0&size=200`,
            type: 'GET',
            dataType: 'json',
        })
            .done((res) => {
                populateTable(res);
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    });

    function populateTable(res) {
        let book = res.book;
        $('#coverUrl').attr('src', res.coverUrl);
        $('#title').val(book.title);
        $('#author').val(book.author);
        $('#publisher').val(book.publisher.businessName);
        $('#price').val(book.price);
        $('#BigCategory').val(book.bigCategory.bigCategory);
        $('#SmallCategory').val(book.smallCategory.smallCategory);
        $('#introduction').text(book.introduction);
        $('#authorInfo').text(book.authorInfo);
        $('#content').text(res.content);
    }

    // 변경된 상태를 서버에 전송하는 코드
    function changeStatus() {
        $.ajax({
            url: 'http://localhost:8080/books/' + id +'/delete',
            type: 'PUT',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({
                status: 'DELETE'
            })
        })
            .done((res) => {
                // 성공 시 처리할 내용 (예: 알림 표시, 테이블 업데이트 등)
                alert("비활성화 되었습니다.");
                location.href = "/admins/books/bookUpdateAndDeleteList"
            })
            .fail((err) => {
                // 실패 시 처리할 내용 (예: 오류 메시지 표시 등)
                alert("비활성화에 실패했습니다. 오류: " + err.responseJSON.msg);
            });
    }


</script>


<%@ include file="../../layout/footer.jsp" %>