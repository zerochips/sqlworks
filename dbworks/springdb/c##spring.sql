-- c##spring �����ͺ��̽� ����
-- DB�̸�, ��й�ȣ, ���̺� ���� ����
CREATE USER c##spring IDENTIFIED BY spring
DEFAULT TABLESPACE USERS 
TEMPORARY TABLESPACE TEMP;

-- ���� ����
GRANT CONNECT, DBA TO c##spring;

-- USER ����
SHOW USER;

-- ����Ŭ ��Ʈ ���� : 8080�� ��� ����
SELECT DBMS_XDB.GETHTTPPORT() FROM DUAL;

EXEC DBMS_XDB.GETHTTPPORT(9090);

