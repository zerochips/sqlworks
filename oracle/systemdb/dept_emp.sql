-- �μ� ���̺�� ������̺� ����
-- JOIN - 1�� �̻��� ���̺��� �����Ͽ� ����ϴ� ���

SELECT*FROM dept;
SELECT*FROM employee;

-- �����ȣ, �����, �μ���ȣ, �μ����� ����Ͻÿ�
SELECT emp.empno, emp.empname, dep.deptno, emp.sal, dep.deptname
FROM employee emp, dept dep
WHERE emp.deptno = dep.deptno;

COMMIT;
-- ---------------------------����---------------------------------
select * from dept;
select * from employee;

select emp.empno, emp.empname, emp.sal, dep.deptno, dept.deptname
from employee emp, dept dep
where emp.empno = dep.deptno;

commit;
