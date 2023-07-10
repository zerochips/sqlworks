-- ���ΰ� ��������
SELECT * FROM customer;
SELECT * FROM book;
SELECT * FROM orders;

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT * 
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

SELECT cus.custid, cus.name, ord.saleprice, ord.orderdate
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

-- '�迬��' ���� �ֹ�����
SELECT cus.custid, cus.name, ord.saleprice, ord.orderdate
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND cus.name = '�迬��';

-- �Ǹ� ������ 20000�� �̻��� �ֹ� ����
SELECT cus.custid, cus.name, ord.saleprice, ord.orderdate
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND saleprice >= 20000;

-- �ֹ����� 2018-7-8 �ֹ� ����
SELECT cus.custid, cus.name, ord.saleprice, ord.orderdate
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND orderdate = '2018-7-8';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�(�Ʒ��� ������)
SELECT cus.name, SUM(saleprice) �Ǹűݾ�
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- ��(�̸�)���� �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�(rank�� �߰�)
SELECT cus.name, SUM(saleprice) �Ǹűݾ�,
       RANK() OVER(ORDER BY SUM(saleprice) DESC) ����
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- ���� �̸��� ���� �ֹ��� ������ �̸��� �˻��Ͻÿ�
SELECT cus.name, boo.bookname, ord.saleprice, ord.orderdate
FROM   customer cus, orders ord, book boo
WHERE  cus.custid = ord.custid
       AND boo.bookid = ord.bookid
       ORDER BY cus.name;  -- ������ �ϸ� �׷�ȭ�� ��
       
-- ������ ���� ��� ������ �̸��� �˻��Ͻÿ�
-- SELECT bookname, MAX(price) FROM book; -- ���� �߻� | ���� ���� �ʿ�
SELECT MAX(price) FROM book; 

SELECT bookname FROM book WHERE price = 35000;

-- ��ø ����
SELECT bookname, price FROM book 
WHERE price = (SELECT MAX(price) FROM book);
    
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
-- 1. �ֹ� ���̺��� �����̵� �˻�
SELECT custid FROM orders;

-- 2. �� ���̵� �ִ� ���̸� �˻�
SELECT name FROM customer WHERE custid IN(1, 2, 3, 4);

SELECT custid, name FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- ������ ������ ���� ���� ���� �̸��� �˻��Ͻÿ�
SELECT custid, name 
FROM customer
WHERE custid NOT IN(SELECT custid FROM orders);
    
-- '�迬��' ���� �ֹ������� �˻��Ͻÿ�
-- 1. �迬�� ���� ���̵� �˻�
-- 2. �迬�� ���� ���̵�� �ֹ����̺��� �˻�
SELECT custid FROM customer WHERE name = '�迬��';

SELECT * FROM orders
WHERE custid = (SELECT custid
                FROM customer
                WHERE name = '�迬��');
                
COMMIT;
-----------------------------------4/14(��)------------------------------------
-- �ζ��� �� : From �μ�����
-- ����ȣ�� 2������ ���� �Ǹž��� �˻��Ͻÿ�.
SELECT cus.name, SUM(ord.saleprice) total
FROM (SELECT custid, name FROM customer WHERE custid <= 2) cus, 
orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- ��(View) ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����� ��ȸ�Ͻÿ�
-- CREATE VIEW ���̸�
-- AS SELECT ��
CREATE VIEW vw_Customer
AS SELECT * FROM customer 
WHERE address LIKE '%���ѹα�%';

-- �� �˻�
SELECT * FROM vw_Customer;

-- �� ����
DROP VIEW vw_Customer;

-- �� ����� : ���� �̸��� �ֹ��� ������ �̸��� ������ �˻��Ͻÿ�
CREATE VIEW vw_Orders
AS SELECT cus.name, bo.bookname, ord.saleprice
FROM customer cus, orders ord, book bo
WHERE cus.custid = ord.custid
AND bo.bookid = ord.bookid;

-- ��� �˻�
SELECT * FROM vw_Orders;

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

-- STANDART JOIN (FROM ���� INNER JOIN ~ ON : ��������)
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;

-- OUTER JOIN : �ܺ� ����
-- JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϾ ��µ� �� �ִ� ���
-- LEFT OUTER JOIN, RIGHT OUTER JOIN
-- �ֹ��� ���� ���� �����Ͽ� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;
     
SELECT cus.name, ord.saleprice
FROM customer cus RIGHT OUTER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;
