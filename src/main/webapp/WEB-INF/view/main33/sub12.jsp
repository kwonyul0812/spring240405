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
    </style>
</head>
<body>

<form action="" method="post">
    <div>
        제목
        <input type="text" name="title" value="임의의 책 제목">
    </div>
    <div>
        이름
        <input type="text" name="name" value="김철수">
    </div>
    <div>
        나이
        <input type="number" name="age" value="30">
    </div>
    <div>
        가격
        <input type="number" name="price" value="100.00" step="0.01">
    </div>
    <div>
        날짜
        <input type="date" name="published" value="1999-08-12">
    </div>
    <div>
        날짜시간
        <input type="datetime-local" name="inserted" value="1999-08-12T12:12:12" step="1">
    </div>
    <div>
        <input type="submit" value="입력">
    </div>
</form>

<hr>
<h3>my_table10 자료들</h3>
<table>
    <thead>
    <tr>
        <th>title</th>
        <th>name</th>
        <th>age</th>
        <th>price</th>
        <th>published</th>
        <th>inserted</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${datas}" var="data">
        <tr>
            <td>${data.title}</td>
            <td>${data.name}</td>
            <td>${data.age}</td>
            <td>${data.price}</td>
            <td>${data.published}</td>
            <td>${data.inserted}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
