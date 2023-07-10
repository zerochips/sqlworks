-- ���� ���̺� ���� --
CREATE TABLE employee(
    companyId   NUMBER(4) PRIMARY KEY,
    name        VARCHAR2(20) NOT NULL,
    position    VARCHAR2(20) NOT NULL,
    deptId      NUMBER(3),
    CONSTRAINT FK_DEPTEMPLOYEE FOREIGN KEY(deptId) 
    REFERENCES department(deptId)
);

-- �׽�Ʈ �ڷ� �߰� --
INSERT INTO employee VALUES (5000, '��׷�', '�븮', 100);

COMMIT;

SELECT * FROM employee;

DROP TABLE employee;