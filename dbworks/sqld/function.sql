-- function

SELECT custid ����ȣ, ROUND(SUM(saleprice)/COUNT(*)) ��ձݾ�
FROM orders
GROUP BY custid;


SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);

