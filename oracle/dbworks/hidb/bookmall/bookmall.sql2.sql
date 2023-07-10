-- ���� �̸��� ���� �� ��° ��ġ�� '��'��� ���ڿ��� ���� ������ �˻�
SELECT * 
FROM book
WHERE bookname LIKE '_��%';

-- ���ǻ簡 '�½�����' Ȥ�� '���ѹ̵��'�� ������ �˻�
SELECT *
FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';

SELECT SUM(saleprice)
FROM orders
WHERE custid = 2;

SELECT SUM(saleprice) AS Total,
       AVG(saleprice) AS Average,
       MIN(saleprice) AS Minimum
FROM orders;

SELECT COUNT(DISTINCT publisher)
FROM book;

SELECT custid, COUNT(*) ��������
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING count(*) >= 2;

SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid
ORDER BY customer.custid DESC;

SELECT name, saleprice
FROM customer, orders
WHERE customer.custid = orders.custid
    AND customer.name = '�Ȼ�';
    
-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���ϰ�, ������ �����Ͻÿ�
SELECT name, SUM(saleprice)
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;

-- ���� �̸��� ���� �ֹ��� ������ �̸��� ���Ͻÿ�
SELECT customer.name, book.bookname
FROM customer, orders, book
WHERE customer.custid = orders.custid
  AND orders.bookid = book.bookid;
  
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
-- �ֹ��� ���� ���� �����Ͽ� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
-- �ֹ��� ���� ���� �����Ͽ� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+)
ORDER BY cus.name;
  
-- ���� ��� ������ �̸��� ���̽ÿ�
SELECT MAX(price) FROM book;

SELECT bookname
FROM book
WHERE price = 35000;

SELECT bookname, price
FROM book
WHERE price = 
   (SELECT MAX(price) FROM book);

-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
select custid
from orders;

select name
from customer
where custid in (1, 2, 3, 4);

SELECT name
FROM customer
WHERE custid IN (SELECT custid
                 FROM orders);


SELECT name, saleprice
FROM customer, orders
WHERE customer.custid = orders.custid
    AND customer.name = '������';
 
-- '�迬��' ���� �ֹ������� �˻��Ͻÿ�
SELECT custid
    FROM customer
    WHERE name = '�迬��';   
    
SELECT *
FROM orders
WHERE custid = (SELECT custid
                FROM customer
                WHERE name = '�迬��');
                
-- ���ǻ纰�� ���ǻ��� ��� ���� ���ݺ��� ��� ������ ���Ͻÿ�
select b1.bookname
from book b1
where b1.price > (select avg(b2.price)
                  from book b2
                  where b2.publisher=b1.publisher);
                  
-- ���� ������ ���� �Ǹž��� ���̽ÿ�(���̸��� ���� �Ǹž� ���)
SELECT (SELECT name
        FROM customer cs
        WHERE cs.custid=od.custid) name, SUM(saleprice) total
FROM orders od
GROUP BY od.custid;

-- ����ȣ�� 2 ������ ���� �Ǹž��� �˻��Ͻÿ�.
SELECT cs.name, SUM(od.saleprice) �Ǹž�
FROM(SELECT custid, name
       FROM customer
       WHERE custid <= 2) cs,
       orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;

-- ���ѹα����� �����ϴ� ���� �̸��� ������ �ֹ��� ���� �̸��� �˻��Ͻÿ�
select name
from customer
where address like '���ѹα�%'
UNION ALL
select name
from customer
where custid in (SELECT custid FROM orders);

-- �ֹ��� �ִ� ���� �̸��� �ּҸ� ���̽ÿ�
select name, address
from customer cs
where NOT EXISTS(select *
             from orders od
             where cs.custid=od.custid);








