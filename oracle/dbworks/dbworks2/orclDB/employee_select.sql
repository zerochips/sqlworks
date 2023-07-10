-- ���̺� ��ü ��ȸ
SELECT * FROM employees;

-- employees ���̺��� emp�� �����ϱ� --
CREATE TABLE emp AS SELECT * FROM employees;

-- Ư�� ���� ��ȸ
SELECT employee_id, first_name, last_name
FROM emp;

-- AS�� ����Ͽ� ��Ī �����(AS ���� ����)
SELECT employee_id AS �����ȣ, first_name �̸�, last_name ��
FROM emp;

-- ORDER BY�� �̿��� ���� : �޿��� ���� ������ �����ϱ�
SELECT employee_id, first_name, last_name, salary
FROM emp ORDER BY salary DESC;

-- ������ �� �����ϱ� : ���� ������ '||'
SELECT employee_id, first_name ||' '||last_name AS name
FROM emp;

SELECT employee_id, first_name ||'@'||'gmail.com' AS email
FROM emp;

-- ������ �� ����ϱ� : ��� ������
SELECT employee_id, salary, salary+500, salary-100
FROM emp;

SELECT employee_id AS �����ȣ, salary AS �޿�, salary+500 AS �߰��޿�, salary-100 AS ���ϱ޿�
FROM emp;

-- DISTINCT�� ����� �ߺ��� ����

SELECT job_id, department_id
FROM emp;

SELECT DISTINCT job_id, department_id
FROM emp;

-- ���� ������ �� ��ȸ�ϴ� ��� : WHERE �������� Ȱ���� �˻�
-- employee_id�� 100�� ��� ���� --
SELECT * 
FROM emp
WHERE employee_id = 100;

SELECT * 
FROM emp
WHERE employee_id <> 100;

SELECT * 
FROM emp
WHERE first_name = 'David';

-- SQL ������
SELECT * 
FROM emp
WHERE salary BETWEEN 10000 AND 20000;

-- salary�� 10000 �Ǵ� 17000 �Ǵ� 24000�� ������� --
SELECT * 
FROM emp
WHERE salary IN (10000, 17000, 24000);

-- job_id�� AD�� �����ϴ� ��� ���� --
SELECT * 
FROM emp
WHERE job_id LIKE 'AD%';

-- job_id�� AD�� �����ϰ� ���ڿ��� 3�ڸ���(���鹮������) ��� ����
SELECT * 
FROM emp
WHERE job_id LIKE 'AD___';


-- magager_id�� null�� ��� --
SELECT * 
FROM emp
WHERE manager_id IS NULL;

-- �� ������ : AND, OR - job_id�� 'IT_PROG'�̰� salary�� 4000�� �ʰ��ϴ� ��� --
SELECT * 
FROM  emp
WHERE salary > 4000
AND   job_id = 'IT_PROG' ;

SELECT * 
FROM  emp
WHERE salary > 4000
AND   job_id = 'IT_PROG' 
OR    job_id = 'FI_ACCOUNT';

SELECT * 
FROM emp
WHERE manager_id IS NOT NULL;


