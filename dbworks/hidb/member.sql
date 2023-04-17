
-- ������ ���� 
CREATE SEQUENCE mySeq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- �� �������� 1���� ������ 1�� �����ϸ� �ּҰ� 1���� �ִ� 1000����
-- ������ �ڵ� �����Ѵ�.
-- �� �������� board ���̺� ���

-- BOARD ���̺� ����
CREATE TABLE board(
    bno    NUMBER(4) PRIMARY KEY,
    title  VARCHAR2(50) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regDate DATE DEFAULT SYSDATE
)

INSERT INTO board (bno, title, content, regDate) 
VALUES (mySeq.NEXTVAL, '����1', '����1 �����Դϴ�.', SYSDATE);

INSERT INTO board (bno, title, content, regDate) 
VALUES (mySeq.NEXTVAL, '����2', '����2 �����Դϴ�.', SYSDATE);

SELECT * FROM board;

-- ������ ����
DROP SEQUENCE mySeq;

