-- ex3_2 ���̺� ���� --
CREATE TABLE ex3_2(
    emp_id  NUMBER,
    emp_name    VARCHAR2(20)  
);

SELECT * FROM ex3_2;

-- INSERT ~ SELECT --
-- �ٸ� ���̺��̳� ���� ��ȸ ����� ���� �����͸� 
-- �� �ٸ� ���̺� �ִ� ���� 
INSERT INTO ex3_2(emp_id, emp_name)
SELECT employee_id, last_name
FROM employees
WHERE salary > 5000;