-- ex2_8 ���̺� ���� --
CREATE TABLE ex2_8(
    col1    VARCHAR2(10) PRIMARY KEY,
    col2    VARCHAR2(10)
);

-- �⺻Ű�� NOT NULL�̹Ƿ� NULL �Է� �Ұ�
INSERT INTO ex2_8 VALUES ('', 'AA');

INSERT INTO ex2_8 VALUES ('aa', 'aa');

-- ���Ἲ ���� ���� ����
INSERT INTO ex2_8 VALUES ('aa', 'aa');

DELETE ex2_8;