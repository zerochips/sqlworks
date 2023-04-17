-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� �� ���ϱ�
SELECT custid AS ����ȣ,
       ROUND(AVG(saleprice), -2) ��ձݾ�
FROM orders
GROUP BY custid;

-- LPAD(), RPAD()
SELECT LPAD('cloud', 10, '*') FROM DUAL;

SELECT RPAD('cloud', 10, '*') FROM DUAL;

-- ���� ���� �߱��� ���Ե� ������ �󱸷� �����Ͽ� �˻�
SELECT bookid,
       REPLACE(bookname, '�౸', '��') bookname,
       publisher
FROM book;

-- -- SUBSTR()
SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);

-- ������ �ֹ��Ϸκ��� 10�� �� ������ Ȯ����
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       orderdate + 10 Ȯ��
FROM orders;

-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���ϱ�
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
       ADD_MONTHS(orderdate, 3) ���
FROM orders
WHERE orderid BETWEEN 6 AND 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� ������ ���ϱ�
SELECT orderid �ֹ���ȣ, orderdate �ֹ���, SYSDATE ����,
       TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate), 0) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- TO_DATE()
SELECT TO_DATE('2023-01-10', 'yyyy/mm/dd') FROM DUAL;

-- TO_CHAR()
SELECT TO_CHAR(SYSDATE, 'YY') �⵵,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD') ��¥
FROM DUAL;


