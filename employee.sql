-- ��� ���̺�(�μ��� ���踦 ����)
CREATE TABLE employee(
    empno       NUMBER(3) PRIMARY KEY,   -- ��� ��ȣ
    empname     VARCHAR2(20) NOT NULL,   -- ��� �̸�(�ߺ��� �� ����)
    sal         NUMBER(10),              -- �޿�
    createdate  DATE DEFAULT SYSDATE,    -- �����
    gender      VARCHAR2(10),            -- ����
    deptno      VARCHAR2(4),             -- �μ���ȣ
    -- �ܷ�Ű (FOREIGN KEY) ��������
    CONSTRAINT emp_fk FOREIGN KEY(deptno)
    REFERENCES dept(deptno)
    -- ON DELETE CASCADE(�μ��� �����ϸ� �����ϰ� �ִ� ����� ����)
);

-- ���� ���Ἲ ���� ����(�ܷ�Ű ����)
-- 1. ����� �Ҽӵ� �μ��� ������ �� '�ڽ� ���ڵ尡 �ִ�'�� ���� �߻�
-- 2. �μ���ȣ�� ���� ��� �ڷḦ �߰��� �� '�θ�Ű�� ����'�� ���� �߻�

INSERT INTO employee VALUES (100, '�̰�', 2500000, SYSDATE, '����', '1000');
INSERT INTO employee VALUES (101, '�̻�', 2000000, SYSDATE, '����', '1001');
INSERT INTO employee VALUES (102, '�ڴ�', 1500000, SYSDATE, '����', '1002');
INSERT INTO employee VALUES (103, '���ϴ�', 3500000, SYSDATE, '', '1003');
INSERT INTO employee VALUES (104, '�����', 4500000, SYSDATE, '����', '1000');
INSERT INTO employee VALUES (105, '����', 2500000, SYSDATE, '����', '1000');
INSERT INTO employee VALUES (106, '����', 2500000, SYSDATE, '����', '1000');

-- ��� �ڷ� �˻�
SELECT * FROM employee;

UPDATE employee SET sal = 2600000
WHERE empno = 105;

-- �ߺ����� �μ���ȣ�� �˻��Ͻÿ�(DISTINCT Ű����)
SELECT DISTINCT deptno �μ���ȣ
FROM employee;

-- GROUP BY ��(�Ҽӵ� �׷�ȭ) , ������ - HAVING ���
-- �μ��� �޿� �Ѿ��� ���Ͻÿ�
-- �Ҽ��� ROUND(AVG(sal),2) �Ҽ��� 2�ڸ�
SELECT deptno �μ�,  SUM(sal) �޿��Ѿ�, ROUND(AVG(sal),2) �޿����
FROM employee
GROUP BY deptno
HAVING AVG(sal) >= 3000000
ORDER BY AVG(sal) DESC;
-- ORDER BY ���� �������� 

-- ������ �����̸鼭 250���� �̻��� ����� �˻��ϼ���
SELECT * FROM employee
WHERE gender = '����'
AND sal >= 2500000;

-- �޿��� 200�� �� �̻� 300�� �� ������ ����� �˻��Ͻÿ�
SELECT * FROM employee 
WHERE sal >= 2000000 
AND sal <=3000000;

-- BETWEEN ~ AND
SELECT * FROM employee 
WHERE sal 
BETWEEN 2000000 AND 3000000;

-- ���ڿ� �˻� : �Ϻ� ���� ���� LIKE %����%
-- ���� '��'�� ����� �˻��Ͻÿ�.
SELECT * FROM employee
WHERE empname LIKE '%��%';

-- ��� �� �ο����� ���Ͻÿ�
SELECT COUNT(*) as ����� FROM employee;

COMMIT;
/*
����Ŭ �ڷ���
�ѱ� - 3bite
���� - 1bite

char(10) - �������� 'abc' - 10byte
varchar2(10) - �������� 'abc' - 3byte

date - ��¥(������)
timestamp - ��¥, �ð�

unmber(3)
*/
-- -------------------------����--------------------------------
-- ��� �ڷ� �˻�
select * from employee;

-- �ߺ����� �μ���ȣ�� �˻��Ͻÿ�(DISTINCT Ű����)
select distinct deptno �μ���ȣ from employee;

-- GROUP BY ��(�Ҽӵ� �׷�ȭ) , ������ - HAVING ���
-- �μ��� �޿� �Ѿ��� ���Ͻÿ�
-- �Ҽ��� ROUND(AVG(sal),2) �Ҽ��� 2�ڸ�
select deptno �μ�, sum(sal) �Ѿ�, round(avg(sal),2) ���
from employee 
group by deptno
having avg(sal) >= 3000000
order by avg(sal) desc;

-- ������ �����̸鼭 250���� �̻��� ����� �˻��ϼ���
select * from employee
where gender = '����'
and sal >= 2500000;

-- �޿��� 200�� �� �̻� 300�� �� ������ ����� �˻��Ͻÿ�
select * from employee
where sal >= 2000000
and sal < 3000000
order by sal;

-- BETWEEN ~ AND
select * from employee
where sal
between 2000000 and 3000000
order by sal;

-- ���ڿ� �˻� : �Ϻ� ���� ���� LIKE %����%
-- ���� '��'�� ����� �˻��Ͻÿ�.
select * from employee
where empname like '%��%';

-- = �� ������ �Ȱ��� �����ؾ� ��µ�
select * from employee
where empname = '�̰�';

-- ��� �� �ο����� ���Ͻÿ�
select count(*) as �ѻ���� from employee;

-- 105�� ����� ������ 265�������� �����Ͻÿ�
update employee set sal = 2650000
where empno = 105;

update employee set sal = 2600000
where empno = 105;

update employee set sal = 3000000
where empno = 102;

update employee set sal = 1500000
where empno = 102;

select * from employee;

select deptno �μ���ȣ from employee;

-- �ߺ����� �μ���ȣ�� �˻��Ͻÿ�
select distinct deptno �μ���ȣ from employee;























