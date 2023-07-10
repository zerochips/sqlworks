
-- �Խ��� ���̺� ���� --
DROP TABLE board CASCADE CONSTRAINTS;

CREATE TABLE board(
    articleNO   NUMBER(10) PRIMARY KEY,
    parentNO    NUMBER(10) DEFAULT 0,
    title   VARCHAR2(500) NOT NULL,
    content VARCHAR2(4000),
    writeDate  DATE DEFAULT SYSDATE NOT NULL,
    id  VARCHAR2(10),
    CONSTRAINT FK_ID FOREIGN KEY(id)
    REFERENCES t_member(id)
);

SELECT * FROM board;

DELETE FROM board;
COMMIT;

-- �׽�Ʈ �� �߰� --
INSERT INTO board(articleNO, parentNO, title, content, writeDate, id)
VALUES(1, 0, '�׽�Ʈ ����', '�׽�Ʈ �� �����Դϴ�.', SYSDATE, 'hong');

INSERT INTO board(articleNO, parentNO, title, content, writeDate, id)
VALUES(2, 0, '�ȳ��ϼ���', '��ǰ �ı��Դϴ�.', SYSDATE, 'lee');

INSERT INTO board(articleNO, parentNO, title, content, writeDate, id)
VALUES(3, 2, '�亯�Դϴ�.', '��ǰ �ı⿡ ���� �亯�Դϴ�.', SYSDATE, 'hong');

INSERT INTO board(articleNO, parentNO, title, content, writeDate, id)
VALUES(5, 3, '�亯�Դϴ�.', '��ǰ ���ƿ�~', SYSDATE, 'lee');

INSERT INTO board(articleNO, parentNO, title, content, writeDate, id)
VALUES(4, 0, '�������Դϴ�.', '������ �׽�Ʈ �� �����Դϴ�.', SYSDATE, 'kim');

INSERT INTO board(articleNO, parentNO, title, content, writeDate, id)
VALUES(6, 2, '��ǰ �ı��Դϴ�.', '�̼��� ��ǰ �ı��Դϴ�.', SYSDATE, 'lee');

-- �� ��� ��ȸ ������ SQL�� --
SELECT LEVEL,
       articleNO,
       parentNO,
       LPAD(' ', 4*(LEVEL-1)) || title title,
       content,
       writeDate,
       id
       FROM board
       START WITH parentNO = 0
       CONNECT BY PRIOR articleNO = parentNO
       ORDER SIBLINGS BY articleNO DESC;








