<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach begin="1" end="3">
    <p>반복</p>
</c:forEach>
<hr>
<c:forEach begin="5" end="7" var="num">
    <p>code....${num}</p>
</c:forEach>
<hr>
<c:forEach begin="1" end="9" var="num">
    <p>2 X ${num} = ${2 * num}</p>
</c:forEach>

<hr>
<h5>구구단 ${dan}단</h5>
<c:forEach begin="1" end="9" var="num">
    <p>${dan} X ${num} = ${dan * num}</p>
</c:forEach>

<hr>
<h5>구구단 ${dan}단 거꾸로</h5>
<c:forEach begin="0" end="8" var="num">
    <p>${dan} X ${9-num} = ${dan * (9-num)}</p>
</c:forEach>
</body>
</html>
