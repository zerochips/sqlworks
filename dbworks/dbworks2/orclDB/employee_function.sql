-- �׷� �Լ�
SELECT COUNT(salary) �޿���� 
FROM emp;

SELECT COUNT(*) �޿���� 
FROM emp;

SELECT SUM(salary) �հ�, ROUND(AVG(salary),2) ���
FROM emp;

SELECT MAX(salary) �ִ밪, MIN(salary) �ּҰ�
FROM emp;

SELECT MAX(first_name) �ִ빮�ڰ�, MIN(first_name) �ּҹ��ڰ�
FROM emp;

-- GROUP BY �� : company_id�� 10�̻��� ������ ���� job_id���� �׷�ȭ�Ͽ� 
-- job_id�� �� �޿��� ��� �޿��� ���ϰ�, job_id�� �� �޿��� �������� �������� ����
SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM   emp
WHERE  employee_id >= 10
GROUP BY job_id
ORDER BY ������_�ѱ޿� DESC;

-- HAVING ��� : �׷�ȭ�� ���� ���ǽ� ����
SELECT job_id ����, SUM(salary) ������_�ѱ޿�, AVG(salary) ������_��ձ޿�
FROM   emp
WHERE  employee_id >= 100
GROUP BY job_id
HAVING   SUM(salary) > 30000
ORDER BY ������_��ձ޿� DESC;