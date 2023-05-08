<%@ page import="shop.readmecorp.adminserverreadme.modules.publisher.entity.Publisher" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>

<h1>
    리뷰관리
</h1>

    <div class="" style="border: 1px solid gray" >

        <table class="table">
            <thead class="table-secondary">
            <tr>
                <th scope="col">NO</th>
                <th scope="col">리뷰내용</th>
                <th scope="col">도서명</th>
                <th scope="col">별점</th>
                <th scope="col">상태</th>
                <th scope="col">요청</th>
            </tr>
            </thead>
            <tbody id="reviewListTbody">

            </tbody>
        </table>
    </div>
</div>

<div class="modal fade" id="deleteModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">삭제 요청을 하시겠습니까?</h5>
            </div>
            <div class="modal-body" style="text-align: center">
                삭제 요청하신 댓글은 관리자의 검토 후 처리하도록 하겠습니다.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                <button type="button" class="btn btn-danger" id="confirmDelete">확인</button>
            </div>
        </div>
    </div>
</div>




<script>
    $(document).ready(function() {
        // 세션에서 publisherId 가져오기
        const publisherId = '<%= request.getSession().getAttribute("principal") != null ? ((Publisher) request.getSession().getAttribute("principal")).getId() : 0 %>';

        // publisherId 존재하는 경우에만 API 요청을 보냅니다.
        if (publisherId !== 0) {
            $.ajax({
                url: `http://localhost:8080/api/publishers/reviews?page=0&size=200`,
                type: 'GET',
                dataType: 'json',
                data: { publisherId: publisherId }
            })
                .done((res) => {
                    populateTable(res.content);
                })
                .fail((err) => {
                    alert(err.responseJSON.msg);
                })
        }

        $('#deleteModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); // 삭제 버튼을 클릭한 요소
            var reviewId = button.data('id'); // 삭제하려는 리뷰의 ID

            // 삭제 확인 버튼에 리뷰 ID를 저장
            var confirmDelete = $('#confirmDelete');
            confirmDelete.data('id', reviewId);
        });

        $('#confirmDelete').on('click', function () {
            var reviewId = $(this).data('id'); // 삭제하려는 리뷰의 ID
            $.ajax({
                url: 'http://localhost:8080/reviews/' + reviewId+'/state',
                type: 'PUT',
                dataType: 'json',
                contentType: 'application/json',
                data: JSON.stringify({
                    status: 'WAIT'
                })
            })
                .done((res) => {
                    alert("리뷰 삭제신청이 되었습니다.");
                    location.reload();
                })
                .fail((err) => {
                    alert("리뷰 삭제 신청에 실패했습니다. 오류: " + err.responseJSON.msg);
                });
            // 모달 창을 닫습니다.
            $('#deleteModal').modal('hide');
        });
    });

    function populateTable(reviews) {
        var tbody = $('#reviewListTbody');
        tbody.empty();
        for (var i = 0; i < reviews.length; i++) {
            var review = reviews[i];
            var tr = $('<tr>');
            tr.append('<th scope="row">' + (i + 1) + '</th>');
            tr.append('<td>' + review.content + '</td>');
            tr.append('<td>' + review.book.title + '</td>');
            tr.append('<td>' + review.stars + '</td>');
            tr.append('<td>' + getStatusInKorean(review.status) + '</td>');

            if (review.status == 'ACTIVE'){
                tr.append(`
                    <td>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal" data-id="`+ review.id + `">삭제</button>
                    </td>
                `);
            } else{
                tr.append(`
                    <td>
                        <button type="button" class="btn btn-secondary" disabled>삭제</button>
                    </td>
                `);
            }
            tbody.append(tr);
        }
    }

    // 상태값을 한글로 치환
    function getStatusInKorean(status) {
        switch (status) {
            case 'ACTIVE':
                return '-';
            case 'DELETE':
                return '삭제';
            case 'WAIT':
                return '대기';
            case 'REJECTED':
                return '거부됨';
            default:
                return status;
        }
    }


</script>

<%@ include file="../../layout/footer.jsp" %>