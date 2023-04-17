-- t_address ���̺� ���� --
CREATE TABLE t_address(
    num NUMBER(4),
    username VARCHAR2(20),
    tel VARCHAR2(20) NOT NULL,
    email VARCHAR2(30) NOT NULL,
    gender VARCHAR2(5),
    joinDate DATE DEFAULT SYSDATE,
    PRIMARY KEY(num)
);

-- �Ϸù�ȣ(������) ����
CREATE SEQUENCE ab_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

SELECT * FROM t_address;
