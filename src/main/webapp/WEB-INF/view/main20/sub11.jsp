<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/main20/sub12">
    <input type="text" name="type">
    <br>
    <textarea name="content"></textarea>
    <br>
    <%--    select>option--%>
    <select name="city" id="">
        <option value="london"></option>
        <option value="seoul"></option>
        <option value="chicago"></option>
    </select>
    <br>
    <input type="submit">
</form>

<hr>

<form action="/main20/sub13">
    <%--    div>div*3>input:r[name=city]--%>
    <div>
        <div>
            <input type="radio" name="city" value="seoul" id="">
            서울
        </div>
        <div>
            <input type="radio" name="city" value="london" id="">
            런던
        </div>
        <div>
            <input type="radio" name="city" value="incheon" id="">
            인천
        </div>
    </div>
    <div>
        <input type="submit">
    </div>
</form>

<%--form>div*3>input:c[name=foods]--%>
<form action="/main20/sub14">
    <div>
        <input type="checkbox" name="foods" value="pizza" id="">
        피자
    </div>
    <div>
        <input type="checkbox" name="foods" value="noodle" id="">
        국수
    </div>
    <div>
        <input type="checkbox" name="foods" value="burger" id="">
        햄버거
    </div>
    <div>
        <input type="submit">
    </div>
</form>

<hr>

<form action="/main20/sub15">
    <div>
        <select name="type" id="">
            <option value="smartphone">스마트폰</option>
            <option value="tablet">태블릿</option>
            <option value="notebook">노트북</option>
        </select>
    </div>
    <div>
        <div>
            <input type="radio" name="phone" value="iphone" id="">
            IPHONE
        </div>
        <div>
            <input type="radio" name="phone" value="galaxy" id="">
            GALAXY
        </div>
        <div>
            <input type="radio" name="phone" value="xiaomi" id="">
            XIAOMI
        </div>
    </div>
    <div>
        <div>
            <input type="checkbox" name="book" value="value1" id="">
            자바의정석
        </div>
        <div>
            <input type="checkbox" name="book" value="value2" id="">
            스프링부트
        </div>
        <div>
            <input type="checkbox" name="book" value="value3" id="">
            이것이 자바다
        </div>
    </div>
    <div>
        <input type="submit">
    </div>
</form>
</body>
</html>
