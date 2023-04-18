-- board ���̺�
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY,   --�۹�ȣ
    title VARCHAR2(200) NOT NULL,         --������
    writer VARCHAR2(20) NOT NULL,         --�ۼ���
    content VARCHAR2(2000) NOT NULL,      --�۳���
    regdate DATE DEFAULT SYSDATE --�����
);
-- ������(�Ϸù�ȣ, �ڵ�����)
CREATE SEQUENCE seq;

-- ��õ�� Į���� �߰��Ͻÿ�(Į����: cnt, �ڷ���: NUMBER DEFAULT 0)
-- ALTER TABLE ���̺��̸� ADD Į���� �ڷ���
ALTER TABLE board ADD cnt NUMBER DEFAULT 0;

DESC board;

-- �Խñ� �߰�
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ�', '������', '�ȳ��ϼ���, �����λ� �����');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '���������Դϴ�.', '������', '�����λ縦 �����ּ���');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ��Դϴ�.', '�̰�', '�ȳ��ϼ���~');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '�����λ��Դϴ�.', '�̰�', '�ȳ��ϼ���~');
INSERT INTO board(bno, title, writer, content) 
VALUES(seq.NEXTVAL, '���� �Ϸ�', '���Ϸ�', '���� �Ϸ� �Ǽ���');

-- �Խñ� �˻�
SELECT * FROM board
ORDER BY regdate DESC;
-- ROWNUM 
-- ����Ŭ�� �����ϴ� ������ �Ϸù�ȣ
-- ��ȸ�Ǵ� �� ���� �����Ҷ� ���

-- �ۼ��ڰ� �������� �Խñ��� �˻��Ͻÿ�
SELECT * FROM board 
WHERE bno = 2;

-- �Խñ��� �ۼ��ڸ� '������'���� 'admin'���� �����ϼ���.
-- UPDATE ���̺��̸� SET Į�� = ���氪 WHERE ��
UPDATE board SET writer = 'admin'
WHERE bno = 2;

-- 3�� �Խñ��� �����Ͻÿ�
-- DELETE FROM ���̺��̸� WHERE ��
DELETE FROM board 
WHERE bno = 3;

-- ��� ����(�ڷ� ����)
-- INSERT INTO(Į��) (SELECT Į�� FROM ���̺��̸�)
INSERT INTO board(bno, title, writer, content)
(SELECT seq.nextval, title, writer, content FROM board);

SELECT ROWNUM, bno, title, content
FROM board
WHERE ROWNUM > 0 AND ROWNUM <= 20;
-- WHERE ROWNUM > 11 AND ROWNUM <= 20;
-- ROWNUM�� �ݵ�� 1�� �����Ͽ��� ��
-- ORDER BY regdate ASC;

-- ������ ó��
-- ��Ī(rn)�� ����ϸ� 11���� 20������ ��� �����ϴ� 
SELECT * 
FROM
    (SELECT ROWNUM rn, bno, title, content
    FROM board)
WHERE rn >= 11 AND rn <= 20;   -- ROWNUM�� ��Ī�� ����ϸ� ������

-- RWOID
-- �����͸� �����ϴ� ������ ��
-- ROWID�� ���ؼ� ������ ����, ��� ���� ����Ǿ� �ִ��� �� �� ����
SELECT ROWID, bno, title, content
FROM board
WHERE ROWID = 'AAAS8wAAHAAAAFuAAA';

select * from board;

-- ������ ����
DROP SEQUENCE seq;

-- ���̺� ����
DROP TABLE board;

COMMIT;

