<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: lightcoral; padding: 20px;">
            ${message}
    </div>
</c:if>
<h3>직원 조회</h3>
<form action="">
    직원번호
    <input type="text" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">
    조회된 직원이 없습니다.
</c:if>
<c:if test="${not empty employee}">
    <div>ID
        <input type="text" readonly value="${employee.id}">
    </div>
    <div>성
        <input type="text" readonly value="${employee.lastName}">
    </div>
    <div>이름
        <input type="text" readonly value="${employee.firstName}">
    </div>
    <div>생일
        <input type="text" readonly value="${employee.birthDate}">
    </div>
    <div>사진
        <input type="text" readonly value="${employee.photo}">
    </div>
    <div>메모
        <textarea resize="none" cols="30" rows="10" readonly>${employee.notes}</textarea>
    </div>

    <form action="/main29/sub2/delete" method="post" onsubmit="return confirm('삭제 하시겠습니까?')">
        <div hidden="hidden">
            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            <button>삭제</button>
        </div>
    </form>
</c:if>
</body>
</html>
