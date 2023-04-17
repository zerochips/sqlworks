-- 2�� �̻��� ���̺��� sql ����
SELECT *
FROM orders;

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid;

-- ���� ���� �ֹ��� ���� �����͸� ������ �����Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid
ORDER BY customer.custid;

-- '������' ���� �ֹ������� �˻��Ͻÿ�(book ���� ����)
SELECT *       
FROM customer, book, orders
WHERE customer.custid = orders.custid 
AND book.bookid = orders.bookid
AND customer.name = '������';

-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.custid = orders.custid;

SELECT customer.name, AVG(saleprice)
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name;

-- INNER JOIN
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
     ON cus.custid = ord.custid
     ORDER BY cus.name;

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���ϰ�, ������ �����Ͻÿ�
-- �� �Ǹž��� 30000�� �̻��� ����
SELECT customer.name, SUM(saleprice)
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
Having SUM(saleprice) >= 30000
ORDER BY customer.name;


-- ���� �̸��� ���� �ֹ��� ������ �̸��� ������ �˻��Ͻÿ�
--SELECT customer.name, book.bookname
--FROM customer, orders, book
--WHERE customer.custid = orders.custid 
--AND book.bookid = orders.bookid;

SELECT c.name, b.bookname, b.price
FROM book b, customer c, orders o
WHERE c.custid = o.custid
AND b.bookid = o.bookid;

-- ������ 20000�� �̻��� ������ �ֹ��� ���� �̸��� ������ �̸��� �˻��Ͻÿ�
SELECT c.name, b.bookname, b.price
FROM book b, customer c, orders o
WHERE c.custid = o.custid
    AND b.bookid = o.bookid
    AND b.price >= 20000;
    
-- ������ �������� ���� ���� �����Ͽ� 
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
     ON cus.custid = ord.custid;
     
SELECT cus.name, ord.saleprice
  FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+);











