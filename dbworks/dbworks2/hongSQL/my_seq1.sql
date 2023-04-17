-- ������ --
CREATE SEQUENCE mySeq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- 1���� �����ؼ� 1�� �����ϸ� �ּҰ� 1 ���� 
-- �ִ밪 1000���� ������ �ڵ������Ѵ�.

-- ���� �����ʹ� �����.
DELETE ex2_8;

-- ������ �Է�
INSERT INTO ex2_8 (col1, col2) VALUES (mySeq.NEXTVAL, 'cat');

INSERT INTO ex2_8 (col1, col2) VALUES (mySeq.NEXTVAL, 'dog');

INSERT INTO ex2_8 (col1, col2) VALUES (mySeq.NEXTVAL, 'cow');

SELECT * FROM ex2_8;

-- ������ ���� --
DROP SEQUENCE mySeq;

COMMIT;

