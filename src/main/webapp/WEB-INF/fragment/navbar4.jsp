<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    a {
        border: 1px solid black;
    }

    .active {
        background-color: skyblue;
        font-weight: bold;
    }
</style>

<div style="display:flex; justify-content: space-between">
    <div>
        <a href="/main17/sub6" class="${param.current eq 'sub6' ? 'active' : ''}">sub6</a>
        <a href="/main17/sub7" class="${param.current eq 'sub7' ? 'active' : ''}">sub7</a>
        <a href="/main17/sub8" class="${param.current eq 'sub8' ? 'active' : ''}">sub8</a>
    </div>
    <div>
        <c:if test="${not empty sessionScope.userName}" var="loggedIn">
            ${sessionScope.userName}

            <a href="/main17/sub10">logout</a>
        </c:if>
        <c:if test="${not loggedIn}">
            guest
        </c:if>
        님
    </div>
</div>