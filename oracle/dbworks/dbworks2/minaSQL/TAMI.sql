-- ���̺� ���� TEST
CREATE TABLE TEST (
    SEQ NUMBER(1)
);

-- ���̺� ����
CREATE TABLE TAMI_MEMBER(
    SEQ     NUMBER(3),
    NAME    VARCHAR(20),
    POSITION    VARCHAR(100),
    FINAL_YN    VARCHAR(1)
);

SELECT VSIZE('ABC') FROM DUAL;

SELECT VSIZE('������') FROM DUAL;
-- ���� 1����Ʈ, �ѱ� 2����Ʈ

INSERT INTO tami_member VALUES (1, '����', 'vocal', 'y');

SELECT * FROM tami_member;