-- c##sqld ����� ���� �����

-- DB�̸�, ��й�ȣ, ���̺� ���� ����
CREATE USER c##sqld IDENTIFIED BY sqld
DEFAULT TABLESPACE USERS 
TEMPORARY TABLESPACE TEMP;

-- ���� ����
GRANT CONNECT, DBA TO c##sqld;

