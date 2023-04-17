-- �μ�, ��� ���̺� ����
CREATE TABLE department(
    deptid      NUMBER,
    deptname    VARCHAR2(20) NOT NULL,
    loc_office  VARCHAR2(20) NOT NULL,
    PRIMARY KEY(deptid)
);

CREATE TABLE employee(
    empid   NUMBER,
    empname VARCHAR2(20) NOT NULL,
    age     NUMBER,
    deptid  NUMBER NOT NULL,
    -- �ܷ�Ű �������� ����
    CONSTRAINT emp_fk FOREIGN KEY(deptid) 
    REFERENCES department(deptid) ON DELETE CASCADE
);

-- �μ� �ڷ� �߰�
INSERT INTO department VALUES (10, '������', '����');
INSERT INTO department VALUES (20, '�ѹ���', '��õ');

-- ��� �ڷ� �߰�
INSERT INTO employee VALUES (101, '�̰�', 27, 10);
INSERT INTO employee VALUES (102, '���', 28, 20);
INSERT INTO employee VALUES (103, '����', 31, 30); -- ���� ���Ἲ ����

-- �μ��ڵ尡 20���� �μ� ����
DELETE FROM department WHERE deptid = 20;

-- �ڷ� �˻�
SELECT * FROM department;
SELECT * FROM employee;

DROP TABLE department;
DROP TABLE employee;



