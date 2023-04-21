<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>


<div class="p-3" style="border: 1px solid orange" >

    <h2>도서 삭제 요청</h2>
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
                        <input type="text" class="form-control form-control" value="1984" name="title" id="title" readonly >
                    </div>
                    저자
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" value="조지오웰" name="author" id="author" readonly >
                    </div>

                    가격
                    <div class="form-group pb-1">
                        <input type="text" class="form-control form-control" value="1000" name="price" id="price" readonly >
                    </div>
                </div>
            </div>

            <div class="input-group mb-3">

                <span class="input-group-text">큰 카테고리</span>
                <input type="text" class="form-control form-control" name="BigCategory" id="BigCategory" value="자기계발" readonly>

                <span class="input-group-text">작은 카테고리</span>
                <input type="text" class="form-control form-control" name="SmallCategory" id="SmallCategory" value="리더십" readonly >

            </div>

            <div class="mb-3 mt-3" style="border: 1px solid darkcyan">
                <label for="introduction" class="form-label">책소개</label>
                <textarea class="form-control" id="introduction" rows="5" readonly>
    책소개 입니다
    책소개 입니다
    책소개 입니다
    책소개 입니다
            </textarea>
            </div>
            <div class="mb-3 mt-3" style="border: 1px solid darkcyan">
                <label for="authorInfo" class="form-label">저자소개</label>
                <textarea class="form-control" id="authorInfo" rows="5" readonly>
    저자소개 입니다
    저자소개 입니다
    저자소개 입니다
    저자소개 입니다
            </textarea>
            </div>
            <div class="mb-3 mt-3" style="border: 1px solid darkcyan">
                <label for="content" class="form-label">책내용</label>
                <textarea class="form-control" id="content" rows="5" readonly>
    책내용 입니다
    책내용 입니다
    책내용 입니다
    책내용 입니다
            </textarea>
            </div>
            <div class="mb-3 mt-3" style="border: 1px solid darkcyan">
                <label for="content" class="form-label">삭제 사유</label>
                <textarea class="form-control" id="detail" rows="5"></textarea>
            </div>
        </div>
    </form>

</div>
<%@ include file="../../layout/footer.jsp" %>