<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>if</h3>
<c:if test="${age>=20}">
    <p>투표 가능</p>
</c:if>
<c:if test="${age < 20}">
    <p>투표 불가능</p>
</c:if>

<%-- products 속성이 빈 리스트면 --%>
<%-- <p>상품이 없습니다.</p> --%>
<%-- products 속성이 빈 리스트가 아니면 2개의 요소를 출력--%>
<%-- --%>

<c:if test="${empty products}">
    <p>상품이 없습니다.</p>
</c:if>
<c:if test="${not empty products}">
    <ul>
        <li>${products[0]}</li>
        <li>${products[1]}</li>
    </ul>
</c:if>

<%-- 연산 결과를 attribute에 담아서 연산결과를 재사용 --%>
<c:if test="${5 < 8 && 9 > 2}" var="result">
    <p>연산 결과가 true일 때</p>
</c:if>
<c:if test="${not result}">
    <p>출력2</p>
</c:if>

<hr>
<h4>한국인이고 20살 이상만 투표 가능</h4>
<c:if test="${member.country == 'korea' && member.age >= 20}" var="result">
    <p>투표 가능</p>
</c:if>
<c:if test="${not result}">
    <p>투표 불가능</p>
</c:if>
</body>
</html>
