<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border-collapse: collapse;
            border: 1px solid black;

        }

        table th {
            border: 1px solid black;
        }

        table td {
            border: 1px solid black;
        }

        table td:first-child {
            text-align: center;
        }
    </style>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>No.</th>
        <th>이름</th>
        <th>도시</th>
        <th>국가</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${csList}" var="cs" varStatus="stat">
        <tr>
            <td>${stat.count}</td>
            <td>${cs.customerName}</td>
            <td>${cs.city}</td>
            <td>${cs.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
