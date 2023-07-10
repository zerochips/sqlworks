-- getBoardList()
-- ROWNUM�� �� ���°�? ����(bnum)�� �Խñ��� �����ǹǷ� ���ڵ�� ����� ����Ȯ��
SELECT * FROM t_board ORDER BY regDate DESC;

SELECT ROWNUM, t_board.* FROM t_board;

SELECT ROWNUM, t_board.* FROM t_board ORDER BY regDate DESC;

SELECT ROWNUM, board.*       -- t_board�� �ߺ� �˻��� �Ǿ� ���� - ���ο� ��Ī�� �ٿ���
FROM (SELECT * FROM t_board ORDER BY regDate DESC) board
WHERE ROWNUM BETWEEN 1 AND 10;
--WHERE ROWNUM BETWEEN 6 AND 10;   -- ROWNUM�� 1������ �������� ������ �˻� �ȵ�.

-- paging ó�� ���� ����
SELECT * FROM (
    SELECT ROWNUM num, board.*    -- ROWNUM�� SELECT �ٱ����� �� �˻��ǹǷ� ���� - ��Ī�� �ٿ���
    FROM (SELECT * FROM t_board ORDER BY regDate DESC) board
)
WHERE num BETWEEN 6 AND 10;

SELECT * FROM t_board;

DELETE FROM t_board 
WHERE BNUM > 29;

-- INSERT INTO ~ SELECT ����
INSERT INTO t_board(bnum, title, content, regDate, hit, memberId)
SELECT bSeq.NEXTVAL, title, content, regDate, hit, memberId 
FROM t_board;

COMMIT;
