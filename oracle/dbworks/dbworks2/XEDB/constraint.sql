-- ����(CONSTRAINT) ���� --
CREATE TABLE ex2_4(
    col_1 VARCHAR2(10) PRIMARY KEY,
    col_2 NUMBER(2)
);

-- �⺻Ű�� NOT NULL �̹Ƿ� NULL �Է� �Ұ�
INSERT INTO ex2_4 VALUES ('', 25);

INSERT INTO ex2_4 VALUES ('AA', 25);

-- �⺻Ű�� �ߺ� �Է� �Ұ�
INSERT INTO ex2_4 VALUES ('AA', 25);

SELECT * FROM ex2_4;

SELECT * FROM departments;

INSERT INTO departments VALUES (100, 'Sample Dept', 200, 1700);

