-- sample ��ƼƼ
CREATE TABLE sample(
    col1 NUMBER,
    col2 NUMBER
);

CREATE TABLE sample2(
    str1 VARCHAR2(20),
    str2 VARCHAR2(20)
);

CREATE TABLE sample3(
    col1 NUMBER,
    col2 NUMBER,
    col3 NUMBER
);

-- sample ������ �߰�
INSERT INTO sample(col1, col2) VALUES (10, 5);
INSERT INTO sample(col1) VALUES (20);
INSERT INTO sample(col2) VALUES (15);

-- sample2 ������ �߰�
INSERT INTO sample2 VALUES ('����', '�հ��Ѵ�.');

-- sample3 ������ �߰�
INSERT INTO sample3(col1, col2, col3) VALUES (NULL, 30, 15);
INSERT INTO sample3(col1, col2, col3) VALUES (25, NULL, 0);
INSERT INTO sample3(col1, col2, col3) VALUES (65, 20, NULL);

SELECT SUM(col1), SUM(col2) FROM sample WHERE col2 > 5;
SELECT SUM(col1), SUM(col2) FROM sample WHERE col2 IS NOT NULL;
-- NULL�� ���ԵǾ� ������ ������� NULL�� ��
SELECT col1 + col2 AS result FROM sample;

SELECT * FROM sample;

-- ���� ����
SELECT str1 || ' ' || 'SQLD' || ' ' || str2 AS result
FROM sample2;

-- ���� �Լ�
SELECT CHR(65) FROM dual;
SELECT LTRIM('   JENNIE') FROM dual;
SELECT LTRIM('����ũ', '��') FROM dual; --��ũ
SELECT RTRIM('����ũ', '��ũ') FROM dual; --��
SELECT SUBSTR('����ũ����', 3, 4) FROM dual; --��ũ����
SELECT REPLACE('����ũ����', '����', '����') FROM dual; --����ũ����

-- ���� �Լ�
SELECT AVG(col1) result1,
       SUM(col2) result2,
       COUNT(col3) result3
FROM sample3;

COMMIT;





