-- ex2_2 ���̺� --
CREATE TABLE ex2_2(
    col_date    DATE,
    col_timestamp   TIMESTAMP
);

-- ��¥ ������ ��
INSERT INTO ex2_2 VALUES (SYSDATE, SYSTIMESTAMP);
-- SYS+DATE

INSERT INTO ex2_2 VALUES (SYSDATE, SYSTIMESTAMP);

SELECT * FROM ex2_2;

