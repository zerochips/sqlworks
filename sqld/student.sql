-- �л� ���̺�
CREATE TABLE student(
    snumber NUMBER(10) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(4),
    address VARCHAR2(50),
    cname   VARCHAR2(30),
    pnumber NUMBER(3),
    
    --�ܷ�Ű ��������(�а�)
    CONSTRAINT fk_class FOREIGN KEY(cname) 
    REFERENCES class(cname),
    
    -- �ܷ�Ű(����)
    CONSTRAINT fk_professor FOREIGN KEY(pnumber)
    REFERENCES professor(pnumber)
);

-- �л� �ڷ� ����
INSERT INTO student VALUES (20211234, '�̰�', 22, '��', '����� ���α�', '����Ʈ�����а�', 301);
INSERT INTO student VALUES (20211235, '�ڴ��', 25, '��', '����� ���ϱ�', '�������ڰ��а�', 501);
INSERT INTO student VALUES (20211236, '�Ѻ��', 33, '��', '������ ��ȱ�', '�������ڰ��а�', 501);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '���', 33, 'ȭ�а��а�', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211238, '���', 15, '����Ʈ�����а�', 302);


-- �л� �ڷ� �˻�
SELECT * FROM student;

-- ������ '��'�� �л��� �˻��Ͻÿ�
SELECT * FROM student WHERE gender = '��';

-- ���̰� 20���� �л��� �˻��Ͻÿ�
-- BETWEEN A AND B(A�̻�(>=) B����(<=)
SELECT * FROM student 
WHERE age BETWEEN 20 AND 30;

SELECT * FROM student 
WHERE age >= 20 AND age <= 30;

-- �ּҰ� '������'�� �ڷḦ �˻��Ͻÿ�
SELECT * FROM student 
WHERE address LIKE '������%';

-- ����(ORDER BY ��������-ASC(��������), �������� ����-DESC)
SELECT *
FROM student
ORDER BY age ASC;

-- �̸������� �����Ͻÿ�
SELECT *
FROM student
ORDER BY sname;

-- NULL�� �ڷ� - IS NULL���� ���, IS NOT NULL�� ���
-- �ּҰ� ���� �ڷḦ �˻��Ͻÿ�
SELECT *
FROM student
WHERE address IS NULL;


select student.*, professor.pname
from student, professor
where professor.pnumber = student.pnumber;
