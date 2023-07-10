-- t_board ���̺� ����� --
CREATE TABLE t_board(
    bnum NUMBER(4) PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(1000) NOT NULL,
    hit NUMBER(5),
    regDate DATE DEFAULT SYSDATE,
    memberId VARCHAR2(10),
    CONSTRAINT FK_MemberBoard FOREIGN KEY(memberId)
    REFERENCES t_member(memberId)
);

-- ������ ���� --
CREATE SEQUENCE b_seq
INCREMENT BY 1
START WITH 1 
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- �ܷ�Ű ���� ���� ����
ALTER TABLE t_board DROP CONSTRAINT FK_MemberBoard;

-- �ܷ�Ű ���� ���� ���� : t_member�� �ڷ� ���� ����
ALTER TABLE t_board ADD CONSTRAINT FK_MemberBoard FOREIGN KEY(memberId)
REFERENCES t_member(memberId) ON DELETE CASCADE;

SELECT * FROM t_board;

DELETE FROM t_board WHERE bnum = 11;
COMMIT;

DROP SEQUENCE b_seq;

DROP TABLE t_board CASCADE CONSTRAINTS;
