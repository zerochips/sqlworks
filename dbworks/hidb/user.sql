
-- USER(jweb) ����
CREATE USER C##jweb IDENTIFIED BY 54321;

-- ���� ���� �ο�
GRANT CREATE SESSION TO C##jweb;

-- ���̺�� ���̺� ���� ����
GRANT CREATE TABLE, RESOURCE TO C##jweb;

-- ���̺� �����̽� ���� �ֱ�
ALTER USER C##jweb DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

-- ���� ����� ������ �� ���
-- sqlplus ������
-- GRANT CREATE ANY TABLE TO C##jweb;
-- GRANT CONNECT, RESOURCE, DBA TO C##jweb];

