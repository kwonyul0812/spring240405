USE w3schools;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;

SELECT Count(*)
FROM Customers;

# 직원 테이블 데이터 추가
INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

SELECT EmployeeID
FROM Employees
LIMIT 368;

DELETE
FROM Employees
WHERE EmployeeID > 580;

SELECT Count(*)
FROM Customers;

SELECT *
FROM Employees;

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

DELETE
FROM Customers
WHERE CustomerID = 484;