SELECT * FROM employees;

-- substr(), upper() �Լ� Ȱ��
SELECT employee_id, SUBSTR(first_name,1,1)||upper(last_name) as e_address 
FROM employees;

-- DECODE �Լ� ���� 1--
SELECT last_name, 
       department_id,
       salary �����޿�,
       DECODE(department_id, 60, salary*1.1, salary) �����޿�,
       DECODE(department_id, 60, '10%�λ�', '���λ�') �λ󿩺�
FROM employees;

-- DECODE �Լ� ���� 2--

-- CASE ~ WHEN �� --
SELECT last_name, department_id, salary �����޿�, 
       CASE
            WHEN department_id = 60 THEN salary*1.1
            ELSE salary
       END AS �����޿�,
       CASE
            WHEN department_id = 60 THEN '10% �λ�'
            ELSE '���λ�'
       END AS �λ󿩺�
FROM employees;

