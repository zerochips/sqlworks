-- DDL(������ ���Ǿ�) - CREATE, ALTER, DROP
-- DML(������ ���۾�) - SELECT, INSERT, UPDATE, DELETE
-- CDL(������ �����) - GRANT, REVOKE
-- TCL(Ʈ�����) - COMMIT, ROLLBACK

-- tcl_test ���̺� ����
CREATE TABLE tcl_test(
    c1 NUMBER(2),
    c2 NUMBER(3)
);

SAVEPOINT t1;  -- ������ ����
INSERT INTO tcl_test VALUES (10, 100);

SAVEPOINT t2;  -- ������ ����
INSERT INTO tcl_test VALUES (20, 200);

-- t2�� ROLLBACK(���)�Ͽ���
ROLLBACK TO t2;

-- Ŀ��
COMMIT;  -- Ŀ�� �Ϸ�

SELECT * FROM tcl_test;

DROP TABLE tcl_test;