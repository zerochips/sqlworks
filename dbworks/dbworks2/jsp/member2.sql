-- ���̺� �����ϱ� --
CREATE TABLE member2 AS SELECT * FROM t_member;

SELECT * FROM member2;

-- Į���� ��Ī ����ϱ� --
SELECT id AS ���̵�, pwd AS �н����� FROM member2;

-- �̸��� �̸��� �����ϱ� --
SELECT id, pwd, name || '-' || email AS ȸ������ FROM member2;��

-- �ߺ��� �����ϱ� --
SELECT DISTINCT id, pwd FROM member2;

