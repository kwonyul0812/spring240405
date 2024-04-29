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
<h3>직원 매출 조회</h3>
<form action="">
    <div>
        년도
        <select name="year">
            <option value="1996">1996</option>
            <option value="1997">1997</option>
        </select>
    </div>
    <div>
        월
        <select name="month">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
        </select>
    </div>
    <div>
        <input type="submit" value="조회">
    </div>
</form>

<hr>

<c:if test="${empty paidList}">
    조회 결과가 없습니다.
    1996년 7월부터 1997년 11월 중에 조회 해주세요.
</c:if>
<c:if test="${not empty paidList}">
    <h3>${year}년 ${month}월 조회 결과</h3>

    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>CustomerName</th>
            <th>소비금액</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${paidList}" var="cs" varStatus="status">
            <tr>
                <td>${status.count}</td>
                <td>${cs.customerName}</td>
                <td>${cs.paid}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</body>
</html>
