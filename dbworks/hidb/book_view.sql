-- VIEW
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����� ��ȸ�Ͻÿ�.
-- ���� �̸��� vw_Customer�� �����Ͻÿ�
CREATE VIEW vw_Customer AS 
SELECT *
FROM Customer
WHERE address LIKE '%���ѹα�%';

-- �� �̸����� �˻�
SELECT *
FROM vw_Customer;

-- ���� �̸��� �ֹ��� ������ �̸��� ������ �˻��Ͻÿ�
CREATE VIEW vw_Orders AS
SELECT customer.name, book.bookname
FROM customer, orders, book
WHERE customer.custid = orders.custid 
AND book.bookid = orders.bookid;

SELECT * 
FROM vw_Orders;

-- �� ����
DROP VIEW vw_Customer;
