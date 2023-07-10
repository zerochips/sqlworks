-- Mytest
CREATE TABLE Mytest(
    class   VARCHAR2(1),
    name    VARCHAR2(6)
);
AlTER TABLE Mytest ADD no NUMBER 0;

INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('B', '����');
INSERT INTO Mytest VALUES ('B', '����');
INSERT INTO Mytest VALUES ('C', '����');
INSERT INTO Mytest VALUES ('C', '����');

UPDATE Mytest set name = '����'
where class = 'B';

SELECT * FROM Mytest;

-- �ݺ� �л��� �л����� ���Ͻÿ�
SELECT class, count(*) result1
FROM Mytest
group by class;

-- �̸� - �ߺ�����
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

-- DECODE(Į��, ����, ���ΰ�, �����ΰ�)
SELECT
        COUNT(DECODE(class, 'A', 1)) AS A,
        COUNT(DECODE(class, 'B', 1)) AS B,
        COUNT(DECODE(class, 'C', 1)) AS C
FROM Mytest;
