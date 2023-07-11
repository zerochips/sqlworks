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
-- �ڵ� ����(SEQUENCE)��ü�ڵ�(CACHE �⺻�� 20 - ĳ�� ������)
CREATE SEQUENCE b_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE;

-- ���� ���ε� Į�� �߰�
ALTER TABLE t_board ADD fileupload VARCHAR2(100);

-- joindate�� �Ⱦ��°� �½��ϴ�.
INSERT INTO t_member (memberid, passwd, name, gender) VALUES ('cloud', 'm12345', '�����', '��');

INSERT INTO t_board(bnum, title, content, memberid)
VALUES (b_seq.NEXTVAL, '�����λ�', '�ȳ��ϼ���. �ݰ����ϴ�.', 'cloud');

COMMIT;
SELECT * FROM t_member;
SELECT * FROM t_board;

delete from t_member where name = '����';

-- id �ߺ� üũ
SELECT DECODE(COUNT(*), 1, 'true', 'false') AS result
FROM t_member WHERE memberid = 'cloud';

-- id �ߺ� üũ
SELECT COUNT(*) AS result
FROM t_member WHERE memberid = 'cloud';

-- ������ ó��
SELECT ROWNUM, t_board.*  
FROM t_board
WHERE ROWNUM >= 1 AND ROWNUM <= 10
ORDER BY bnum; 

-- ������ ó��(�ζ��κ� - ��ø����(��������))
SELECT *
FROM (SELECT ROWNUM rn, t_board.*  FROM t_board ORDER BY bnum DESC)
WHERE rn > 0 AND RN <= 10;  --��Ī(RN)�� ����ؾ� ����

-- ������ ó��2(�ζ��κ� - ��ø����(��������))
SELECT *
FROM (SELECT ROWNUM rn, board.* 
            FROM(SELECT * FROM t_board ORDER BY bnum DESC) board)
WHERE rn >= 1 AND RN <= 10;  --��Ī(RN)�� ����ؾ� ����

-- �� ���� ��
SELECT COUNT(*) FROM t_board;



DROP TABLE t_board;  -- board ���̺� ����
DROP SEQUENCE b_seq; -- ������ ����

-- drop table t_member;
drop table t_board; -- board table ����
drop sequence b_seq;   -- boar b_seq ����

-- ���� ��ħ �� �ڵ����� ���� �߻�
--t_board�� sequence b_seq    -- drop ���� �� �ٽ� �� ����


