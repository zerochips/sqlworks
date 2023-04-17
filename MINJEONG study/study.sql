CREATE TABLE sol(
    solnum VARCHAR2(4) PRIMARY KEY,
    solname VARCHAR2(20) NOT NULL,
    soloffice VARCHAR2(10)
);

DESC sol;

-- �μ� �߰�
INSERT INTO sol(solnum, solname, soloffice) VALUES ('101', '�λ���', '����');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('102', 'ȸ����', '����');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('103', '��������', '����');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('104', 'ȫ����', '����');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('105', '����������', '����');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('106', '������', '����');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('107', '������', '����');

SELECT * FROM sol;
SELECT solnum as �μ��ڵ�, solname as �μ���, soloffice as ��ġ FROM sol;
SELECT solnum, solname, soloffice FROM sol;

-- ã��
SELECT *FROM sol WHERE solnum = '101';

-- Ư���� �ڷ� �˻�
SELECT * FROM sol WHERE solnum = '102';

-- �ڷ� ���� : ORDER BY Į���� (ASC/DESC)
SELECT *FROM sol ORDER BY solnum DESC;

-- �μ� ��ȣ�� 102���� �μ��� '��������'���� �����Ͻÿ�
UPDATE sol SET solname = '��������'
WHERE solnum = '102';

SELECT * FROM sol;










