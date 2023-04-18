-- Mytest
CREATE TABLE Mytest(
    class   VARCHAR2(1),
    name    VARCHAR2(6)
);
AlTER TABLE Mytest ADD no NUMBER 0;

INSERT INTO Mytest VALUES ('A', '조조');
INSERT INTO Mytest VALUES ('A', '조조');
INSERT INTO Mytest VALUES ('A', '조조');
INSERT INTO Mytest VALUES ('B', '조조');
INSERT INTO Mytest VALUES ('B', '조조');
INSERT INTO Mytest VALUES ('C', '여포');
INSERT INTO Mytest VALUES ('C', '여포');

UPDATE Mytest set name = '유비'
where class = 'B';

SELECT * FROM Mytest;

-- 반별 학생별 학생수를 구하시오
SELECT class, count(*) result1
FROM Mytest
group by class;

-- 이름 - 중복제거
SELECT class, count(distinct name) result2
FROM Mytest
group by class;

-- CASE WHEN
SELECT
        CASE
            WHEN class = 'A' THEN 1
        END AS A
FROM Mytest;

-- CASE WHEN
SELECT
        COUNT(CASE
            WHEN class = 'A' THEN 1
        END)AS A
FROM Mytest;

-- CASE WHEN
SELECT
        COUNT(CASE WHEN class = 'A' THEN 1 END)AS A,
        COUNT(CASE WHEN class = 'B' THEN 1 END)AS B,
        COUNT(CASE WHEN class = 'C' THEN 1 END)AS C
FROM Mytest;

-- DECODE(칼럼, 조건, 참인값, 거짓인값)
SELECT
        COUNT(DECODE(class, 'A', 1)) AS A,
        COUNT(DECODE(class, 'B', 1)) AS B,
        COUNT(DECODE(class, 'C', 1)) AS C
FROM Mytest;
