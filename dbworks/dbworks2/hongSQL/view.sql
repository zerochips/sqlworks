-- �� --
SELECT * FROM employees;

SELECT * FROM departments;

-- �ش� ����� ���� �μ��� �˻� --
SELECT a.employee_id, a.last_name, a.department_id,
       b.department_name
FROM employees a,
     departments b
WHERE a.department_id = b.department_id;

-- ���� ���̺�� �� ���� --
CREATE OR REPLACE VIEW emp_dept_v1 AS
SELECT a.employee_id, a.last_name, a.department_id,
       b.department_name
FROM employees a,
     departments b
WHERE a.department_id = b.department_id;

SELECT *
FROM emp_dept_v1;