-- ������(�Ϸù�ȣ) ����
CREATE SEQUENCE no_seq
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 10000
  MINVALUE 1
  NOCYCLE;
  
SELECT SEQUENCE_NAME, MIN_VALUE, MAX_VALUE, INCREMENT_BY, CYCLE_FLAG 
FROM USER_SEQUENCES;

-- MEMBERINFO ���̺� ����
CREATE TABLE memberinfo(
  no NUMBER PRIMARY KEY,  --�⺻Ű(������ ������ Į��)
  name  VARCHAR2(10) NOT NULL,
  phonenumber  VARCHAR2(20) NOT NULL
);

-- ������ �߰�
INSERT INTO memberinfo VALUES (no_seq.nextval, 'steve', '01011112222');
INSERT INTO memberinfo VALUES (no_seq.nextval, 'bill', '01011113333');
INSERT INTO memberinfo VALUES (no_seq.nextval, 'jeff', '01011112222');

SELECT * FROM memberinfo;

DELETE memberinfo;

INSERT INTO memberinfo VALUES (no_seq.nextval, 'steve', '01011112222');

SELECT no_seq.CURRVAL FROM DUAL;

COMMIT;








