-- employee ���̺� ����
CREATE TABLE employee(
    companyId   NUMBER(4) PRIMARY KEY,
    name        VARCHAR2(20)
);
-- ���̺� ����(����)
DESC employee;

-- �ڷ� �˻�
SELECT * FROM employee ORDER BY companyId;

-- �ڷ� �߰�(����)
INSERT INTO employee VALUES (1001, 'steve');

-- Ư�� ������ �˻� : WHERE ���� ���
SELECT * FROM employee WHERE companyID = 3001;

SELECT * FROM employee WHERE companyID > 2000;

SELECT * FROM employee WHERE name = '�Ѱ�';

-- ������ ����(��������, ��������)�Ͽ� �˻�
SELECT * FROM employee ORDER BY companyID;

SELECT * FROM employee ORDER BY companyID DESC;

-- ������ ����
DELETE FROM employee;

COMMIT;
ROLLBACK;
DROP TABLE employee;