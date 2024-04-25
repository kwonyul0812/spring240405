USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음
CREATE TABLE my_table15
(
    col1 VARCHAR(3),
    col2 VARCHAR(3) UNIQUE
);
INSERT INTO my_table15
    (col1, col2)
VALUES ('abc', 'def');
INSERT INTO my_table15
    (col1, col2)
VALUES ('qwe', 'qwe');
INSERT INTO my_table15
    (col1, col2)
VALUES ('abc', 'abc');
INSERT INTO my_table15
    (col1, col2)
VALUES ('def', 'def');
INSERT INTO my_table15
    (col1)
VALUES ('qwe');
INSERT INTO my_table15
    (col1)
VALUES ('asd');

DESC my_table15;
SELECT *
FROM my_table15;


# my_table16
# 제약사항없이
# UNIQUE
# NOT NULL UNIQUE
CREATE TABLE my_table16
(
    col1 VARCHAR(30),
    col2 VARCHAR(30) UNIQUE,
    col3 VARCHAR(30) NOT NULL UNIQUE
);

INSERT INTO my_table16
    (col1, col2, col3)
VALUES ('abc', 'abc', 'abc');
INSERT INTO my_table16
    (col2, col3)
VALUES ('asd', 'asd');
INSERT INTO my_table16
    (col2, col3)
VALUES (NULL, '123');
INSERT INTO my_table16
    (col2, col3)
VALUES (NULL, 'aaa');

SELECT *
FROM my_table16;
DESC my_table16;