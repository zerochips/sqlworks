-- USER(jweb) ����
CREATE USER jweb IDENTIFIED BY 4321;

-- SESSION ���� �ο�
GRANT CREATE SESSION TO jweb;

-- ���̺�� ���̺� ���� ����
GRANT CREATE TABLE, RESOURCE TO jweb;
