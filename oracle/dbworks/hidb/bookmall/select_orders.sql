-- ���� �Լ��� GROUP BY
-- ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) AS �Ѹ���
FROM orders;

-- '�迬��' ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) AS �Ѹ���
FROM orders
WHERE custid = 2;

-- ���� �ֹ��� ������ �� �Ǹž�, ��հ��� ���Ͻÿ�
SELECT SUM(saleprice) AS Total,
       AVG(saleprice) AS Average  
FROM orders;

-- ���� ������ ���� �Ǹ� �Ǽ��� ���Ͻÿ�
SELECT COUNT(*) AS ���ǸŰǼ�
FROM orders;

-- �̻�̵�� ���ǻ��� ��� ���������� ���Ͻÿ�
SELECT AVG(price) AS ��հ���
FROM book
WHERE publisher = '�̻�̵��';

-- ������ �ֹ��� ������ �� ������ �Ǹž��� ���Ͻÿ�
SELECT custid, COUNT(*) ��������, SUM(saleprice) �Ѿ�
FROM orders
GROUP BY custid;

-- ������ 8000�� �̻��� ������ ������ ���� ���Ͽ� ���� �ֹ� ������ �� ������ ���Ͻÿ�.
-- �� 2�� �̻� ������ ���� ���Ͻÿ�.
-- HAVING ���� GROUP BY ���� ��� ��Ÿ���� �׷��� �����ϴ� ������ �Ѵ�.
SELECT custid, COUNT(*) ��������
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING count(*) >= 2;