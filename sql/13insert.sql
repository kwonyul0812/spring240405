USE w3schools;

# INSERT INTO 테이블명 (컬럼명...)
# VALUES (데이터들)

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;
DESC Employees;

INSERT INTO Employees (LastName)
VALUES ('ironman');

INSERT INTO Employees (FirstName)
VALUES ('tony');

# null : 값이 없음

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('captian', 'steve', '1990-01-01', 'pic1', 'america');

INSERT INTO Employees
    (FirstName, LastName)
VALUES ('natasha', 'widow');

# todo : 세 고객을 2개 입력하세요
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('KingDavid', 'David Chirs', 'Gang nam 51', 'Seoul', '1004', 'Republic of korea');
INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('LosaQueen', 'Losa Kim', 'Gang nam 55', 'Seoul', '123123', 'Republic of korea');

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

DESC Employees;
SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

