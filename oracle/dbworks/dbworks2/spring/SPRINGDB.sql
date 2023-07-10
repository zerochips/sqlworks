-- tbl_board ���̺� ���� --
CREATE TABLE tbl_board(
    bno NUMBER(10, 0),
    title VARCHAR2(200) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    writer VARCHAR2(50) NOT NULL,
    regDate DATE DEFAULT SYSDATE,
    updateDate DATE DEFAULT SYSDATE
);

CREATE sequence seq_board;

-- �⺻Ű ���� ����
ALTER TABLE tbl_board ADD CONSTRAINT pk_board
PRIMARY KEY(bno);

-- ��� �� Į�� �߰�
ALTER TABLE tbl_board ADD replyCnt NUMBER DEFAULT 0;

-- ���� ��� �� ������Ʈ
UPDATE tbl_board SET replyCnt = 
    (SELECT COUNT(rno) FROM tbl_reply WHERE tbl_reply.bno = tbl_board.bno); 

-- ��� ó���� ���� ���̺� ����
CREATE TABLE tbl_reply(
  rno NUMBER(10, 0),
  bno NUMBER(10, 0) NOT NULL,
  reply VARCHAR2(1000) NOT NULL,
  replyer VARCHAR2(50) NOT NULL,
  replyDate DATE DEFAULT SYSDATE,
  updateDate DATE DEFAULT SYSDATE
);

CREATE SEQUENCE seq_reply;

ALTER TABLE tbl_reply ADD CONSTRAINT pk_reply PRIMARY KEY(rno);

ALTER TABLE tbl_reply ADD CONSTRAINT fk_reply_board
FOREIGN KEY (bno) REFERENCES tbl_board (bno);

-- tbl_user ���̺� ���� --
CREATE TABLE tbl_user(
    id VARCHAR2(10),
    password VARCHAR2(10),
    name VARCHAR2(20),
    role VARCHAR2(5)
);

ALTER TABLE tbl_user ADD CONSTRAINT pk_user
PRIMARY KEY(id);

-- user �߰� --
INSERT INTO tbl_user VALUES ('test', 'test123', '������', 'admin');
INSERT INTO tbl_user VALUES ('user1', 'user1', '����', 'user' );

COMMIT;

INSERT INTO tbl_board(bno, title, content, writer)
VALUES (seq_board.nextVal, '�׽�Ʈ ����', '�׽�Ʈ ����', '����');

SELECT * FROM tbl_reply ORDER BY rno DESC;
SELECT * FROM tbl_board ORDER BY bno DESC;

DROP TABLE tbl_board;
DROP SEQUENCE seq_board;
COMMIT;