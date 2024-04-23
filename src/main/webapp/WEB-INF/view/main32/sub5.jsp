<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <div>성
        <input type="text" name="lastName">
    </div>
    <div>이름
        <input type="text" name="firstName">
    </div>
    <div>생일
        <input type="Date" name="birthDate">
    </div>
    <div>사진
        <input type="text" name="photo">
    </div>
    <div>메모
        <textarea name="notes" cols="30" rows="10"></textarea>
    </div>
    <div>
        <button>추가</button>
    </div>
</form>
</body>
</html>
