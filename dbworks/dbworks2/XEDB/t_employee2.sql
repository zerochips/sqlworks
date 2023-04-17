-- function
CREATE TABLE t_employee2 AS
SELECT * FROM employees;

SELECT * FROM t_employee2;

-- ���� Ÿ�� �Լ�
SELECT last_name,
       LOWER(last_name) LOWER����,
       UPPER(last_name) UPPER����,
       email,
       INITCAP(email) INITCAP����
FROM t_employee2;

-- job_id�� ù° �ڸ����� �����ؼ� �� ���� ���� ���
SELECT job_id, SUBSTR(job_id, 1, 2) �����ڵ�
FROM t_employee2;

SELECT COUNT(*) AS �޿����
FROM t_employee2;

-- job_id ���ڿ� ���� ACCOUNT�̸� ACCNT�� ���
SELECT job_id, REPLACE(job_id, 'ACCOUNT', 'ACCNT') ���
FROM t_employee2;

SELECT COUNT(salary) AS �޿����
FROM t_employee2;

--first_name�� ���� 12�ڸ��� ���ڿ� �ڸ��� *�� ä���� ����ϱ�
SELECT first_name, LPAD(first_name, 12, '*') ���
FROM t_employee2;

-- salary�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� �ݿø��� �� ���
SELECT salary,
       salary/30 �ϱ�,
       ROUND(salary/30, 1) ���1,
       ROUND(salary/30, 0) ���2,
       ROUND(salary/30, -1) ���3
FROM t_employee2;

-- salary�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� ����(����)�� �� ���
SELECT salary,
       salary/30 �ϱ�,
       TRUNC(salary/30, 1) ���1,
       TRUNC(salary/30, 0) ���2,
       TRUNC(salary/30, -1) ���3
FROM t_employee2;

-- department_id�� 100�� ������ ���� �Ի��� �� ������ ���
-- department_id, ���� ��¥, hire_date, �� ������ ���
SELECT department_id, SYSDATE, hire_date, 
       TRUNC(MONTHS_BETWEEN(SYSDATE,hire_date), 0) ��_������
FROM t_employee2
WHERE department_id = 100;

-- employee_id�� 100�� 106������ ������ hire_date�� 3������ ���� ����
-- 3������ �� �� ���
SELECT employee_id, hire_date, 
       ADD_MONTHS(hire_date, 3) ���ϱ�_���,
       ADD_MONTHS(hire_date, -3) ����_���
FROM t_employee2
WHERE employee_id BETWEEN 100 AND 106;

-- �ڵ� Ÿ�� ��ȯ
SELECT 1 + '2'
FROM DUAL;

-- ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'YY') �⵵,
       TO_CHAR(SYSDATE, 'YYYY') �⵵_4,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��,
       TO_CHAR(SYSDATE, 'YY/MM/DD') ��¥
FROM DUAL;

-- �ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�����, 
       TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS PM') ��¥�ͽð�
FROM DUAL;

-- ���� ���� ��ȯ
SELECT TO_NUMBER('123')
FROM DUAL;

-- ��¥ ���� ��ȯ
SELECT TO_DATE('20190515', 'YYMMDD')
FROM DUAL;

--�׷� �Լ�
SELECT SUM(salary) AS �հ�, 
       ROUND(AVG(salary), 2) AS ���
FROM t_employee2;

SELECT MAX(salary) AS �ִ밪, 
       MIN(salary) AS �ּҰ�
FROM t_employee2;

SELECT MAX(first_name) AS �ִ빮�ڰ�, 
       MIN(first_name) AS �ּҹ��ڰ�
FROM t_employee2;

-- ������ �޿� �� �޿� ���
SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM t_employee2
WHERE employee_id >= 100
GROUP BY job_id
ORDER BY ������_��ձ޿� DESC;

SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM t_employee2
WHERE employee_id >= 100
GROUP BY job_id
HAVING SUM(salary) > 30000
ORDER BY ������_�ѱ޿� DESC;
