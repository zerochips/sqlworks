-- employees ���̺� ����(Ư�� Į��) --
CREATE TABLE t_employee AS
SELECT employee_id, first_name, last_name, salary, job_id 
FROM employees;

SELECT * FROM t_employee;

-- ���̺� ���� --
DROP TABLE t_employee;

-- first_name�� 'David'�̰�, salary�� 4000�� �ʰ��ϴ� ����
SELECT * FROM t_employee
WHERE first_name = 'David' 
AND salary > 4000;

-- ���� : salary�� 7000�� �ʰ��ϰ�, job_id�� 'IT' �� 'FI'�� �����ϴ� ������ �˻��ϼ���.
SELECT * FROM t_employee
WHERE salary > 7000 
AND job_id LIKE 'IT%'
OR job_id LIKE 'FI%';

SELECT first_name, hire_date, job_id, salary
FROM employees
WHERE salary IN (10000, 17000, 24000);


SELECT COUNT(salary)
FROM t_employee;

SELECT SUM(salary)
FROM t_employee;

SELECT ROUND(AVG(salary), 2)
FROM t_employee;

-- ������ �޿� �Ѿװ� �޿� ���
SELECT job_id, sum(salary), AVG(salary)
FROM employees
GROUP BY job_id;

-- ������ �޿� �Ѿ��� 30000 �̻�� �޿� ���
SELECT job_id, sum(salary), AVG(salary)
FROM employees
GROUP BY job_id
HAVING sum(salary) >= 30000;







