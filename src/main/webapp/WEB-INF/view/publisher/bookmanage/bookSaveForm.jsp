<%@ page import="shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>


<%
    Publisher publisher = (Publisher) session.getAttribute("principal");
    String businessName = "";
    if (publisher != null) {
        businessName = publisher.getBusinessName();
    }
%>



<div class="p-3" style="border: 1px solid #00539C" >

    <h2>도서 등록 요청</h2>
    <hr>


    <form>

        <div class="px-3" style="border: 1px solid olive">
            <div class="d-flex justify-content" style="border: 1px solid palegreen">
                <div>
                    <h5><b>표지</b></h5>
                    <img src="/images/gray.png" style="height: 170px; width: 140px">
                </div>
                <div>
                    도서명
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="도서명을 입력해주세요" name="title" id="title" value="책제목 테스트">
                    </div>

                    저자
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="저자를 입력해주세요" name="author" id="author" value="저자 테스트">
                    </div>

                    출판사
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="출판사를 입력해주세요" name="publisher" id="publisher" readonly value="<%=businessName %>" >
                    </div>

                    가격
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" placeholder="가격을 입력해주세요" name="price" id="price" value="1000">
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
                <textarea class="form-control" id="introduction" rows="5" >책소개 테스트</textarea>
            </div>
            <div class="mb-3 mt-3" >
                <label for="authorInfo" class="form-label">저자소개</label>
                <textarea class="form-control" id="authorInfo" rows="5" > 저자소개 테스트</textarea>
            </div>
            <div class="mb-3 mt-3">
                <label for="epubFile" class="form-label">도서 파일</label>
                <input type="file" class="form-control" id="epubFile" name="epubFile" accept=".epub">
            </div>
            <div class="mb-3 mt-3">
                <label for="bookCover" class="form-label">표지</label>
                <input type="file" class="form-control" id="bookCover" name="bookCover" accept="image/*">
            </div>

            <div class="d-flex justify-content-center">
                <button onclick="save()" type="button" class="btn btn-primary">등록 요청</button>
            </div>
        </div>
    </form>
</div>

<script>
    function save() {
        // FormData 객체 생성
        var formData = new FormData();

        // input 요소에서 값을 가져와서 FormData 객체에 추가
        formData.append('title', $('#title').val());
        formData.append('author', $('#author').val());
        formData.append('publisher', $('#publisher').val());
        formData.append('price', $('#price').val());
        formData.append('introduction', $('#introduction').val());

        formData.append('epubFile', $('#epubFile').get(0).files[0]);
        formData.append('bookCover', $('#bookCover').get(0).files[0]);

        formData.append('bigCategory', $('#bigCategory').val());
        formData.append('smallCategory', $('#smallCategory').val());
        formData.append('authorInfo', $('#authorInfo').val());

        $.ajax({
            type: 'post',
            url: '/books',
            data: formData,
            contentType: false,
            processData: false, // 필수: contentType을 false로 줬을 때 QueryString 자동 설정됨. 해제
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
        // Add other big categories here

        for (var i = 0; i < options.length; i++) {
            var option = document.createElement("option");
            option.text = options[i];
            option.value = options[i];
            smallCategory.add(option);
        }
    }
</script>


    <%@ include file="../../layout/footer.jsp" %>