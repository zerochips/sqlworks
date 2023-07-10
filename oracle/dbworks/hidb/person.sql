-- person ���̺� ����
CREATE TABLE person(
    userId    VARCHAR2(10) PRIMARY KEY,
    userPw    VARCHAR2(10) NOT NULL,
    name      VARCHAR2(20) NOT NULL,
    age       NUMBER(3)
);

ALTER TABLE person DROP COLUMN regDate;

ALTER TABLE person ADD regDate DATE;

-- �ڷ� ����
INSERT INTO person(userId, userPw, name, age, regDate) 
VALUES ('sky1', 'cloud123', '������', 120, TO_DATE('2022-06-09', 'YYYY-MM-DD'));

-- Ŀ�� �Ϸ�
COMMIT;

SELECT * FROM person;

SELECT userId, userpw, name, age,
    TO_CHAR(regDate, 'yyyy-mm-dd') regDate
FROM person;