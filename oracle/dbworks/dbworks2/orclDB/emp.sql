SELECT * FROM employees;

-- employees ���̺��� emp ���̺��� �����Ͽ� �����ϱ� --
CREATE TABLE emp AS SELECT * FROM employees;

SELECT * FROM emp;

-- salary�� 10000�޷����� 20000�޷� ������ ����� ���� --
SELECT * 
FROM emp
WHERE salary BETWEEN 10000 AND 20000;




