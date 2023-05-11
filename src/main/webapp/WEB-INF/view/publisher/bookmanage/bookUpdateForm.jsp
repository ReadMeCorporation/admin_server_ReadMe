<%@ page import="shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>

<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

    <h2>도서 수정 요청</h2>
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
                        <input type="text" class="form-control form-control" placeholder="도서명을 입력해주세요" name="title" id="title" >
                    </div>

                    저자
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="저자를 입력해주세요" name="author" id="author" >
                    </div>

                    출판사
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="출판사를 입력해주세요" name="publisher" id="publisher" readonly >
                    </div>

                    가격
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="가격을 입력해주세요" name="price" id="price" >
                    </div>
                </div>
            </div>

            <div class="input-group mb-3">
                <span class="input-group-text">큰 카테고리</span>
                <select class="form-select" name="bigCategory" id="bigCategory" onchange="changeSmallCategory()">
                    <option selected>큰 카테고리를 선택해주세요</option>
                    <option value="자기계발">자기계발</option>
                    <option value="에세이">에세이</option>
                    <option value="인문">인문</option>
                    <option value="경영">경영</option>
                    <option value="언어">언어</option>
                    <option value="소설">소설</option>
                    <option value="역사">역사</option>
                </select>

                <span class="input-group-text">작은 카테고리</span>
                <select class="form-select" name="smallCategory" id="smallCategory">
                    <option selected>작은 카테고리를 선택해주세요</option>
                </select>
            </div>

            <div class="mb-3 mt-3" >
                <label for="introduction" class="form-label">책소개</label>
                <textarea class="form-control" id="introduction" rows="5"></textarea>
            </div>
            <div class="mb-3 mt-3" >
                <label for="authorInfo" class="form-label">저자소개</label>
                <textarea class="form-control" id="authorInfo" rows="5"></textarea>
            </div>

            <div class="mb-3 mt-3">
                <label for="epubFile" class="form-label">도서 파일 - 업로드 하지않을시 기존파일로 설정됩니다</label>
                <input type="file" class="form-control" id="epubFile" name="epubFile" accept=".epub">
            </div>
            <div class="mb-3 mt-3">
                <label for="bookCover" class="form-label">표지 - 업로드 하지않을시 기존파일로 설정됩니다</label>
                <input type="file" class="form-control" id="bookCover" name="bookCover" accept="image/*">
            </div>

            <div class="mb-3 mt-3" >
                <label for="content" class="form-label">수정사항 디테일</label>
                <textarea class="form-control" id="content" rows="5"></textarea>
            </div>

            <div class="d-flex justify-content-center">
                <button onclick="update()" type="button" class="btn btn-primary" style="width: 110px">수정 요청</button>
            </div>
        </div>
</div>

<script>
    const id = ${id}

    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/books/`+ id,
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
        $('#bigCategory').val(book.bigCategory.bigCategory);
        changeSmallCategory();
        $('#introduction').text(book.introduction);
        $('#authorInfo').text(book.authorInfo);
        $('#coverUrl').attr('src', book.coverUrl);
    }

    function update() {
        // FormData 객체 생성
        var formData = new FormData();

        // input 요소에서 값을 가져와서 FormData 객체에 추가
        formData.append('title', $('#title').val());
        formData.append('author', $('#author').val());
        formData.append('publisher', $('#publisher').val());
        formData.append('price', $('#price').val());
        formData.append('introduction', $('#introduction').val());

        // 파일이 있을 경우에만 추가
        if ($('#epubFile').get(0).files[0]) {
            formData.append('epubFile', $('#epubFile').get(0).files[0]);
        }

        // 파일이 있을 경우에만 추가
        if ($('#bookCover').get(0).files[0]) {
            formData.append('bookCover', $('#bookCover').get(0).files[0]);
        }

        formData.append('bigCategory', $('#bigCategory').val());
        changeSmallCategory();
        formData.append('smallCategory', $('#smallCategory').val());

        formData.append('authorInfo', $('#authorInfo').val());

        formData.append('content', $('#content').val());

        $.ajax({
            type: 'post',
            url: '/bookUpdateList/'+ id,
            data: formData,
            contentType: false,
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

<script>
    function changeSmallCategory() {
        var bigCategory = document.getElementById("bigCategory").value;
        var smallCategory = document.getElementById("smallCategory");

        var 자기계발 = ["성공_처세", "인간_관계", "화술_협상", "시간_관리", "리더십"];
        var 에세이 = ["여행_에세이", "예술_에세이", "독서_에세이", "심리_에세이", "사랑_연애_에세이"];
        var 인문 = ["일반", "심리학", "교육학", "철학", "문학이론"];
        var 경영 = ["경영일반", "경영이론", "마케팅_광고", "재테크_금융", "세계_경제"];
        var 언어 = ["영어", "일본어", "중국어", "프랑스어", "기타_외국어"];
        var 소설 = ["고전", "스릴러", "역사", "SF", "로맨스"];
        var 역사 = ["한국사", "세계사", "서양사", "동양사", "신화"];

        smallCategory.innerHTML = "";

        var options = [];

        if (bigCategory === "자기계발") {
            options = 자기계발;
        } else if (bigCategory === "에세이") {
            options = 에세이;
        } else if (bigCategory === "인문") {
            options = 인문;
        } else if (bigCategory === "경영") {
            options = 경영;
        } else if (bigCategory === "언어") {
            options = 언어;
        } else if (bigCategory === "소설") {
            options = 소설;
        } else if (bigCategory === "역사") {
            options = 역사;
        }

        for (var i = 0; i < options.length; i++) {
            var option = document.createElement("option");
            option.text = options[i];
            option.value = options[i];
            smallCategory.add(option);
        }
    }
</script>


    <%@ include file="../../layout/footer.jsp" %>