<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${not empty message}">
    <div style="background-color: skyblue; padding:20px; font-size: 30px">
            ${message}
    </div>
</c:if>
<hr>
<form action="" method="post">
    <div>
        성 :
        <input type="text" name="lastName">
    </div>
    <div>
        이름 :
        <input type="text" name="firstName">
    </div>
    <div>
        생일 :
        <input type="date" name="birthDate">
    </div>
    <div>
        사진 :
        <input type="text" name="photo">
    </div>
    <div>
        메모 :
        <textarea style="resize: none" name="notes" cols="30" rows="10"></textarea>
    </div>
    <input type="submit" value="등록">
</form>
</body>
</html>
