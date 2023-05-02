-- ��Ƽ������ - SQL ����ȭ
--100���� �Ѿ�� ORDER BY bno DESC; �������� index�� ���
SELECT * FROM board ORDER BY bno DESC;
SELECT * from board;

-- �ۼ��ڰ� 'admin'�� �Խñ�
SELECT * FROM board WHERE writer = 'admin';

-- �ε��� ����
-- �ۼ��ڰ� 'admin'�� �Խñ� ��ȸ - �ε����� �����
-- CREATE INDEX �ε����̸� ON ���̺��̸�(Į���̸�)
CREATE INDEX idx_admin ON board(writer);
-- CREATE INDEX idx_writer ON board(writer);

-- ����Ŭ ��Ʈ
-- /*+ INDEX(���̺��̸� �ε����̸�) */
SELECT /*+ INDEX(board idx_admin) */ * FROM board
WHERE writer = 'admin';

-- �ε��� ����
DROP INDEX idx_admin;

-- ���� ��ȹ ���� �ڵ�
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(null, null, 'ALLSTATS LAST'));

SELECT /* + board_admin*/
       bno,
       title
FROM board
where writer = 'admin';

