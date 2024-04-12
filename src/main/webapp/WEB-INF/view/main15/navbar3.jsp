<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .active {
        background-color: aqua;
    }
</style>
<div>
    <a href="/main15/sub5">
        <span class="${cur == 'sub5' ? 'active' : ''}" style="border: 1px solid black">sub5</span>
    </a>
    <a href="/main15/sub6">
        <span class="${cur eq 'sub6' ? 'active' : ''}" style="border: 1px solid black">sub6</span>
    </a>
</div>
