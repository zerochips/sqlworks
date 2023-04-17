-- �а� ���̺�
CREATE TABLE department(
    dname VARCHAR2(30),
    dtel VARCHAR2(20),
    location VARCHAR2(20),
    PRIMARY KEY(dname)
);

-- �л� ���̺�
CREATE TABLE student(
    snumber NUMBER(10),
    sname VARCHAR2(20),
    age NUMBER(3),
    gender VARCHAR2(4),
    address VARCHAR2(30),
    dname VARCHAR2(30),
    pnumber NUMBER(3),
    PRIMARY KEY(snumber),
    CONSTRAINT FK_dept_std FOREIGN KEY(dname)
    REFERENCES department(dname)
);

-- �а� �߰� --
INSERT INTO department VALUES ('����Ʈ�����а�', '02-1234-1234', 'B�� 3��');  
INSERT INTO department VALUES ('ȭ�а��а�', '02-1234-4567', 'B�� 4��');
INSERT INTO department VALUES ('�������ڰ��а�', '02-1234-5678', 'B�� 5��');

-- �л� �߰� --
INSERT INTO student VALUES (20211234, '�̰�', 22, '��', '����� ���α�', '����Ʈ�����а�');
INSERT INTO student VALUES (20211235, '�ڴ��', 25, '��', '����� ������', '�������ڰ��а�');
INSERT INTO student VALUES (20211236, '�Ѻ��', 23, '��', '����� ������', '����Ʈ�����а�');
INSERT INTO student VALUES (20211237, '�����', 27, '��', '��⵵ ������', 'ȭ�а��а�');

TRUNCATE TABLE student;
DROP TABLE student;
DROP TABLE professor;
DROP TABLE department;

SELECT * FROM student;
SELECT * FROM department;
SELECT * FROM professor;

-- ���� �߰�
INSERT INTO professor VALUES (301, '������', 'JAVA ���α׷���');
INSERT INTO professor VALUES (402, '�۹̿�', 'JSP �����α׷���');
INSERT INTO professor VALUES (501, '������', '�����ͺ��̽�');

INSERT INTO student VALUES (20211234, '�̰�', 22, '��', '����� ���α�', '����Ʈ�����а�');
INSERT INTO student VALUES (20211235, '�ڴ��', 25, '��', '����� ������', '�������ڰ��а�');
INSERT INTO student VALUES (20211236, '�Ѻ��', 23, '��', '����� ������', '����Ʈ�����а�');
INSERT INTO student VALUES (20211237, '�����', 27, '��', '��⵵ ������', 'ȭ�а��а�');