-- �⺻Ű ���� ����
CREATE TABLE login(
    id  VARCHAR2(10),
    passwd VARCHAR2(10) NOT NULL,
    PRIMARY KEY(id)
);

-- �ڷ� ����
INSERT INTO login VALUES ('sky2023', '1234abc');
INSERT INTO login VALUES ('sky2023', '12345678'); -- ��ü���Ἲ �������� ����
INSERT INTO login VALUES ('moon', '12345678', '�����ٶ󸶹ٻ�');
INSERT INTO login(id, passwd, name, create_date) 
VALUES ('moon4', 'qwer', 'abc', SYSDATE);

-- �ڷ� �˻�
SELECT * FROM login;

-- �����ϱ�(ASC, DESC) : ���������� ��� NULL�� ���� ������ ��ġ
-- ó�� ���� 1.FROM�� 2.WHERE�� 3.SELECT�� 4.ORDER BY��(���� ������)
SELECT * 
FROM login 
ORDER BY create_date DESC;

-- Ư�� �ڷ� �˻�(WHERE��)
-- id�� 'moon'�� �ڷḦ �˻�
SELECT * 
FROM login 
WHERE id = 'moon';

-- �ڷ� ����(UPDATE ���̺��̸� SET Į���Ӽ� WHERE��)
-- �̸��� 'abc'�� �ڷḦ 'def'�� �����Ͻÿ�
UPDATE login 
SET name = 'def'
WHERE id = 'moon3';

-- �ڷ� ����(DELETE FROM ���̺� WHERE��)
DELETE FROM login;

COMMIT;
ROLLBACK;

-- Į�� �߰� (�Ӽ� - name)
ALTER TABLE login ADD name VARCHAR2(20);
ALTER TABLE login ADD create_date DATE;

-- Į�� ����
ALTER TABLE login MODIFY name VARCHAR2(30);

-- ���̺��� ���� ����
DESC login;