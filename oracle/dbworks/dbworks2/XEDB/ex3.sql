CREATE TABLE ex3_1(
    col1    VARCHAR2(10),
    col2    NUMBER,
    col3    DATE
);

-- ���̺�(�ش�Į��), Į���� �� ��
INSERT INTO ex3_1(col1, col2, col3)
VALUES ('ABC', 10, SYSDATE);

-- �ش�Į���� ������ ��� --
INSERT INTO ex3_1 VALUES ('DEF', 20, SYSDATE);

-- Į���� �Ϻθ� ����� ��� --
INSERT INTO ex3_1(col1, col2)
VALUES ('GHI', 30);

SELECT * FROM ex3_1;