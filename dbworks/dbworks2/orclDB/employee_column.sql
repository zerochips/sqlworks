-- employee ���̺� ����
CREATE TABLE employee(
    companyID   number(4) primary key,
    name        varchar2(20)
);
-- ���̺� ����(����)
DESC employee;

-- �ڷ� �˻�
SELECT * FROM employee;

-- Į�� �߰�
ALTER TABLE employee ADD(joinDate DATE);
