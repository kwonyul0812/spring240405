USE w3schools;

# DEFAULT : 기본값을 주지 않을 때의 기본값을 정의
CREATE TABLE my_table13
(
    col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'abc'
);
INSERT INTO my_table13
    (col1, col2)
VALUES ('qwe', 'zxc');
INSERT INTO my_table13
    (col2)
VALUES ('iop');
INSERT INTO my_table13
    (col1)
VALUES ('bnm');
INSERT INTO my_table13
    (col1, col2)
VALUES ('jkl', NULL);

SELECT *
FROM my_table13;
DESC my_table13;


# my_table14 테이블 만들기
# 4개의 컬럼 정의
# 하나는 제약사항 없이
# 하나는 NOT NULL 만
# 하나는 DEFAULT 만
# 하나는 NOT NULL DEFAULT
CREATE TABLE my_table14
(
    col1 VARCHAR(30),
    col2 VARCHAR(30) NOT NULL,
    col3 VARCHAR(30)          DEFAULT 'abc',
    col4 VARCHAR(30) NOT NULL DEFAULT 'def'
);
INSERT INTO my_table14
    (col1, col2)
VALUES ('aaa', 'bbb');
INSERT INTO my_table14
    (col2, col3)
VALUES ('aaa', 'ccc');

SELECT *
FROM my_table14;
