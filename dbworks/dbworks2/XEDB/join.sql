SELECT * FROM locations;
SELECT * FROM departments;
SELECT * FROM employees;

-- ���� ����(employees�� departments ���̺��� department_id�� ����Ǿ� �ִ�.)
SELECT a.employee_id, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id = b.department_id;
--AND a.employee_id = 101;

-- employee_id�� 101�� ������ job_history ���
SELECT a.first_name, a.last_name, b.*
FROM employees a, job_history b
WHERE a.employee_id = b.employee_id
AND a.employee_id = 101;

-- �� ������ ��� �μ��� ���ϴ����� �μ��� �������� ������� ��ȸ
SELECT a.employee_id, a.department_id, b.department_name, c.location_id, c.city
FROM employees a, departments b, locations c
WHERE a.department_id = b.department_id
AND b.location_id = c.location_id;

SELECT COUNT(*) ���εȰǼ�
FROM employees A, departments B
WHERE A.department_id = B.department_id;

-- department_id�� NULL�� ���� ã��
SELECT employee_id, first_name, department_id
FROM employees
WHERE department_id IS NULL;

-- �� ���̺��� department_id�� �ܺ� �����Ͽ� department_id�� null�� �� ���
SELECT a.employee_id, a.last_name, b.department_id, b.department_name
FROM employees a, departments b
WHERE a.department_id = b.department_id(+);

-- ��ü ���� : ������ ��� �Ŵ����� �������� ��ȸ
SELECT a.employee_id, a.first_name, a.last_name, a.manager_id,
       b.first_name || ' ' || b.last_name manager_name
FROM employees a, employees b
WHERE a.manager_id = b.employee_id
ORDER BY a.employee_id;