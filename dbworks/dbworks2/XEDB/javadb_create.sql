-- USER(jweb) ����
CREATE USER javadb IDENTIFIED BY 4321;

-- SESSION ���� �ο�
GRANT CREATE SESSION TO javadb;

-- ���̺�� ���̺� ���� ����
GRANT CREATE TABLE, RESOURCE TO javadb;