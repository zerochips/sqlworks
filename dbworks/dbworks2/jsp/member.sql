-- member ���̺� ���� --
CREATE TABLE member(
    memberId      VARCHAR2(10) PRIMARY KEY,
    passwd      VARCHAR2(10) NOT NULL,
    name        VARCHAR2(20) NOT NULL,
    joinDate    DATE DEFAULT SYSDATE,
    gender      VARCHAR2(4)
);

SELECT * FROM member;

INSERT INTO member VALUES ('a1002', '12345', '����', sysdate, '��');
COMMIT;

DELETE FROM member;
COMMIT;

DROP TABLE member CASCADE CONSTRAINTS;