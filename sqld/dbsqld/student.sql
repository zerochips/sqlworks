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
INSERT INTO student VALUES (20211234, '�̻�', 22, '��', '����� ���α�', '����Ʈ�����а�', 301, 3.5);
INSERT INTO student VALUES (20211235, '�ڴ��', 25, '��', '����� ���ϱ�', '�������ڰ��а�', 501);
INSERT INTO student VALUES (20211236, '�Ѻ��', 33, '��', '������ ��ȱ�', '�������ڰ��а�', 501, 4.2);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '���', 33, 'ȭ�а��а�', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211238, '���', 15, '����Ʈ�����а�', 302);
INSERT INTO student VALUES (20211240, '������', 43, '��', '������ ��ȱ�', '�������ڰ��а�', 501, 4.1);
INSERT INTO student VALUES (20211241, '�̼���', 37, '��', '������ ��ȱ�', '����Ʈ�����а�', 302, 3.6);
INSERT INTO student VALUES (20211242, '�̰�', 22, '��', '������ ��ȱ�', '����Ʈ�����а�', 301, 4.3);


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

-- ���̺� ����(join)
-- �л��̸�, ����, ����, ����, �����̸�
SELECT 
    st.sname �л��̸�, 
    st.age ����, 
    st.gender ����, 
    st.cname ����, 
    pr.pname ���� 
FROM student st, professor pr
WHERE st.pnumber = pr.pnumber
ORDER BY st.sname;

-- �׷�(GROUP)�Լ� y = f(x)
-- �л��� ���� ����Ͻÿ�
SELECT COUNT(*) �л���
FROM student;

SELECT COUNT(sname) �л���
FROM student;

-- �л� ������ ����� ���Ͻÿ�
SELECT AVG(age) ��ճ���, MAX(age) �ְ���, MIN(age) ��������
FROM student;

-- ����(point) Į�� �߰�(4.5)
ALTER TABLE student ADD point FLOAT(3);
-- NUMBER(3, 2) - �Ҽ���°�ڸ��� �� ���� �� ���ڸ���
ALTER TABLE student MODIFY point NUMBER(3, 2);

-- ������ NULL�� �л� ����
DELETE FROM student
WHERE point IS NULL;

-- �л��� �л���, ���� ���
SELECT COUNT(*) �л���, AVG(point) �������
FROM student;

-- ������ 4�̻��̰� ������ '��'�� �л��� �˻��Ͻÿ�
SELECT *
FROM student
WHERE point >= 4.0 AND gender = '��';

-- �л��̸�, ����, ����, �а���, �а���ȭ��ȣ, �����̸� ���
SELECT 
    st.sname �л��̸�, 
    st.gender ����, 
    st.point ����, 
    cl.cname �а���, 
    cl.ctel �а���ȭ��ȣ,
    pr.pname �����̸�
FROM student st, class cl, professor pr
WHERE point >= 4.0 AND gender = '��'
    AND st.cname = cl.cname
    AND st.pnumber = pr.pnumber;

-- �׷����� ������ ó�� : GROUP BY ������ ���
-- �а��� ���� ����� �˻��Ͻÿ�
SELECT cname �а���, AVG(point) �������
FROM student
GROUP BY cname;

-- �а��� ���� ����� �˻��Ͻÿ�(����: 4.0�̸��� �ڷ�)
SELECT cname �а���, AVG(point) �������
FROM student
GROUP BY cname
HAVING AVG(point) < 4.0;

-- ���� ���� ����� ���Ͻÿ�
DESC student;





