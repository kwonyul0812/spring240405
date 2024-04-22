<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding: 20px;">
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
    <form action="/main30/sub2/update" method="post">
        <div>
            번호
            <input type="text" name="id" value="${employee.id}">
        </div>
        <div>
            성
            <input type="text" name="lastName" value="${employee.lastName}">
        </div>
        <div>
            이름
            <input type="text" name="firstName" value="${employee.firstName}">
        </div>
        <div>
            생일
            <input type="text" name="birthDate" value="${employee.birthDate}">
        </div>
        <div>
            사진
            <input type="text" name="photo" value="${employee.photo}">
        </div>
        <div>
            메모
            <textarea name="notes" cols="30" rows="10">${employee.notes}</textarea>
        </div>
        <div>
            <input type="submit" value="수정">
        </div>
    </form>
</c:if>
</body>
</html>
