<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    a {
        border: 1px solid black;
        text-align: center;
    }

    .active {
        font-weight: bold;
        background-color: skyblue;
    }
</style>
<div>
    <a class="${param.sw eq 'sub12' ? 'active' : ''}" href="/main15/sub12">sub12</a>
    <a class="${param.sw eq 'sub13' ? 'active' : ''}" href="/main15/sub13">sub13</a>
</div>
