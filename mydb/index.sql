--100���� �Ѿ�� ORDER BY bno DESC; �������� index�� ���
SELECT * FROM board ORDER BY bno DESC;
SELECT * from board;

-- �ۼ��ڰ� 'admin'�� �Խñ�
SELECT * FROM board WHERE writer = 'admin';

-- �ε��� ����
CREATE INDEX idx_admin ON board(writer);

-- �ε��� ����
DROP INDEX idx_admin;

-- ���� ��ȹ ���� �ڵ�
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(null, null, 'ALLSTATS LAST'));

SELECT /* + board_admin*/
       bno,
       title
FROM board
where writer = 'admin';

