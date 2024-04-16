<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>No.</th>
        <th>국가</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${countries}" var="country" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
