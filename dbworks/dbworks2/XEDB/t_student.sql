-- t_student ���̺� ����
CREATE TABLE t_student(
    studentId NUMBER(3),
    studentName VARCHAR2(10) NOT NULL,
    PRIMARY KEY(studentId)
);

-- �л� �߰�
INSERT INTO t_student VALUES (101, '�̰�');
INSERT INTO t_student VALUES (102, '���');

-- �л� ��ȸ
SELECT * 
FROM t_student 
ORDER BY studentId;

COMMIT;

