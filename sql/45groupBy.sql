# 45groupBy.sql

USE w3schools;

# GROUP BY : 집계함수(avg, sum, count, min, max)를 그룹별로 결과 내게 함
SELECT CategoryId, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT CategoryId                          번호,
       (SELECT c.CategoryName
        FROM Categories c
        WHERE c.CategoryID = p.CategoryID) 이름,
       COUNT(ProductID)                    상품수
FROM Products p
GROUP BY CategoryID;

SELECT c.CategoryID       번호,
       c.CategoryName     이름,
       COUNT(p.ProductID) 상품수
FROM Categories c
         JOIN Products p
              ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID;


SELECT e.EmployeeId,
       e.LastName,
       e.FirstName,
       SUM(od.Quantity * p.Price) 매출액
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
         JOIN Employees e
              ON o.EmployeeID = e.EmployeeID
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31'
GROUP BY e.EmployeeID
ORDER BY 매출액 DESC;

# todo : 1997년 7월 기준 고객별 소비금액을 금액이 높은 순서로 조회
SELECT c.CustomerID,
       c.CustomerName,
       SUM(p.Price * od.Quantity) 소비금액
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY c.CustomerID
ORDER BY 소비금액 DESC
LIMIT 5;

SELECT Country, City, COUNT(CustomerID)
FROM Customers
GROUP BY Country, City;

# 고객별, 상품별 주문량

SELECT c.CustomerId  고객번호,
       c.CustomerName,
       p.ProductID,
       p.ProductName,
       SUM(Quantity) 상품주문수
FROM OrderDetails od
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
GROUP BY c.CustomerID, p.ProductID
ORDER BY 고객번호, 상품주문수 DESC;


# todo : 국가별, 상품별 판매 갯수 조회(국가(asc), 상품판매수(desc) 순 정렬)

SELECT p.ProductName, c.Country 국가, SUM(od.Quantity) 판매량
FROM Products p
         JOIN OrderDetails od ON p.ProductID = od.ProductID
         JOIN Orders o ON od.OrderID = o.OrderID
         JOIN Customers c ON o.CustomerID = c.CustomerID
GROUP BY 국가, p.ProductID
ORDER BY 국가, 판매량 DESC;

# 상품별, 국가별 주문수량
SELECT ProductName,
       c.Country,
       SUM(Quantity) 수량
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
GROUP BY p.ProductID, c.Country
ORDER BY p.ProductId, 수량 DESC;



SELECT SUM(QUAntity)
FROM OrderDetails;





