
SELECT * FROM employee;

-- ������ ����(����)
UPDATE employee SET name = '�����' WHERE companyID = 1001;

-- ����� �Ǽ��� ROLLBACK -> ����
UPDATE employee SET name = '�����';

ROLLBACK;

-- Ŀ��(����)�ϸ� ������ �� ����
COMMIT;

-- Ư�� ������ ����
DELETE FROM employee WHERE companyID = 2002;

-- ��ü ������ ����
DELETE FROM employee;

COMMIT;

