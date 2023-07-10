-- �Խ��� ���̺� ���� --
CREATE sequence seq_board;

CREATE TABLE tbl_board(
    bno number(10, 0),
    title   varchar2(200) not null,
    content varchar2(2000) not null,
    writer  varchar2(50) not null,
    regdate date default sysdate,
    updatedate  date default sysdate
);

ALTER TABLE tbl_board ADD CONSTRAINT pk_board
PRIMARY KEY(bno);

INSERT INTO tbl_board(bno, title, content, writer) 
VALUES (SEQ_BOARD.nextval, '����', '����', 'user00');

COMMIT;

SELECT * FROM tbl_board;
