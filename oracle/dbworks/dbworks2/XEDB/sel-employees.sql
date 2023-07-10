-- employees ���̺� ����ϱ�
SELECT * FROM employees;

-- ��Ī : Į�� �̸� AS ��Ī
SELECT employee_id AS �����ȣ, first_name AS �̸�, last_name AS ��
FROM employees;

-- ���� : ORDER BY - ASC(��������), DESC(��������)
SELECT employee_id, first_name, last_name, salary
FROM employees ORDER BY salary DESC;

-- �ߺ� ����
SELECT DISTINCT job_id, department_id 
FROM employees;

--null ã��
SELECT employee_id, job_id, manager_id 
FROM employees 
--WHERE manager_id IS NULL;
WHERE manager_id IS NOT NULL;

SELECT * 
FROM employees 
--WHERE first_name = 'David';
WHERE employee_id <> 105;

SELECT employee_id, job_id, manager_id 
FROM employees 
--WHERE job_id LIKE 'IT%';
WHERE job_id LIKE '%ACCOUNT';

-- AND, IN
-- salary�� 10000�̻� 20000������ �ڷ� �˻�
SELECT employee_id, first_name, job_id, salary
FROM employees 
WHERE salary BETWEEN 10000 AND 20000;
--WHERE salary >= 10000 AND  salary <= 10000;

SELECT employee_id, first_name, job_id, salary
FROM employees 
WHERE salary IN (10000, 17000, 24000);

SELECT employee_id, first_name, job_id, salary
FROM employees 
WHERE salary > 4000
AND job_id = 'IT_PROG'
OR job_id = 'FI_ACCOUNT';






