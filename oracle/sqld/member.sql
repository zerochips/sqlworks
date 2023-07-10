-- member ���̺� ����
CREATE TABLE member(
  mid CHAR(3) PRIMARY KEY,
  name VARCHAR2(20) NOT NULL,
  age  NUMBER(3),
  phone VARCHAR2(15)
);

-- �ڷ� �߰�(INSERT ���̺��̸� INTO VALUES(��))
INSERT INTO member VALUES ('100', 'ȫ�浿', 31, '010-1234-5678');
INSERT INTO member VALUES ('101', '����', 17, '010-1234-6789');
INSERT INTO member(mid, name, age) VALUES ('102', '�̼���', 25);
--INSERT INTO member(mid, age) VALUES ('102', 25); name�� not null�̹Ƿ� ����
--INSERT INTO member(mid, name, age) VALUES ('102', '������', 20); mid�� �⺻Ű�̹Ƿ� �ߺ� �Ұ�
INSERT INTO member(mid, name, age) VALUES ('103', '�̼���', 40);
INSERT INTO member(mid, name, age) VALUES ('104', '�����ٶ󸶹�', 40);

-- �ڷ� �˻�(SELECT �Ӽ��̸�(*) FROM ���̺��̸�)
SELECT * FROM member;
SELECT name, phone FROM member;

-- Ư���� �ڷ� �˻�(WHERE ������)
SELECT * FROM member WHERE name = 'ȫ�浿';
-- ���̰� 40���� �̼����� ����ϼ���
SELECT * FROM member WHERE mid = '103';

-- �ڷ� ����(UPDATE ���̺� SET �Ӽ�����)
UPDATE member SET name='ȫ���' WHERE name='ȫ�浿';


-- �ڷ� ����(DELETE FROM ���̺��̸� WHERE��)
DELETE FROM member WHERE name='ȫ���';

ROLLBACK;

COMMIT;

-- ���̺� ����
DROP TABLE member;

-- ���̺��� ���� ���� : �Ӽ��� ����(Modify), Į���߰�(ADD)
ALTER TABLE member MODIFY name VARCHAR2(30);

-- ���̺� ���� ���
DESC member;

