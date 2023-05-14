<%@ page import="shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>

<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

    <h2>도서 삭제 요청</h2>
    <hr>

        <div class="px-3" >
            <div class="d-flex" >
                <div>
                    <h5><b>표지</b></h5>
                    <img src="" style="height: 200px; width: 160px; margin-right: 70px" id="coverUrl">
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
                <textarea class="form-control" id="introduction" rows="5" readonly>

            </textarea>
            </div>
            <div class="mb-3 mt-3" >
                <label for="authorInfo" class="form-label">저자소개</label>
                <textarea class="form-control" id="authorInfo" rows="5" readonly>

            </textarea>
            </div>

            <div class="mb-3 mt-3" >
                <label for="detail" class="form-label">삭제 사유</label>
                <textarea class="form-control" id="detail" rows="5"></textarea>
            </div>

            <div class="d-flex justify-content-center">
                <button onclick="save()" type="button" class="btn btn-primary" style="width: 115px">삭제 요청</button>
            </div>
        </div>
</div>

<script>
    const id = ${id}

    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/books/` + id + `?page=0&size=400`,
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

    function populateTable(book) {
        $('#title').val(book.title);
        $('#author').val(book.author);
        $('#publisher').val(book.publisher.businessName);
        $('#price').val(book.price);
        $('#BigCategory').val(book.bigCategory.bigCategory);
        $('#SmallCategory').val(book.smallCategory.smallCategory);
        $('#introduction').text(book.introduction);
        $('#authorInfo').text(book.authorInfo);
        $('#coverUrl').attr('src', book.coverUrl);
    }

    function save() {
        content = $('#detail').val();

        $.ajax({
            type: 'post',
            url: '/bookDeleteList/'+id,
            data: JSON.stringify({ content: content }),
            contentType: 'application/json',
            processData: false,
            dataType: "json"
        }).done((res) => { // 20X 일때
            alert(res.msg);
            location.href = "/publishers/books";
        }).fail((err) => { // 40X, 50X 일때
            alert(err.responseJSON.msg);
        });
    }

</script>


<%@ include file="../../layout/footer.jsp" %>