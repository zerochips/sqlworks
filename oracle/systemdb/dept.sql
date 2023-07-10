--�μ� ���̺�(dept)
CREATE TABLE dept(
    -- Į���̸� �ڷ���
    deptno  VARCHAR2(4) PRIMARY KEY,
    deptname VARCHAR2(20) NOT NULL,
    office  VARCHAR2(10)
);

-- �̻� ���� �ذ�
-- �μ��ڵ� : �ĺ���(Indetifier) - �⺻Ű(PRIMARY KEY) �Ӽ� �߰�
-- �μ��� : �ʼ� �Է� ����(NOT NULL �Ӽ� �߰�)

DESC dept;

-- �μ� �߰�
INSERT INTO dept(deptno, deptname, office) VALUES ('1000', '�λ���', '����');
INSERT INTO dept(deptno, deptname, office) VALUES ('1001', '������', '����');
INSERT INTO dept VALUES ('1002', '������', '����');
INSERT INTO dept(deptno, deptname) VALUES ('1003', '������');

-- ���� �Ϸ� : Ʈ������� �� �κ�
COMMIT;

-- �μ� �ڷ� �˻�(as ��Ī - alias)
SELECT * FROM dept;
SELECT deptno as �μ��ڵ�, deptname as �μ��� FROM dept;
SELECT deptno, deptname, office FROM dept;
SELECT * FROM dept WHERE deptno = '1001';

-- Ư���� �ڷ� �˻� : WHERE �� ����
SELECT * FROM dept;
WHERE deptno = '1002';

-- �ڷ� ���� : ORDER BY Į���� (ASC/DESC)
SELECT * FROM dept
ORDER BY deptno DESC;

-- �μ� ��ȣ�� 1002���� �μ��� 'ȸ����'���� �����Ͻÿ�
UPDATE dept SET deptname = 'ȸ����'
WHERE deptno= 1002;
SELECT * FROM dept;

-- �μ� ���̺� ����
-- �ڽ� ���ڵ尡 �־ ���� �ȵ�
DELETE FROM dept WHERE deptno = '1003';

DROP TABLE dept;

/*SQL ���
- DDL : Data Definition Language(������ ���Ǿ�)
	(Create, Alter, Drop)
- DML : Data Mainpulation Language(������ ����)
	(Insert, Select, Deleta -> Commit, Rollback)
- DCL : Data Control Language(������ �����)
	(Grant, Revoke)

�μ� ���̺�
Create table 
CRACTE TABLE dept( 
    -- Į���̸� �ڷ���
    -- �μ��ڵ� ������
   deptno VARCHAR2(10)
);

RDBMS() - ������ ������ ���̽� - ��ü, ������ �����ͺ��̽�
Releation(����)

*/

-- ---------------------------����---------------------------------
-- �̻� ���� �ذ�
-- �μ��ڵ� : �ĺ���(Indetifier) - �⺻Ű(PRIMARY KEY) �Ӽ� �߰�
-- �μ��� : �ʼ� �Է� ����(NOT NULL �Ӽ� �߰�)

-- �μ� �߰�
insert into dept values ('1004', '�빫��', '����');
select * from dept;

-- Ư���� �ڷ� �˻� : WHERE �� ����
select * from dept where deptno = '1000';

-- �ڷ� ���� : ORDER BY Į���� (ASC/DESC)
select deptno as �μ���ȣ from dept order by deptno asc;
select * from dept;

-- �μ� ��ȣ�� 1002���� �μ��� 'ȸ����'���� �����Ͻÿ�
update dept set office = '�빫��'
where deptno = '1002';

update dept set office = '����'
where deptno = '1002';

update dept set deptname = '�빫��'
where deptno = '1002';

update dept set deptname = '�빫��'
where deptno = '1004';

select * from dept;

-- �μ� ���̺� ����
delete from dept where deptname = '�빫��';

insert into dept values ('1004', '�빫��', '����');
