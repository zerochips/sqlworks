-- �Խ��� ���̺� ����
CREATE TABLE tbl_board(
    bno  NUMBER(5),
    title VARCHAR2(200) NOT NULL,
    writer VARCHAR2(20) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    updatedate DATE DEFAULT SYSDATE,
    cnt NUMBER(5) DEFAULT 0,
    replycnt NUMBER DEFAULT 0
);
-- �⺻Ű ���� ���� �̸� ����
ALTER TABLE tbl_board ADD CONSTRAINT pk_board
PRIMARY KEY(bno);
--�ڵ� ����
CREATE SEQUENCE seq; 

-- ��� ���̺�
CREATE TABLE tbl_reply(
    rno number(5),
    bno number(5) not null,
    reply VARCHAR2(1000) NOT NULL,
    replyer VARCHAR2(50) NOT NULL,
    replydate DATE DEFAULT SYSDATE,
    updatedate DATE DEFAULT SYSDATE
);
-- �ڵ� ����
CREATE SEQUENCE seq_reply;
-- �⺻Ű ����
ALTER TABLE tbl_reply ADD CONSTRAINT pk_reply PRIMARY KEY(rno);
-- �ܷ�Ű ����
ALTER TABLE tbl_reply ADD CONSTRAINT fk_reply_board
FOREIGN key(bno) REFERENCES tbl_board(bno);

-- ��� ���� Į�� �߰�
ALTER TABLE tbl_board ADD replycnt NUMBER DEFAULT 0;

-- ��� �� ������Ʈ(������ �ۼ��� ��� ����)
UPDATE tbl_board
SET replycnt = 
    (
     SELECT COUNT(rno) FROM tbl_reply
     WHERE tbl_reply.bno = tbl_board.bno
    );

SELECT * FROM tbl_reply
ORDER BY rno DESC;

DROP TABLE tbl_board;
DROP TABLE tbl_reply;
DROP SEQUENCE seq;
DROP SEQUENCE seq_reply;

-- ���� ������(�Խñ�) �Է�
INSERT INTO tbl_board (bno, title, writer, content)
VALUES (seq.NEXTVAL, '�׽�Ʈ ����', 'user00', '�׽�Ʈ �����Դϴ�.');

-- ���� ������(���) �Է�
INSERT INTO tbl_reply(rno, bno, reply, replyer)
VALUES (seq_reply.NEXTVAL, 2, '��ǳ�� ���� ���׿�..', 'admin');

SELECT * FROM tbl_reply
WHERE bno = 2;

SELECT * FROM tbl_board ORDER BY bno DESC;

-- ��� ����
INSERT INTO tbl_board (bno, title, content, writer)
SELECT seq.nextval, title, content, writer from tbl_board;

-- �����ϱ�(ROWNUM-��������, bno-��������)
-- bno�� �Խñ��� ������ ��� ��ȣ�� ������
-- ROWNUM�� ���� �����ʹ� �ƴ�����, ������ �����͸� ī��Ʈ�Ͽ� ���(VIEW)�� �� ����
SELECT ROWNUM, bno, title FROM tbl_board 
ORDER BY bno DESC;

-- ��Ʈ(hint) �ֱ� - �ε��� ����Ͽ� �����ϱ� : �⺻Ű ��� 
SELECT /*+ INDEX_DESC(tbl_board pk_board) */ ROWNUM, bno, title 
FROM tbl_board;

-- 1������ ��������
SELECT /*+ INDEX_DESC(tbl_board pk_board) */ ROWNUM bno, title 
FROM tbl_board 
WHERE ROWNUM <= 10;

-- 2������ �����ü� ����(0���� �����ؾ� �ϹǷ�)
SELECT /*+ INDEX_DESC(tbl_board pk_board) */ ROWNUM bno, title 
FROM tbl_board 
WHERE ROWNUM >10 AND ROWNUM <=20;

-- ��������(�ζ��� ��) ���:  11 ~ 20 �̾Ƴ���
-- rownum�� Ű���� �̹Ƿ� rn ��Ī ���
SELECT * FROM
(
    SELECT /*+ INDEX(tbl_board pk_board) */
        ROWNUM rn, bno, title, writer, content 
    FROM tbl_board 
    WHERE ROWNUM <= 10
)
WHERE rn > 0;

-- ������ ó�� SQL
SELECT * FROM
(
    SELECT /*+ INDEX_DESC(tbl_board pk_board) */
        rownum rn, bno, title, writer, content, regdate, updatedate, cnt
    FROM tbl_board 
    WHERE ROWNUM <= (2 * 10)
)
WHERE rn > (1-1) * 10;



