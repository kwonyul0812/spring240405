<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>고객 이름들</h1>
<table>
    <c:forEach items="${name}" var="name" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${name}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
