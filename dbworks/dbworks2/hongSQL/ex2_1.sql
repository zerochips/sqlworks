-- ex2_1 ���̺� --
CREATE TABLE ex2_1(
    column1 CHAR(10),
    column2 VARCHAR2(10),
    column3 NUMBER
);

INSERT INTO ex2_1(column1, column2, column3) VALUES ('abc', 'abc', 100);

SELECT * FROM ex2_1;

-- CHAR�� VARCHAR2�� ũ�� ��--
SELECT column1, LENGTH(column1) as len1,
       column2, LENGTH(column2) as len2
FROM ex2_1;

