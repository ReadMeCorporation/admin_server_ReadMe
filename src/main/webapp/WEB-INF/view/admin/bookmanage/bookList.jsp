<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../../layout/header.jsp" %>
<%@ include file="../../layout/headerBook.jsp" %>

    <div class="" style="border: 1px solid orange" >

        <table class="table">
            <thead>
            <tr>
                <th scope="col">NO</th>
                <th scope="col">표지</th>
                <th scope="col">도서명</th>
                <th scope="col">저자</th>
                <th scope="col">출판사</th>
                <th scope="col">등록일</th>
                <th scope="col">상태</th>
                <th scope="col"> </th>
            </tr>
            </thead>
            <tbody>
<%-- --%>
<tr>
    <th scope="row">1</th>
    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>
    <td><a href="/books/detail/1">1984</a></td>
    <td>조지오웰</td>
    <td>그린아카데미</td>
    <td>2023.03.01</td>
    <td>
        <select class="form-select" name="BigCategory">
            <option selected>상태</option>
            <option value="활성">활성</option>
            <option value="비활성">비활성</option>
        </select>
    </td>
    <td> <button>변경</button> </td>
</tr>
<tr>
    <th scope="row">2</th>
    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>
    <td><a href="/books/detail/1">1984</a></td>
    <td>조지오웰</td>
    <td>그린아카데미</td>
    <td>2023.03.01</td>
    <td>
        <select class="form-select" name="BigCategory">
            <option selected>상태</option>
            <option value="활성">활성</option>
            <option value="비활성">비활성</option>
        </select>
    </td>
    <td> <button>변경</button> </td>
</tr>
<tr>
    <th scope="row">3</th>
    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>
    <td><a href="/books/detail/1">1984</a></td>
    <td>조지오웰</td>
    <td>그린아카데미</td>
    <td>2023.03.01</td>
    <td>
        <select class="form-select" name="BigCategory" >
            <option selected>상태</option>
            <option value="활성">활성</option>
            <option value="비활성">비활성</option>
        </select>
    </td>
    <td> <button>변경</button> </td>
</tr>
<tr>
    <th scope="row">4</th>
    <td><img src="/images/gray.png" style="width: 75px;height: 100px"></td>
    <td><a href="/books/detail/1">1984</a></td>
    <td>조지오웰</td>
    <td>그린아카데미</td>
    <td>2023.03.01</td>
    <td>
        <select class="form-select" name="BigCategory" >
            <option selected>상태</option>
            <option value="활성">활성</option>
            <option value="비활성">비활성</option>
        </select>
    </td>
    <td> <button>변경</button> </td>
</tr>
<%-- --%>
            </tbody>
        </table>

    </div>

</div>

<script>


</script>


    <%@ include file="../../layout/footer.jsp" %>