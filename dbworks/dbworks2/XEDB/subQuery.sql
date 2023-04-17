-- ���� ����
-- �� ����� ��� �޿� �̻��� �޴� ��� �� ��ȸ
SELECT * FROM employees;

SELECT ROUND(AVG(salary), 2) ��ձ޿� FROM employees;

SELECT count(*) ��ձ޿��̻�_�����
FROM employees
WHERE salary >= (SELECT AVG(salary) FROM employees);

-- job_history ���̺� �ִ� employee_id�� job_id�� ���� ��� ��ȸ
SELECT * FROM job_history;

SELECT employee_id, first_name, job_id
FROM employees
WHERE (employee_id, job_id) IN (SELECT employee_id, job_id
                                FROM job_history);
                                
-- ���� ������ �ɸ� ���� ����
-- �μ� location_id�� 1800�� department_id�� ������ ��� �˻�
SELECT * FROM departments;

-- ����(�⺻Ű, �ܷ�Ű ����)
SELECT * FROM employees a, departments b
  WHERE a.department_id = b.department_id
    AND b.location_id = 1800;
  
-- ���� ����(���� �ڷ��� ���)
SELECT * FROM employees a
    WHERE a.department_id = (SELECT b.department_id
                                FROM departments b 
                             WHERE b.location_id = 1800);
                             
-- ���� ����(���� �ڷ��� ���)
SELECT * FROM employees a
    WHERE a.department_id IN (SELECT b.department_id
                                FROM departments b 
                             WHERE b.location_id = 1700);
                             
  



