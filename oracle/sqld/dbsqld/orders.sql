-- order ���̺�(�ֹ���ȣ, ����ȣ, ������ȣ, �ǸŰ���, �ֹ���)
CREATE TABLE orders(
    orderid NUMBER(3) PRIMARY KEY,
    custid  NUMBER NOT NULL,
    bookid  NUMBER NOT NULL,
    saleprice NUMBER(7) NOT NULL,
    orderdate DATE NOT NULL,
    -- �ܷ�Ű ���� ���� --
    CONSTRAINT fk_customer FOREIGN KEY(custid)
    REFERENCES customer(custid),
    CONSTRAINT fk_book FOREIGN KEY(bookid)
    REFERENCES book(bookid)
);

-- orders �ڷ� ����
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01'));
INSERT INTO orders VALUES (2, 1, 3, 21000, TO_DATE('2018-07-03'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-03'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-04'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-05'));
INSERT INTO orders VALUES (6, 1, 2, 12000, TO_DATE('2018-07-07'));
INSERT INTO orders VALUES (7, 4, 8, 13000, TO_DATE('2018-07-07'));
INSERT INTO orders VALUES (8, 3, 10, 12000, TO_DATE('2018-07-08'));
INSERT INTO orders VALUES (9, 2, 10, 7000, TO_DATE('2018-07-09'));
INSERT INTO orders VALUES (10, 3, 8, 13000, TO_DATE('2018-07-10'));

SELECT * FROM orders;

-- ������ ���� �Ǹ� �ѰǼ��� ���Ͻÿ�
SELECT COUNT(*) ���ǸŰǼ�
FROM orders;

-- ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) ���Ǹž�
FROM orders;

-- 2�� ���� �ֹ� ������ �˻��Ͻÿ�
SELECT *
FROM orders
WHERE custid = 2;

-- 2018. 7. 7�Ͽ� �ֹ��� ������ �˻��Ͻÿ�
SELECT *
FROM orders
WHERE orderdate = '2018/07/07'; -- '2018-07-07' ����

-- ������ �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�(GROUP BY�� custid �̿�)
SELECT custid, SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY custid;

-- ������ �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�(��, ������ 8000�� �̻��� ����)
SELECT custid, SUM(saleprice) ���Ǹž�
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
ORDER BY custid;

-- ������ �ֹ��� ������ �ǸŰǼ��� ���Ͻÿ�.
SELECT custid, 
       SUM(saleprice) ���Ǹž�, 
       COUNT(*) �ǸŰǼ�
FROM orders
GROUP BY custid;

-- HAVING �� - GROUP BY�� ������ ������� ������ �δ� ������ ������ ��
-- ������ �ֹ��� ������ �ǸŰǼ��� ���Ͻÿ�.(��, �ǸŰǼ��� 3�� �̻� ���� ��)
SELECT custid, 
       SUM(saleprice) ���Ǹž�, 
       COUNT(*) �ǸŰǼ�
FROM orders
GROUP BY custid
HAVING COUNT(*) >= 3;




