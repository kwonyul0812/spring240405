<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<form action="/main25/sub4">--%>
<%--    고객명 :--%>
<%--    <input type="text" name="search" placeholder="검색할 고객 이름을 입력하세요">--%>
<%--    <input type="submit" value="조회">--%>
<%--</form>--%>

<%--<hr>--%>

<%--<div>--%>
<%--    <c:forEach items="${customers}" var="customer">--%>
<%--        <h4>${customer.id}번 고객</h4>--%>
<%--        <p>--%>
<%--            이름:--%>
<%--            <input type="text" value="${customer.name}" readonly>--%>
<%--        </p>--%>
<%--        <p>--%>
<%--            주소:--%>
<%--            <input type="text" value="${customer.address}" readonly>--%>
<%--        </p>--%>
<%--        <p>--%>
<%--            도시:--%>
<%--            <input type="text" value="${customer.city}" readonly>--%>
<%--        </p>--%>
<%--        <p>--%>
<%--            국가:--%>
<%--            <input type="text" value="${customer.country}" readonly>--%>
<%--        </p>--%>
<%--    </c:forEach>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        table, tr, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<h3>고객 목록</h3>
<%-- action 의 값이 없거나 action이 생략되면 현재 요청 경로로 보냄 --%>
<form>
    이름
    <input type="text" value="${prevSearch}" placeholder="조회할 고객 이름을 입력하세요." name="search">
    <%--    검색창 값 유지 하는법, request param, model, session 이용 --%>
    <input type="submit" value="조회">
</form>
<hr>
<table>
    <thead>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>contact</th>
        <th>address</th>
        <th>city</th>
        <th>post</th>
        <th>country</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var="customer">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.name}</td>
            <td>${customer.contactName}</td>
            <td>${customer.address}</td>
            <td>${customer.city}</td>
            <td>${customer.postalCode}</td>
            <td>${customer.country}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
