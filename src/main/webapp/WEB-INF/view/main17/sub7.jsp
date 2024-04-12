<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>
        a {
            border: 1px solid black;
        }

        .active {
            background-color: skyblue;
            font-weight: bold;
        }
    </style>
</head>
<body>
<c:set var="current" value="sub7"/>
<div style="display:flex; justify-content: space-between;">
    <div>
        <a href="/main17/sub6" class="${current eq 'sub6' ? 'active' : ''}">sub6</a>
        <a href="/main17/sub7" class="${current eq 'sub7' ? 'active' : ''}">sub7</a>
        <a href="/main17/sub8" class="${current eq 'sub8' ? 'active' : ''}">sub8</a>
    </div>
    <div>
        <c:if test="${not empty sessionScope.userName}" var="loggedIn">
            ${sessionScope.userName} 님
        </c:if>
        <c:if test="${not loggedIn}">
            guest 님
        </c:if>
    </div>
</div>
<div>
    <form action="">
        <div>
            아이디
            <input type="text" name="id">
        </div>
        <div>
            <button>로그인</button>
        </div>
    </form>
</div>

</body>
</html>
