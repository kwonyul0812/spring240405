<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
    <style>

        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }

        td {
            text-align: center;
        }

        table {
            width: 100%;
        }
    </style>
</head>
<body>
<form action="">
    검색 :
    <input type="text" name="search" value="${prevSearch}" placeholder="상품을 입력하세요">
    <%--    form 내의 button 요소는 submit 버튼 역할함 --%>
    <button>조회</button>
    <%--    <input type="submit" value="조회">--%>
</form>
<hr>

<form>
    카테고리 선택
    <div>
        <select name="category" multiple>
            <c:forEach items="${categoryList}" var="category">
                <c:set value="false" var="selected"></c:set>
                <c:forEach items="${prevCategorySelect}" var="prevSelect">
                    <c:if test="${category.id == prevSelect}">
                        <c:set var="selected" value="true"></c:set>
                    </c:if>
                </c:forEach>

                <option ${selected ? "selected" : ""} value="${category.id}">${category.name}</option>
            </c:forEach>
        </select>
    </div>
    <div>
        <button>조회</button>
    </div>
</form>

<hr>

<c:if test="${empty productList}" var="emptyProducts">
    <p>조회된 상품이 없습니다.</p>
</c:if>

<c:if test="${not emptyProducts}">
    <div>
        <table>
            <thead>
            <tr>
                <th>ProductID</th>
                <th>ProductName</th>
                <th>SupplierID</th>
                <th>CategoryID</th>
                <th>Unit</th>
                <th>Price</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${productList}" var="product">
                <tr>
                    <td>${product.productId}</td>
                    <td>${product.productName}</td>
                    <td>${product.supplierID}</td>
                    <td>${product.categoryID}</td>
                    <td>${product.unit}</td>
                    <td>${product.price}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</c:if>
</body>
</html>
