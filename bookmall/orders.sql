-- order ���̺�(�ֹ���ȣ, ����ȣ, ������ȣ, �ǸŰ���, �ֹ���)
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    custid  NUMBER NOT NULL,
    bookid  NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,
    -- �ܷ�Ű ����
    CONSTRAINT cus_fk FOREIGN KEY(custid)
    REFERENCES customer(custid),
    CONSTRAINT book_fk FOREIGN KEY(bookid)
    REFERENCES book(bookid)
);

-- orders �ڷ� ����
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (2, 1, 3, 2100, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-05', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (6, 1, 2, 12000, TO_DATE('2018-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (7, 4, 8, 13000, TO_DATE('2018-07-07', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (8, 3, 10, 12000, TO_DATE('2018-07-08', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (9, 2, 10, 7000, TO_DATE('2018-07-09', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (10, 3, 8, 13000, TO_DATE('2018-07-10', 'YYYY-MM-DD'));

-- orders 2�� 2100�� -> 21000������ ����
UPDATE orders SET saleprice = 21000
WHERE orderid = 2;

SELECT * FROM orders;

--���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) ���Ǹž�, AVG(saleprice) ��ձݾ�
FROM orders;

-- ������ ���� �Ǹ� �Ǽ��� ���Ͻÿ�
SELECT COUNT(*) ���ǸŰǼ�
FROM orders;

-- 2�� ���� �ֹ� ���� �˻��ϱ�
-- 2�� ��(�迬��)�� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT *
FROM orders
WHERE custid = 2;
 
SELECT SUM(saleprice) �Ѹ���
FROM orders
WHERE custid = 2;

-- ������ 8000�� �̻��� ������ ������ ���� �ֹ������� �� ������ ���Ͻÿ�
-- ��, 2�� �̻� ������ ���� ã���ÿ�.
SELECT custid, COUNT(*) �Ѽ���
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING COUNT(*) >= 2;

-- ROWNUMVER

-- ����(1�� ���̺� �̻� �����ϴ� ���)
/*SELECT ord.*, cus.*
FROM orders ord, customer cus
WHERE ord.custid = cus.custid;*/

SELECT cus.name, ord.saleprice, ord.orderdate
FROM orders ord, customer cus
WHERE ord.custid = cus.custid
AND cus.name = '�迬��';

-- �� �̸����� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
-- ���踦 ���Ҷ��� GROUP BY �� ��� 
-- HAVING ���� GROUP BY�� ���� ��� ��Ÿ���� �׷��� �����ϴ� ����
SELECT cus.name, SUM(ord.saleprice)
FROM orders ord, customer cus
WHERE ord.custid = cus.custid
GROUP BY cus.name
HAVING cus.name = '������';

-- 1 ��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
SELECT name, address FROM customer;

-- 2 ��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�
SELECT name, address, phone FROM customer;

-- 3 �ּҰ� '����'�� ���� �˻��Ͻÿ�
SELECT * FROM customer WHERE address not like '%����%';
select * from customer where address like '%����%';

-- 4 ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
SELECT * FROM customer WHERE name in ('�迬��', '�Ȼ�');

--5 �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
SELECT * FROM customer WHERE address not like '���ѹα�%';

--6 ��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
SELECT * FROM customer WHERE phone is null;

--7 ���� �̸������� �����Ͻÿ�
SELECT * FROM customer order by name;

--8 ���� �� �ο����� ���Ͻÿ�
SELECT COUNT(*) ���ο��� FROM customer;



COMMIT;