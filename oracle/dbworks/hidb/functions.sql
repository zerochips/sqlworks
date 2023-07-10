-- ���� �Լ�
-- FROM ���� ���� SELECT�� : ����Ŭ�� ���� ���̺��� dual�� �����
-- ���밪 ���ϱ�
SELECT  ABS(-10), ABS(10) FROM dual;

-- 3.875�� �Ҽ� ù°�ڸ����� �ݿø��� ���� ���Ͻÿ�
SELECT  ROUND(3.875, 1) FROM dual;

-- employee ���̺��� ���
-- salary�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� �ݿø��� �� ���
SELECT salary,
       salary/30 �ϱ�,
       ROUND(salary/30, 1) ���1,
       ROUND(salary/30, 0) ���2,
       ROUND(salary/30, -1) ���3
FROM employee;

-- salary�� 30�Ϸ� ������ �Ҽ� �ڸ����� ���� ����(����)�� �� ���
SELECT salary,
       salary/30 �ϱ�,
       TRUNC(salary/30, 1) ���1,
       TRUNC(salary/30, 0) ���2,
       TRUNC(salary/30, -1) ���3
FROM employee;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid AS ����ȣ, 
       ROUND(AVG(saleprice), -2) AS ��ձݾ�
FROM orders
GROUP BY custid;

-- ���� �Լ�
SELECT LPAD('cloud', 10, '*') FROM dual;

SELECT RPAD('cloud', 10, '*') FROM dual;

-- �μ� �̸����� ó������ �����ؼ� �ΰ��� ���� ���
SELECT SUBSTR(deptname, 1, 2) ����
FROM department;

-- ���� ���� �߱��� ���Ե� ������ �󱸷� �����Ͽ� �˻��Ͻÿ�
SELECT bookid, 
       REPLACE(bookname, '�߱�', '��') AS bookname,
       publisher
FROM book;

-- �½��������� ������ ������ ����� ����(����Ʈ) ���� �˻��Ͻÿ�
SELECT bookname ����,
       LENGTH(bookname) ���ڼ�
FROM book
WHERE publisher = '�½�����';

-- �� �̸����� ���� ���� ���� ����� �ο����� ���Ͻÿ�
-- GROUP BY������ �Լ��� ������ �� ����
SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);

-- ��¥, �ð� �Լ�
-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       orderdate + 10 Ȯ��
FROM orders;

-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
       ADD_MONTHS(orderdate, 3) ���ϱ�_���,
       ADD_MONTHS(orderdate, -3) ����_���
FROM orders
WHERE orderid BETWEEN 6 AND 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
SELECT orderid �ֹ���ȣ, orderdate �ֹ���, SYSDATE ����, 
       TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate), 0) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- �ڵ� Ÿ�� ��ȯ
SELECT 1 + '2' FROM dual;

-- ���� Ÿ�� ��ȯ
-- ���� ����
SELECT TO_NUMBER('123')
FROM dual;

-- ��¥ ���� : �������� ��¥�� ���ڿ��� ��ȯ
SELECT TO_CHAR(SYSDATE, 'YY') �⵵,
       TO_CHAR(SYSDATE, 'YYYY') �⵵_4,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YY/MM/DD') ��¥
FROM dual;

-- �ð� ���� : �������� ��¥�� ���ڿ��� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�,
       TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS') ��¥�ͽð�
FROM dual;

-- ��¥ ���� : ��¥ ���ڿ��� ���� ���� ��¥ Ÿ������ ��ȯ
SELECT TO_DATE('2022-06-30', 'YYYY-MM-DD')
FROM dual;








