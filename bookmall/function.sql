-- ���� Ÿ�� �Լ�
-- ������ ���̺� : dual
SELECT ABS(-10), ABS(10) FROM dual;

-- �ݿø� : ROUND(��, �ڸ���)
SELECT ROUND(3.875) FROM DUAL;
SELECT ROUND(3.875, 1) FROM DUAL;
SELECT ROUND(3.875, 2) FROM DUAL;

-- ���� : TRUNC(��, �ڸ���)
SELECT TRUNC(3.875, 1) FROM DUAL;

SELECT * FROM employee;

SELECT sal
FROM employee;

-- sal�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� �ݿø��� �� ���
SELECT sal �޿�,
       SAL/30 �ϱ�,
       ROUND(sal/30, 1) ���1,
       ROUND(sal/30, 0) ���2,
       ROUND(sal/30, -1) ���3
FROM employee;

-- sal�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� ����(����) �� ���
SELECT sal �޿�,
       SAL/30 �ϱ�,
       TRUNC(sal/30, 1) ���1,
       TRUNC(sal/30, 0) ���2,
       TRUNC(sal/30, -1) ���3
FROM employee;

-- ���� ��� �ֹ� �ݾ��� �ʿ� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ, ROUND(AVG(saleprice), -2) ����ֹ��ݾ� FROM orders GROUP BY custid;

SELECT custid ����ȣ, COUNT(*) �ֹ���, SUM(saleprice) �Ѿ�
FROM orders GROUP BY custid;

SELECT custid ����ȣ, COUNT(*) �ֹ���, ROUND(SUM(saleprice)/COUNT(*), -2) ��ձݾ�
FROM orders GROUP BY custid;

-- -------------------------------------------------------------

SELECT * FROM customer;

SELECT * FROM orders;

SELECT ROUND(3.1456, 2) FROM DUAL;

COMMIT;

-- -------------------------------------------------------------
-- ���� Ÿ�� �Լ�
SELECT LOWER('ABCD') RESULT FROM DUAL;

-- SUBSTR(����, �ε���, ���ڼ�)
SELECT SUBSTR('ABC', 1, 2) RESULT FROM DUAL;

-- REPLACE(����, ��������, ���ο��)
SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;

-- CONCAT(����1, ����2) - ���� ����
SELECT CONCAT('A', 'B') RESULT FROM DUAL;

-- ���Ῥ���� -'||'
SELECT '�ȳ�' || '�ϼ���' RESULT FROM DUAL;

SELECT LPAD('cloud', 10, '*') RESULT FROM DUAL;


-- �μ��̸����� ó������ �����ؼ� 2���� ���� ���
SELECT SUBSTR(deptname, 1, 2) �μ���
FROM DEPT;

-- ���� ���� �߱��� ���Ե� �󱸷� �����Ͽ� �˻�
SELECT bookid,
       REPLACE(bookname, '�߱�', '��') FROM book;
-- -------------------------------------------------------------
-- ��¥ �Լ�
-- 20�� ���� ��¥ ���
SELECT SYSDATE -20 FROM DUAL;
SELECT SYSDATE +20 FROM DUAL;

-- 4�� 1�Ͽ��� 10�� ��(Ư���� ��: ������ -> ��¥��)
SELECT TO_DATE('2023-04-01') + 20 FROM DUAL;

-- �Ի��� : 2022-1-1 ����� : 2023-1-31(���� ���)
SELECT 
    ROUND(MONTHS_BETWEEN(TO_DATE('2023-1-31'), 
    TO_DATE('2022-1-1')), 0) �Ѱ����
FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS(SYSDATE, 3) ���
FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS(SYSDATE, -3) ���
FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS('2023-4-1', -3) ���
FROM DUAL;

SELECT ADD_MONTHS('2023/04/01', -3) ���
FROM DUAL;

-- ���� ��¥�� �ð� ����
SELECT SYSDATESTAMP FROM DUAL;
-- -------------------------------------------------------------
-- �ֹ� ��ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�.
-- 1. �ֹ���ȣ�� 6~10�� ���� �˻�
-- 2. �ֹ��Ͽ� 3���� ���ϱ�
SELECT * FROM orders WHERE orderid >= 6 AND orderid <=10;

-- 1. �ֹ���ȣ�� 6~10�� ���� �˻�
SELECT orderid �ֹ���ȣ FROM orders WHERE orderid >= 6 
AND orderid <=10;

-- 2. �ֹ��Ͽ� 3���� ���ϱ�
SELECT orderid �ֹ���ȣ, 
ADD_MONTHS(orderdate, 3) ���ϱ���,
ADD_MONTHS(orderdate, -3) ������
FROM orders 
WHERE orderid >= 6 AND orderid <=10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
-- MONTHS_BETWEEN(���ĳ�¥, ������¥)
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
        TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate)) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�.
SELECT orderid �ֹ���ȣ,
        orderdate �ֹ���,
        orderdate +10 Ȯ����
FROM orders;

-- �ֹ� ��ȣ�� 10�� ����
SELECT * FROM orders WHERE orderid = 10;

-- -------------------------------------------------------------
-- �ڵ� Ÿ�� ��ȯ
SELECT 1 + '2' FROM DUAL;

-- ���� Ÿ�� ��ȯ(�����ؾ���)
-- ���ڸ� ���� �������� ��ȯ
SELECT TO_NUMBER('120') ��� FROM DUAL;

-- ��¥ ����
SELECT TO_DATE('2022-06-30', 'yy-mm-dd') FROM DUAL;

-- ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'yyyy-mm-dd') ��¥ FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥,
       TO_CHAR(SYSDATE, 'YYYY') ����,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��
FROM DUAL;

-- �ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS PM') �ð�����
FROM DUAL;

-- �ð��� ���Ķ� AM���� ǥ���ص� ���Ķ�� ��µ�
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') �ð�����
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') �ð�����,
       TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS PM') ��¥�ͽð�
FROM DUAL;

-- -------------------------------------------------------------
-- �� �̸����� ���� ���� ���� ����� �ο����� ���Ͻÿ�
-- ��Ʈ, GROUP BY ��, SUBSTR(), COUNT(*)
SELECT SUBSTR(name, 1, 1) ��, COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);










