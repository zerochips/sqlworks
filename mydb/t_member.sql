-- ȸ�� ���̺� ����
CREATE TABLE t_member(
    memberid    VARCHAR2(20) PRIMARY KEY,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joindate    DATE DEFAULT SYSDATE
);

CREATE TABLE t_board(
    bnum        NUMBER(4) PRIMARY KEY,
    title       VARCHAR2(100) NOT NULL,
    content     VARCHAR2(2000) NOT NULL,
    regdate     TIMESTAMP DEFAULT SYSTIMESTAMP, 
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    memberid    VARCHAR2(20) NOT NULL,
    CONSTRAINT FK_MemberBoard FOREIGN KEY(memberid)
    REFERENCES t_member(memberid) ON DELETE CASCADE
);

-- �۹�ȣ, ������, �۳���, �ۼ���, ������, ��ȸ��, ȸ�����̵�(�ܷ�Ű)
-- �ڵ� ����(SEQUENCE)
CREATE SEQUENCE b_seq;



-- joindate�� �Ⱦ��°� �½��ϴ�.
INSERT INTO t_member (memberid, passwd, name, gender) VALUES ('cloud', 'm12345', '�����', '��');

INSERT INTO t_board(bnum, title, content, memberid)
VALUES (b_seq.NEXTVAL, '�����λ�', '�ȳ��ϼ���. �ݰ����ϴ�.', 'cloud');

COMMIT;

SELECT * FROM t_member;
select * from t_board;

-- drop table t_member;
drop table t_board; -- board table ����
drop sequence b_seq;   -- boar b_seq ����

-- ���� ��ħ �� �ڵ����� ���� �߻�
-- t_board�� sequence b_seq drop ���� �� �ٽ� �� ����


