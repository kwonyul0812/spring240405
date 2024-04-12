<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- el의 내장 객체 param: request parameter를
     key, value 쌍으로 저장한 Map --%>
<div>name : ${param.name}</div>
<%-- ${param["name"]} --%>
<div>age : ${param.age}</div>
<div>city : ${param.city}</div>
<div>address : ${param.address}</div>
<div>model : ${param.model}</div>

<hr>
<%-- 요청 주소에 적절한 query string 작성 --%>
<div>title : ${param.title}</div>
<div>content : ${param.content}</div>
<div>car : ${param.car}</div>

<hr>
<%-- ?q=bts&song=dynamite&company=하이브--%>
<div>그룹 : ${param.q}</div>
<div>노래 : ${param.song}</div>
<div>회사 : ${param["company"]}</div>
</body>
</html>
