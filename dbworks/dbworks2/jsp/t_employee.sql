-- t_employee ���� --
CREATE TABLE t_employee(
    companyId   NUMBER(4) PRIMARY KEY,
    passwd     VARCHAR2(20) NOT NULL,
    name       VARCHAR2(20) NOT NULL,
    joinDate   Date DEFAULT SYSDATE
);

DESC t_employee;

SELECT * FROM t_employee ORDER BY companyId;

-- ��� �߰� --
INSERT INTO t_employee
VALUES (1001, 'a1001', '����', SYSDATE);

COMMIT;
