-- �μ� ���̺� ���� --
CREATE TABLE department(
    deptId      NUMBER(3) PRIMARY KEY,
    deptName    VARCHAR2(20),
    location    VARCHAR2(20)
);

-- ���̺� �׽�Ʈ ������ �߰� --
INSERT INTO department VALUES (100, '������', '����');

-- �߰��� Ŀ��-
COMMIT;

SELECT * FROM department;