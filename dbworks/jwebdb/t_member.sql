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
    memberId VARCHAR2(20),
    CONSTRAINT FK_MemberBoard FOREIGN KEY (memberId)
    REFERENCES t_member(memberId)
);
-- �Խñ� ��ȣ ������ ����
CREATE SEQUENCE b_seq;

INSERT INTO t_member VALUES ('m12345', 'cloud', '����', '��', SYSDATE);
INSERT INTO t_board VALUES (b_seq.NEXTVAL, '�����Դϴ�.', '�� �����Դϴ�', SYSDATE, 'ansan');

SELECT * FROM t_member;
SELECT * FROM t_board;