<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, th, td {
            border-collapse: collapse;
            border: 1px solid black;
        }

        table {
            width: 100%;
        }

        .active {
            background-color: blue;
            color: white;
        }

        .choice {
            border: 1px solid black;
            margin: 0 auto;
        }
    </style>
</head>
<body>
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
    <c:forEach items="${employees}" var="employee">
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


<div>
    <c:if test="${currentPage != 1}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="1"/>
        </c:url>
        <span>
            <a href="${link}">맨앞</a>
        </span>
    </c:if>


    <c:if test="${not empty prevPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${prevPageNumber}"/>
        </c:url>
        <span>
        <a href="${link}">이전</a>
    </span>
    </c:if>

    <c:forEach begin="${beginPageNumber}" end="${endPageNumber}" var="pageNumber">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${pageNumber}"/>
        </c:url>
        <span>
            <a class="${currentPage eq pageNumber ? 'active' : ''}"
               href="${link}">${pageNumber}</a>
        </span>
    </c:forEach>

    <c:if test="${not empty nextPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${nextPageNumber}"/>
        </c:url>
        <span>
        <a href="${link}">다음</a>
    </span>
    </c:if>

    <c:if test="${currentPage != lastPageNumber}">
        <c:url var="link" value="/main27/sub2">
            <c:param name="page" value="${lastPageNumber}"/>
        </c:url>
        <span>
            <a href="${link}">맨뒤</a>
        </span>
    </c:if>
</div>

</body>
</html>
