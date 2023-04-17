--NEWRECK �ǽ��� ����
--MEMBER ���̺�
CREATE TABLE member(
    id VARCHAR2(50),
    pwd VARCHAR2(50),
    name VARCHAR2(50),
    gender VARCHAR2(50),
    age NUMBER,
    birthday VARCHAR2(50),
    phone VARCHAR2(50),
    regDate date
);

--NOTICE ���̺�(jsp)
CREATE TABLE notice(
    id NUMBER,
    title VARCHAR2(100),
    writer_id VARCHAR2(50),
    content CLOB,
    regDate TIMESTAMP,
    hit NUMBER,
    files VARCHAR2(1000)
);

--NOTICE2 ���̺�(spring)
CREATE TABLE notice2(
    id NUMBER NOT NULL,
    title VARCHAR2(100) NOT NULL,
    writer_id VARCHAR2(50) NOT NULL,
    content CLOB,
    regDate TIMESTAMP(6) DEFAULT systimestamp NOT NULL,
    hit NUMBER DEFAULT 0 NOT NULL,
    files VARCHAR2(1000),
    pub NUMBER(1,0) DEFAULT 0 NOT NULL,
    CONSTRAINT "NOTICE_PK" PRIMARY KEY(id)
);

INSERT INTO notice VALUES (1, '������1', 'sky1', '�۳����Դϴ�1', SYSTIMESTAMP, 1, 'A');
INSERT INTO notice VALUES (2, '������2', 'sky2', '�۳����Դϴ�2', SYSTIMESTAMP, 6, 'A');
INSERT INTO notice VALUES (3, '������3', 'sky3', '�۳����Դϴ�3', SYSTIMESTAMP, 3, 'A');
INSERT INTO notice VALUES (4, '������4', 'sky4', '�۳����Դϴ�4', SYSTIMESTAMP, 1, 'A');
INSERT INTO notice VALUES (5, '������5', 'sky5', '�۳����Դϴ�5', SYSTIMESTAMP, 15, 'A');
INSERT INTO notice VALUES (6, '������6', 'sky6', '�۳����Դϴ�6', SYSTIMESTAMP, 4, 'A');
COMMIT;

SELECT * FROM NOTICE;

INSERT INTO notice 
SELECT * FROM notice;

COMMIT;