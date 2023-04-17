-- t_member ���̺� ���� --
CREATE TABLE t_member(
    id  VARCHAR2(10) PRIMARY KEY,
    pwd VARCHAR2(10) NOT NULL,
    name VARCHAR2(20) NOT NULL,
    email VARCHAR2(50),
    joinDate DATE DEFAULT SYSDATE
);

SELECT * FROM t_member ORDER BY joinDate;

-- ȸ�� �߰�--
INSERT INTO t_member 
VALUES ('hong', '1001', 'ȫ�浿', 'hong@gmail.com', sysdate);

INSERT INTO t_member 
VALUES ('lee', '1002', '�̼���', 'lee@naver.com', sysdate);

INSERT INTO t_member 
VALUES ('kim', '2001', '������', 'kang@daum.com', sysdate);

COMMIT;
