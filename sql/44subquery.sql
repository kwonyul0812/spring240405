USE w3schools;

# 1행 1열 결과 (scalar)
SELECT AVG(Price)
FROM Products;

SELECT *
FROM Products
WHERE Price >= 28.866364;

SELECT *
FROM Products
WHERE Price >= (SELECT AVG(Price) FROM Products);

# todo : 1번 카테고리 상품의 평균가격보다 높은 2번 카테고리 상품명 조회
SELECT ProductName
FROM Products
WHERE CategoryID = 2
  AND Price > (SELECT AVG(Price) FROM Products WHERE CategoryID = 1);

# 여러행 1열 결과

SELECT CustomerID
FROM Customers
WHERE Country = 'mexico';

# mexico 고객이 주문한 건들 조회
SELECT *
FROM Orders
WHERE CustomerID IN (2, 3, 13, 58, 80);

SELECT *
FROM Orders
WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE Country = 'mexico');

SELECT *
FROM Orders o
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
WHERE Country = 'mexico';

# todo : 1번 카테고리 상품들이 주문된 날짜들 조회
SELECT p.ProductName 상품명, o.OrderDate 주문날짜
FROM OrderDetails od
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Orders o ON od.OrderID = o.OrderID
WHERE p.CategoryID = 1;

SELECT OrderDate
FROM Orders
WHERE OrderID IN (SELECT OrderID
                  FROM OrderDetails
                  WHERE ProductID IN (SELECT ProductID
                                      FROM Products
                                      WHERE CategoryID = 1));

# 여러행 여러열 결과
SELECT City, Country
FROM Customers
WHERE CustomerID IN (1, 2);

SELECT CustomerName
FROM Customers
WHERE (City, Country) IN (SELECT City, Country
                          FROM Customers
                          WHERE CustomerID IN (1, 2));

SELECT CustomerID, CustomerName, City, Country
FROM Customers;

SELECT CustomerName, City
FROM (SELECT CustomerID, CustomerName, City, Country
      FROM Customers) AS miniCustomers;


# 상관서브쿼리(속도가 좀 느린편, 조인으로 해결할 수 있는 지 고민)
# 외부쿼리의 값이 내부 쿼리에 사용될 때

# 각 고객의 주문 횟수
SELECT CustomerName,
       Country,
       (SELECT COUNT(OrderID)
        FROM Orders o
        WHERE o.CustomerID = c.CustomerID)
FROM Customers c;

SELECT CustomerName, Country, COUNT(OrderID)
FROM Customers c
         LEFT JOIN Orders o
                   ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

SELECT COUNT(OrderID)
FROM Orders
WHERE CustomerID = 5;


# todo : 상품별 총 매출금액
SELECT ProductID,
       ProductName,
       (SELECT SUM(od.Quantity)
        FROM OrderDetails od
        WHERE od.ProductID = p.ProductID) * Price AS 매출액
FROM Products p;