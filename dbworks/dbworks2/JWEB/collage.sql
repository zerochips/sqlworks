-- �а� ���̺�
CREATE TABLE department(
    dname VARCHAR2(30),
    dtel VARCHAR2(20),
    location VARCHAR2(20),
    PRIMARY KEY(dname)
);

-- ���� ���̺�
CREATE TABLE professor(
    pnumber NUMBER(3),
    pname VARCHAR2(20),
    major VARCHAR2(30),
    PRIMARY KEY(pnumber)
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
    REFERENCES department(dname),
    CONSTRAINT FK_prof_std FOREIGN KEY(pnumber)
    REFERENCES professor(pnumber)
);

-- �а� �߰� --
INSERT INTO department VALUES ('����Ʈ�����а�', '02-1234-1234', 'B�� 3��');  
INSERT INTO department VALUES ('ȭ�а��а�', '02-1234-4567', 'B�� 4��');
INSERT INTO department VALUES ('�������ڰ��а�', '02-1234-5678', 'B�� 5��');

-- ���� �߰�
INSERT INTO professor VALUES (301, '������', 'JAVA ���α׷���');
INSERT INTO professor VALUES (402, '�۹̿�', 'JSP �����α׷���');
INSERT INTO professor VALUES (501, '����ö', '�����ͺ��̽�');

-- �л� �߰� --
INSERT INTO student VALUES (20211234, '�̰�', 22, '��', '����� ���α�', '����Ʈ�����а�', 301);
INSERT INTO student VALUES (20211235, '�ڴ��', 25, '��', '����� ������', '�������ڰ��а�', 501);
INSERT INTO student VALUES (20211236, '�Ѻ��', 23, '��', '����� ������', '����Ʈ�����а�', 402);
INSERT INTO student VALUES (20211237, '�����', 27, '��', '��⵵ ������', 'ȭ�а��а�', 501);

SELECT * FROM department;
SELECT * FROM professor;
SELECT * FROM student;




