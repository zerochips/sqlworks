-- users ���̺� ����
CREATE TABLE users(
    userID    varchar2(20) primary key,
    userPW    varchar2(10)
);
DESC users;

SELECT * FROM users;

-- name Į�� �߰�
ALTER TABLE users ADD(name varchar(20)); 

-- ������ Į�� �߰�
ALTER TABLE users ADD(joinDate Date);

-- ���̺� ��ü �ڷ� ����
DELETE FROM users;

-- ȸ�� �߰�
INSERT INTO users VALUES('giyong', '1234', '����', SYSDATE);
INSERT INTO users VALUES('admin', '1111', '����', SYSDATE);

COMMIT;
