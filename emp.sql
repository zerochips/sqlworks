-- ��� ���̺�
CREATE TABLE emp(
    -- Į�� �̸� �ڷ���
    -- 3bite �� �� �� 
    empno       NUMBER(3) PRIMARY KEY,   -- ��� ��ȣ
    empname     VARCHAR2(20) NOT NULL,   -- ��� �̸�(�ߺ��� �� ����)
    sal         NUMBER(10),              -- �޿�
    createdate   DATE DEFAULT SYSDATE    -- �����
);

-- ����� ���� Į�� �߰�(ALTER ~ ADD Į���̸� �ڷ��� )
ALTER TABLE emp ADD gender VARCHAR2(4);

-- ����� ���� �ڷ����� ����(MODIFY) VARCHAR2(10)
ALTER TABLE emp MODIFY gender VARCHAR2(10);
DESC emp;

-- ��� �߰�
INSERT INTO emp VALUES (100, '�̰�', 2500000, SYSDATE, '��');
INSERT INTO emp VALUES (101, '���', 3000000, SYSDATE, '��');
INSERT INTO emp VALUES (102, '�����', 5000000, SYSDATE, '��');
INSERT INTO emp VALUES (103, '�ڽ���', '', SYSDATE, '��');
INSERT INTO emp VALUES (104, '�����', 1500000, SYSDATE, '��');

-- ��� ��ȸ
SELECT * FROM emp;

-- �����ȣ, ����̸�, �޿��� �˻��Ͻÿ�
SELECT empno as ���, empname as �����, sal as �޿� FROM emp;

-- �޿��� ���� ����� �˻��Ͻÿ�
SELECT * FROM emp WHERE sal IS NULL;  -- NULL�� �ƴ� ����(IS NOT NULL)

-- �޿��� 300 ������ ����� �˻��Ͻÿ�
-- �޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ�
SELECT *
FROM emp
WHERE sal <= 3000000
ORDER BY sal DESC;

-- �޿��� ���� ������ �����Ͻÿ�
SELECT * FROM emp ORDER BY sal DESC;

-- ����� ���� ���Ͻÿ�
SELECT COUNT(*) as �����
FROM emp;

-- ��� �޿��� �հ�� ����� ���Ͻÿ�
SELECT SUM(sal) �޿��հ�, AVG(sal) �޿���� FROM emp;

-- ������ '��'�� ����� '����'�� �����Ͻÿ�(�ڷ� ����)
-- �̸��� ������� ����� �˻��Ͻÿ�
/*SELECT * FROM emp
WHERE empno = 104;*/

UPDATE emp SET gender = '����'
WHERE empno = 104;

-- ��� �̸��� ������� ��� ����
DELETE FROM emp
WHERE empname = '�����';

-- ���� �Լ� count(Į���̸�), count(*), sum(), avg(), max(), min()

COMMIT;

-- COMMIT �ϱ� ���̸� ���� ������
ROLLBACK;

-- ---------------------------����---------------------------------
-- ��� ���̺�
-- ����� ���� Į�� �߰�(ALTER ~ ADD Į���̸� �ڷ��� )
-- alter table emp add gender varchar2(10);

-- ����� ���� �ڷ����� ����(MODIFY) VARCHAR2(10)
alter table emp modify gender varchar2(10);
alter table emp modify gender varchar2(10);

-- ��� �߰�
insert into emp values (105, '�����', 100000000, sysdate, '��');
insert into emp values (106, '�����', 1000000000, sysdate, '��');
insert into emp values (107, '�����', 10000000000, sysdate, '��');

-- ��� ��ȸ
select * from emp;

-- �����ȣ, ����̸�, �޿��� �˻��Ͻÿ�
select empno as �����ȣ, empname as ����̸�, sal  as �޿�
from emp;

-- �޿��� ���� ����� �˻��Ͻÿ�
select * from emp where sal is null;

-- �޿��� 300 ������ ����� �˻��Ͻÿ�(��������)
select * from emp where sal < 3000000;

-- �޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ�(��������)
select * from emp where sal <= 3000000 order by sal desc;

-- �޿��� ���� ������ �����Ͻÿ�
select * from emp order by sal desc;
select * from emp order by sal;

-- ����� ���� ���Ͻÿ�
select count(*) ����� from emp;

-- ��� �޿��� �հ�� ����� ���Ͻÿ�
select sum(sal) �޿��հ�, avg(sal) �޿����
from emp;

-- ������ '��'�� ����� '����'�� �����Ͻÿ�(�ڷ� ����)
update emp set gender = '��'
where gender = '����';

select * from emp;

update emp set gender = '��'
where empno = 102;

-- �̸��� �̰��� ����� �˻��Ͻÿ�
select * from emp where empname = '�̰�';
select * from emp where empname like '%��%';

-- ��� �̸��� ������� ��� ����
delete from emp where empname = '�����';

-- ���� �Լ� count(Į���̸�), count(*), sum(), avg(), max(), min()
select count(*) ����� from emp;
select max(sal) ����, min(sal) ����
from emp;

-- COMMIT;
commit;
-- ROLLBACK;
rollback;

