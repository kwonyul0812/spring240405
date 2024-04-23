<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>\</title>
</head>
<body>
<h3>직원 조회 및 수정</h3>
<form action="">
    번호
    <input type="number" name="id">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employee}">
    <form action="/main32/sub6/update" method="post">
        <div>
            last name
            <input type="text" value="${employee.lastName}" name="lastName">
        </div>
        <div>
            first name
            <input type="text" value="${employee.firstName}" name="firstName">
        </div>
        <div>
            birth
            <input type="text" value="${employeee.birthDate}" name="birthDate">
        </div>
        <div>
            photo
            <input type="text" value="${employee.photo}" name="photo">
        </div>
        <div>
            notes
            <input type="text" value="${employee.notes}" name="notes">
        </div>
        <div></div>
        <div></div>
    </form>
</c:if>
</body>
</html>
