-- function
-- NULL �� ó���ϱ�
SELECT * FROM customer;
SELECT * FROM orders;

SELECT * FROM customer WHERE phone IS NULL;

-- NVL(Į����, Ư����) : Į���̸��� NULL�� ��쿡 Ư������ ���, NULL�� �ƴϸ� Į���� ���
SELECT custid, name, address, NVL(phone, '010-1234-5678') phone
FROM customer;

CREATE TABLE K1(
    ID  VARCHAR2(3),
    CNT NUMBER(2)
);

INSERT INTO K1 VALUES ('��', 5);
INSERT INTO K1 VALUES ('��', NULL);
INSERT INTO K1 VALUES ('��', 5);
INSERT INTO K1 VALUES ('��', NULL);
INSERT INTO K1 VALUES ('��', 10);

SELECT*FROM K1;

-- ��ü ����, �հ�, ���, �ּҰ�
SELECT COUNT(*) FROM K1;    -- 5�� ����
SELECT COUNT(CNT) FROM K1;  -- 3�� ����

-- NULL�� 0���� �ٲ�
SELECT COUNT(NVL(CNT, 0)) COUNT FROM K1;    -- 5
SELECT SUM(NVL(CNT, 0))/4 SUM FROM K1;      -- 5
SELECT AVG(NVL(CNT, 0)) AVG FROM K1;        -- 4 
SELECT MIN(NVL(CNT, 5)) MIN FROM K1;        -- 4 NULL�� 5�� ���� 

SELECT SUM(NVL(CNT, 0)) SUM FROM K1;

COMMIT;
-- ----------------------------------------------------------------
-- RANK() �Լ�
SELECT empname,
       sal,
       RANK() OVER(ORDER BY sal DESC) �޿�_RANK,
       DENSE_RANK() OVER(ORDER BY sal DESC) �޿�_DENSE_RANK
FROM employee;