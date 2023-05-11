<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>

<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

    <h2>도서 수정 요청</h2>
    <hr>

    <form>

        <div class="px-3" >
            <div class="d-flex justify-content" >
                <div>
                    <h5><b>표지</b></h5>
                    <img src="" style="height: 170px; width: 140px;margin-right: 70px" id="coverUrl">
                </div>
                <div>
                    도서명
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="도서명을 입력해주세요" name="title" id="title" readonly >
                    </div>

                    저자
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="저자를 입력해주세요" name="author" id="author" readonly >
                    </div>

                    출판사
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="출판사를 입력해주세요" name="publisher" id="publisher" readonly >
                    </div>

                    가격
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="가격을 입력해주세요" name="price" id="price" readonly >
                    </div>
                </div>
            </div>

            <div class="input-group mb-3">

                <span class="input-group-text">큰 카테고리</span>
                <input type="text" class="form-control form-control" name="bigCategory" id="bigCategory" readonly>

                <span class="input-group-text">작은 카테고리</span>
                <input type="text" class="form-control form-control" name="smallCategory" id="smallCategory" readonly >

            </div>

            <div class="mb-3 mt-3" >
                <label for="introduction" class="form-label">책소개</label >
                <textarea class="form-control" id="introduction" rows="5" readonly></textarea>
            </div>
            <div class="mb-3 mt-3" >
                <label for="authorInfo" class="form-label">저자소개</label>
                <textarea class="form-control" id="authorInfo" rows="5" readonly></textarea>
            </div>

            <div class="mb-3 mt-3">
                <label for="epubFileName" class="form-label">도서 파일</label>
                <textarea class="form-control" id="epubFileName" readonly></textarea>
            </div>

            <div class="mb-3 mt-3">
                <label for="bookCoverName" class="form-label">표지</label>
                <textarea class="form-control" id="bookCoverName" readonly></textarea>
            </div>

            <div class="mb-3 mt-3" >
                <label for="content" class="form-label">수정사항 디테일</label>
                <textarea class="form-control" id="content" rows="5" readonly></textarea>
            </div>

            <div class="d-flex justify-content-center">
                <button onclick="update()" type="button" class="btn btn-primary">승인</button>
            </div>
        </div>
    </form>
</div>

<script>
    const id = ${id}

    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/books/updateRequest/`+ id +`?page=0&size=400`,
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
        $('#title').val(res.title);
        $('#author').val(res.author);
        $('#publisher').val(book.publisher.businessName);
        $('#price').val(res.price);
        $('#bigCategory').val(res.bigCategory.bigCategory);
        $('#smallCategory').val(res.smallCategory.smallCategory);
        $('#introduction').text(res.introduction);
        $('#authorInfo').text(res.authorInfo);
        $('#epubFileName').text(res.epubUrl.split('/').pop());
        $('#bookCoverName').text(res.coverUrl.split('/').pop());
        $('#content').text(res.content);
    }

    function update(){
        $.ajax({
            type: 'PUT',
            url: '/books/'+ id,
            contentType: 'application/json',
            dataType: "json"
        }).done((res) => { // 20X 일때
            alert(res.msg);
            location.href = "/admins/books/bookUpdateAndDeleteList";
        }).fail((err) => { // 40X, 50X 일때
            alert(err.responseJSON.msg);
        });
    }

</script>


    <%@ include file="../../layout/footer.jsp" %>