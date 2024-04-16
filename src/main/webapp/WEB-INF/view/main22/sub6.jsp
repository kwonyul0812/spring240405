<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${param.type eq 'fail'}">
    <div style="padding: 20px; background-color:pink;">
        아이디와 비밀번호가 틀립니다.
    </div>
</c:if>
<form action="/main22/sub7" method="post">
    <div>
        아이디 :
        <input type="text" name="id">
    </div>
    <div>
        비밀번호 :
        <input type="password" name="password">
    </div>
    <div>
        <input type="submit" value="로그인">
    </div>
</form>
</body>
</html>
