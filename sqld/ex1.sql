-- ���̺� ����
CREATE TABLE ex1(
    column1 CHAR(10),     -- �������� 10Byte
    column2 VARCHAR2(10)  -- �������� 10Byte
);

-- ������ ����
INSERT INTO ex1(column1, column2) VALUES ('abc', 'abc');
INSERT INTO ex1(column1, column2) VALUES ('���', '���');

-- ������ �˻�(��Ī-alias ��� - �տ� as�� ���δ�. �����ص� ����)
SELECT column1, LENGTH(column1) as len1,
       column2, LENGTH(column2) as len2
FROM ex1;