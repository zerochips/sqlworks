-- member ���̺� ���� --
CREATE TABLE t_member(
    memberId    VARCHAR2(20),
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joinDate    DATE DEFAULT SYSDATE,
    PRIMARY KEY(memberId)
);

DROP TABLE t_member CASCADE CONSTRAINTS;

SELECT * FROM t_member;

-- t_board ���̺� ����� --
CREATE TABLE t_board(
    bnum NUMBER(4) PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regDate DATE DEFAULT SYSDATE,
    hit NUMBER(5),
    memberId VARCHAR2(20),
    CONSTRAINT FK_MemberBoard FOREIGN KEY(memberId)
    REFERENCES t_member(memberId)
);

-- ������ ���� --
CREATE SEQUENCE bSeq
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

-- ��ȸ�� Į�� �߰�
ALTER TABLE t_board ADD (hit NUMBER(5));

SELECT * FROM t_member;
SELECT * FROM t_board;

DROP TABLE t_board;
DROP SEQUENCE bSeq;