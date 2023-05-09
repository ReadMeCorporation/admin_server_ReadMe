<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBanner.jsp" %>

<h1>
    배너 등록
</h1>
<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

        <div class="mb-3 mt-3">
            <label for="bannerImage" class="form-label">배너 이미지</label>
            <input type="file" class="form-control" id="bannerImage" name="bannerImage" accept="image/*">
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
        formData.append('bannerImage', $('#bannerImage').get(0).files[0]);

        $.ajax({
            type: 'post',
            url: '/banners',
            data: formData,
            contentType: false,
            processData: false,
            dataType: "json"
        }).done((res) => { // 20X 일때
            alert(res.msg);
            location.href = "/admins/banners";
        }).fail((err) => { // 40X, 50X 일때
            alert(err.responseJSON.msg);
        });
    }


</script>

<%@ include file="../../layout/footer.jsp" %>