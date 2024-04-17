<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }

        td:nth-child(4) {
            width: 5%;
        }
    </style>
</head>
<body>
<form action="">
    검색 :
    <input type="text" name="search" value="${prevSearch}" placeholder="이름을 입력하세요">
    <button>조회</button>
</form>
<hr>
<c:if test="${empty employeeList}" var="emptyEmployee">
    <h2>검색 결과가 없습니다.</h2>
</c:if>

<c:if test="${not emptyEmployee}">
    <table>
        <thead>
        <tr>
            <th>EmployeeID</th>
            <th>LastName</th>
            <th>FirstName</th>
            <th>BirthDate</th>
            <th>Photo</th>
            <th>Notes</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${employeeList}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.lastName}</td>
                <td>${employee.firstName}</td>
                <td>${employee.birthDate}</td>
                <td>${employee.photo}</td>
                <td>${employee.notes}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
