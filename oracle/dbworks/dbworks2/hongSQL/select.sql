-- select���� --
-- ��� ���̺��� �޿��� 5000�� �Ѵ� �����ȣ�� ����� ��ȸ

SELECT employee_id, first_name, last_name, salary, job_id
FROM employees
WHERE salary > 10000  OR JOB_ID = 'IT_PROG'
ORDER BY salary;

SELECT employee_id as �����ȣ, first_name||' '||last_name as �̸�
FROM employees;

SELECT DISTINCT job_id, department_id
FROM employees;

SELECT a.employee_id, a.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id = b.department_id;


