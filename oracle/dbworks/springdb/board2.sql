-- board ���̺� ����
-- board �ڵ� ����
CREATE SEQUENCE seq_board;

CREATE TABLE board(
    bno  NUMBER(10, 0),
    title VARCHAR2(200) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    writer VARCHAR2(50) NOT NULL,
    regdate DATE DEFAULT SYSDATE,
    updatedate DATE DEFAULT SYSDATE
);
-- pk ����
ALTER TABLE board ADD CONSTRAINT pk_board2
PRIMARY KEY(bno);
-- replycnt Į�� �߰�
ALTER TABLE board ADD
replycnt NUMBER DEFAULT 0;

-- reply ���̺� ����
CREATE TABLE reply(
    rno NUMBER(10, 0),
    bno NUMBER(10, 0) NOT NULL,
    reply VARCHAR2(1000) NOT NULL,
    replyer VARCHAR2(50) NOT NULL,
    replyDate DATE DEFAULT SYSDATE,
    updateDate DATE DEFAULT SYSDATE
);
-- reply �ڵ� ����
CREATE SEQUENCE seq_reply;
-- reply pk ����
ALTER TABLE reply ADD CONSTRAINT pk_reply2 
PRIMARY KEY (rno);
-- reply �ܷ�Ű ����
ALTER TABLE reply ADD CONSTRAINT fk_reply_board2 
FOREIGN KEY (bno) REFERENCES board(bno);

-- ���� ��� ���� ������Ʈ
UPDATE board 
SET replycnt = 
    (
    SELECT COUNT(rno) FROM reply
    WHERE reply.bno = board.bno
    );

-- ���� ������ �߰�
INSERT INTO board(bno, title, content, writer) 
VALUES (seq_board.nextval, '�׽�Ʈ ����', '�׽�Ʈ �����Դϴ�', 'user00');

-- ��� ����
INSERT INTO board(bno, title, content, writer)
(SELECT seq_board.nextval, title, content, writer FROM board);

-- FULL ��Ʈ : FULL SCAN
SELECT 
    /*+ FULL(board) */ ROWNUM rn, bno, title
FROM board
WHERE bno > 0;

-- INDEX�� �̿� - ���� ����
SELECT 
    /*+ INDEX_DESC(board pk_board2) */ 
    ROWNUM, bno, title, content
FROM board
WHERE bno > 0 AND ROWNUM <= 10; -- ROWNUM�� 1�� �����ؾ� ��

-- �ζ��� ��(���� ����) : 10���� ���(������ ó��)
SELECT *
FROM 
(
    SELECT 
        /*+ INDEX_DESC(board pk_board2) */ 
        ROWNUM rn, bno, title, content
    FROM board
    WHERE bno > 0 AND ROWNUM <= 20
)
WHERE rn > 10;

SELECT * FROM board WHERE ROWNUM < 10
ORDER BY bno DESC;

DELETE FROM board;
DROP TABLE board;
DROP SEQUENCE seq_board;

-- reply CRUD
INSERT INTO reply (rno, bno, reply, replyer)
VALUES (seq_reply.nextval, 2, '��� �׽�Ʈ', 'giyong');

SELECT * FROM reply ORDER BY rno DESC;

-- ���� �Լ� : COUNT()
SELECT bno, COUNT(*)
FROM reply
GROUP BY bno
ORDER BY COUNT(*) DESC;

-- group by : rollup()
SELECT bno, reply, replyer, COUNT(*)
FROM reply
GROUP BY ROLLUP(bno, reply, replyer)
ORDER BY COUNT(*) DESC;

SELECT bno, reply, COUNT(*)
FROM reply
GROUP BY ROLLUP(bno, reply)
ORDER BY bno DESC;





