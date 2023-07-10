-- Security ȸ�� ���̺�� ���� ���̺�
CREATE TABLE tbl_member(
    userid  VARCHAR2(50) PRIMARY KEY,
    userpw  VARCHAR2(100) NOT NULL,
    username VARCHAR2(100) NOT NULL,
    regdate  DATE DEFAULT SYSDATE,
    updatedate  DATE DEFAULT SYSDATE,
    enabled CHAR(1) DEFAULT '1'
);

-- ���� ���̺�
CREATE TABLE tbl_member_auth(
    auth  VARCHAR2(50) NOT NULL,
    userid  VARCHAR2(50) NOT NULL,
    CONSTRAINT fk_member_auth FOREIGN KEY (userid)
    REFERENCES tbl_member(userid) ON DELETE CASCADE
);
-- INNER JOIN : INNER ���� ����
-- LEFT OUTER JOIN ~ ON ~ : OUTER ���� ����
-- ȸ���� �� ���� ���
-- ���� ������ ���� ȸ���� ���
SELECT mem.userid, userpw, username, enabled, regdate, updatedate, auth
FROM tbl_member mem 
    LEFT OUTER JOIN tbl_member_auth auth 
    on mem.userid = auth.userid 
WHERE mem.userid = 'cloud'; 

SELECT mem.userid, mem.userpw,mem.username, mem.regdate, auth.auth
FROM tbl_member mem, tbl_member_auth auth
WHERE mem.userid = auth.userid;

-- �����ڷ� ��� ����
UPDATE tbl_member_auth SET auth = 'ROLE_ADMIN' WHERE userid='admin';

SELECT * FROM tbl_member ORDER BY regdate DESC;
SELECT * FROM tbl_member_auth;

SELECT COUNT(*) 
FROM tbl_member
WHERE userid = 'cloud';

DELETE FROM tbl_member;
DELETE FROM tbl_member_auth;

DROP TABLE tbl_member;
DROP TABLE tbl_member_auth;

COMMIT;

