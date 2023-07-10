-- ȸ�� ���̺�
CREATE TABLE t_member(
    memberid    VARCHAR2(20) PRIMARY KEY,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joindate    DATE DEFAULT SYSDATE
);

-- �Խñ� ���̺�
CREATE TABLE t_board(
    bnum     NUMBER(4) PRIMARY KEY,
    title    VARCHAR2(100) NOT NULL,
    content  VARCHAR2(2000) NOT NULL,
    regdate  DATE DEFAULT SYSDATE,
    hit NUMBER(5) DEFAULT 0,
    memberId VARCHAR2(20),
    CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
    REFERENCES t_member(memberId)
);
-- �Խñ� ��ȣ ������ ����
CREATE SEQUENCE b_seq;

-- hit(��õ��) Į�� �߰�
ALTER TABLE t_board ADD hit NUMBER;

-- �ܷ�Ű ���� ���� ����
ALTER TABLE t_board DROP CONSTRAINT FK_MemberBoard;

-- �ܷ�Ű ���� ���� �缳��
ALTER TABLE t_board ADD CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
REFERENCES t_member(memberId) ON DELETE CASCADE;

INSERT INTO t_member VALUES ('cloud', 'm12345', '����', '��', SYSDATE);

INSERT INTO t_board VALUES (b_seq.NEXTVAL, '����1.', '�� �����Դϴ�', SYSDATE, 'cloud');

SELECT * FROM t_member;
SELECT * FROM t_board;

-- BNUM�� ��������, ROWNUM�� ��������
SELECT ROWNUM, board.*
FROM (SELECT * FROM t_board ORDER BY regdate DESC) board  -- ��Ī ���
--WHERE ROWNUM BETWEEN 6 AND 10;  --1���� �������� ������ �˻� �ȵ�
WHERE ROWNUM BETWEEN 1 AND 10;

-- ������ ó�� SQL
SELECT * FROM(
    SELECT ROWNUM num, board.* 
    FROM (SELECT * FROM t_board ORDER BY bnum DESC) board
)
WHERE num BETWEEN 11 AND 20;  -- ROWNUM�� ��Ī num�� ����� �˻���

-- �ߺ� ID
SELECT DECODE(count(*), 1, 'true', 'false') AS result 
FROM t_member 
WHERE memberid='sunny';

SELECT COUNT(*) total FROM t_board; 

DELETE FROM t_board;

DROP TABLE t_board;
DROP SEQUENCE b_seq;

ROLLBACK;
