
DESC t_student;

CREATE TABLE t_student2 AS
SELECT * FROM t_student;

INSERT INTO t_student2 VALUES (100, '�̰�');
INSERT INTO t_student2 VALUES (101, '�̻�');

COMMIT;

-- Į�� ����
ALTER TABLE t_student2 DROP COLUMN studentId;

-- Į�� �߰�
ALTER TABLE t_student2 ADD (age NUMBER(3));


-- Į�� ����( �ڷ����� ũ�⸦ 10byte-> 20byte)
ALTER TABLE t_student2 MODIFY (studentName VARCHAR2(20));

-- Į�� �̸� ����
ALTER TABLE t_student2 RENAME COLUMN age TO studentAge;

UPDATE t_student2 SET age=25 WHERE studentId = 101;

-- ���̺��� ����(�ڷ�) ��� �����ϱ� 
TRUNCATE TABLE t_student2;


-- ���̺� ����
DROP TABLE t_student2;

SELECT * FROM t_student2;