<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerNotice.jsp" %>

<h1>공지사항</h1>
<div class="p-3 mx-auto" style="border: 1px solid #00539C; width: 1000px" >

    <div>
        <h5><b>공지사항 이미지</b></h5>
        <img src="" style="height: 200px; width: 160px; margin-right: 70px" id="imageUrl">
    </div>

    <div class="mb-3 mt-3" >
        <label for="content" class="form-label">공지사항 내용</label>
        <textarea class="form-control" id="content" rows="5" readonly>

        </textarea>
    </div>

</div>

</div>

<script>
    $(document).ready(function() {
        $.ajax({
            url: `http://localhost:8080/api/notices/` + ${id} + `?page=0&size=200`,
            type: 'GET',
        })
            .done((res) => {
                populateTable(res.data);
            })
            .fail((err) => {
                alert(err.responseJSON.msg);
            })
    })

    function populateTable(notice) {
        $('#imageUrl').attr('src', notice.imageUrl);
        $('#title').val(notice.title);
        $('#content').val(notice.content);
    }

</script>
<%@ include file="../../layout/footer.jsp" %>