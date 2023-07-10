SELECT first_name, salary * NVL(commission_pct, 1)
FROM t_employee2
ORDER BY commission_pct;

SELECT last_name, department_id, salary �����޿�,
       DECODE(department_id, 60, salary*1.1, salary) �����޿�,
       DECODE(department_id, 60, '10%�λ�', '���λ�') �λ󿩺�
FROM t_employee2;

-- CASE~ WHEN ��--
SELECT last_name, department_id, salary �����޿�,
    CASE
        WHEN department_id = 60 THEN salary*1.1
        ELSE salary
    END �����޿�,
    CASE 
        WHEN department_id = 60 THEN '10%�λ�'
        ELSE '���λ�'
    END �λ󿩺�
FROM t_employee2;

SELECT DISTINCT job_id, department_id
FROM employees;

-- RANK() ����
SELECT employee_id, last_name,
       salary,
       RANK() OVER(ORDER BY salary DESC) �޿�_RANK,
       DENSE_RANK() OVER(ORDER BY salary DESC) �޿�_DENSE_RANK
FROM employees;

-- ���� �μ� ������ ������ �޿� ���� ���ϱ�
SELECT department_id, first_name,
       salary,
       RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) �޿�_RANK,
       DENSE_RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) �޿�_DENSE_RANK
FROM employees;