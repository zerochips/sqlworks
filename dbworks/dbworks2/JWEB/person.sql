-- Person ���̺� ���� --
CREATE TABLE person(
    userId  VARCHAR2(10),
    userPw VARCHAR2(8) NOT NULL,
    name  VARCHAR2(20) NOT NULL,
    age   NUMBER(3),
    PRIMARY KEY(userId)
);

INSERT INTO person VALUES ('kimsan', 'k1234567', '���', 25);

COMMIT;

SELECT * FROM person;

UPDATE person SET age = 27 WHERE name = '�̰�';

DROP TABLE person;