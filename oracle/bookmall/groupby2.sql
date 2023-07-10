-- bookmall ���� ���̺�
SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- ���� �ֹ��� ������ �� �Ǹž� ���ϱ�
SELECT sum(saleprice) ���Ǹž�
FROM orders;

-- ����, ������ ���Ǹž� ���
-- select�� group by �����ϰ� �����ϴ� ��µ�
SELECT custid, 
       bookid,
       SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY custid, bookid;

-- ���� ���Ǹž� ���, �Ұ�, �Ѱ� ���ϱ�
-- ROLLUP(), CUBE()
SELECT custid ��,
       bookid ����,
       SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY ROLLUP(custid, bookid);

-- GROUP BY ROLLUP() : �μ��� �Ѱ�
SELECT custid, bookid,
       SUM(saleprice)
FROM orders
GROUP BY ROLLUP(custid, bookid)
ORDER BY custid, bookid;

-- GROUP BY CUBE() : �μ���, ������ �Ұ� �� �Ѱ�
SELECT custid, bookid,
       SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY CUBE(custid, bookid)
ORDER BY custid, bookid;

-- GROUP BY GROUPING SETS() : ����, ������ �Ұ�
SELECT custid, bookid,
       SUM(saleprice) ���Ǹž�
FROM orders
GROUP BY GROUPING SETS(custid, bookid)
ORDER BY custid, bookid;

SELECT * FROM orders;
SELECT * FROM book;
