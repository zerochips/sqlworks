-- ���̺� ���� --
CREATE TABLE ex2_1(
    column1    CHAR(10),
    column2    VARCHAR2(10),
    column3    NUMBER
)

CREATE TABLE ex2_4(
    col_date    DATE,
    col_timestamp TIMESTAMP
)

INSERT INTO ex2_4 VALUES (SYSDATE, SYSTIMESTAMP);

CREATE TABLE ex2_5(
    col_null    VARCHAR2(10),
    col_not_null VARCHAR2(10) NOT NULL
)

INSERT INTO ex2_5 VALUES ('Hello', '');

CREATE TABLE ex2_6(
    id   VARCHAR2(10) PRIMARY KEY,
    passwd VARCHAR2(10) NOT NULL
)

INSERT INTO ex2_6 VALUES ('sky2022', '1234mnop');
INSERT INTO ex2_6 VALUES ('sky2022', '1234abcd');


-- ���̺� �̸� ����
ALTER TABLE ex2_6 RENAME TO login;

-- Į�� �̸� ����
ALTER TABLE login RENAME COLUMN id TO userId;

-- Į�� �߰�
ALTER TABLE login ADD name VARCHAR2(10);

INSERT INTO login VALUES ('river2022', '1234abcd', '�̰���');

-- Į�� Ÿ�� ����
ALTER TABLE login MODIFY name VARCHAR2(20);

DESC login;

-- ������ ���� --
-- ���ڴ� Ȭ����ǥ ����, �ֵ���ǥ �Ұ���
INSERT INTO ex2_1(column1, column2, column3) VALUES ('abc', 'abc', 10);
INSERT INTO ex2_1(column1, column2, column3) VALUES ('�츮', '�츮', 11);
--INSERT INTO ex2_1(column1, column2) VALUES ('���ѹα�', '���ѹα�', 12);

-- ������ �˻� --
SELECT * FROM member;

-- CHAR�� VARCHAR2�� ũ�� �� --
SELECT column1, LENGTH(column1) as len1,
       column2, LENGTH(column2) as len2
    FROM ex2_1;
    
-- ���̺� ����
CREATE TABLE member AS
SELECT * FROM login;

-- ���̺� ����
DROP TABLE login;
