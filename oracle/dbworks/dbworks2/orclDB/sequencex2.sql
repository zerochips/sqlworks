-- ������(�Ϸù�ȣ) ����
CREATE SEQUENCE my_seq
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 10000
  MINVALUE 0
  NOCYCLE;

-- ������ �˻�
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG 
FROM USER_SEQUENCES;

-- ������ ����
ALTER SEQUENCE my_seq
  MAXVALUE 100;


-- memberinfo2 ���̺� ����
CREATE TABLE memberinfo2(
  no NUMBER PRIMARY KEY,  --�⺻Ű(������ ������ Į��)
  name  VARCHAR2(10) NOT NULL
);

SELECT * FROM memberinfo2;

-- �ڷ��߰� �� ���̺��� �ڷ� ����
DELETE memberinfo2;

INSERT INTO memberinfo2 VALUES (my_seq.nextval, 'steve');
INSERT INTO memberinfo2 VALUES (my_seq.nextval, 'bill');
INSERT INTO memberinfo2 VALUES (my_seq.nextval, 'james');

COMMIT;


