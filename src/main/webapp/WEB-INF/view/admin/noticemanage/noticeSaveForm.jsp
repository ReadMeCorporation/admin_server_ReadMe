<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerNotice.jsp" %>

<h1>
    공지사항 등록
</h1>
<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

        <div class="form-group pb-1">
            <input type="text" class="form-control form-control" placeholder="제목을 입력해주세요" name="title" id="title" value="공지사항 제목 테스트">
        </div>

        <hr>

        <div class="mb-3 mt-3" >
            <textarea class="form-control" name="content" id="content" rows="5" >공지사항 내용 테스트</textarea>
        </div>

        <div class="mb-3 mt-3">
            <label for="noticeImage" class="form-label">공지사항 이미지</label>
            <input type="file" class="form-control" id="noticeImage" name="noticeImage" accept="image/*">
        </div>

        <div class="d-flex justify-content-center">
            <button onclick="save()" type="button" class="btn btn-primary">등록</button>
        </div>
    </div>

</div>

<script>
    function save() {
        // FormData 객체 생성
        var formData = new FormData();

        // input 요소에서 값을 가져와서 FormData 객체에 추가
        formData.append('title', $('#title').val());
        formData.append('content', $('#content').val());
        formData.append('noticeImage', $('#noticeImage').get(0).files[0]);

        $.ajax({
            type: 'post',
            url: '/notices',
            data: formData,
            contentType: false,
            processData: false,
            dataType: "json"
        }).done((res) => { // 20X 일때
            alert(res.msg);
            location.href = "/admins/notices";
        }).fail((err) => { // 40X, 50X 일때
            alert(err.responseJSON.msg);
        });
    }


</script>

<%@ include file="../../layout/footer.jsp" %>