-- ���� �ڷ��� ��
CREATE TABLE ex1(
    column1 CHAR(10),       -- �������� �ڷ���
    column2 VARCHAR2(10)    -- �������� �ڷ���
);

-- �ڷ� �߰�
INSERT INTO ex1 (column1, column2) VALUES ('abc', 'abc');
INSERT INTO ex1 VALUES ('����', '����');

-- �ڷ� ��ȸ
SELECT column1, LENGTH(column1) len1, column2, LENGTH(column2) len2 
FROM ex1;

COMMIT;

-- ---------------------------����---------------------------------
insert into ex1 (column1, column2) values ('�Ÿ�', '�Ÿ�');
insert into ex1 (column1, column2) values ('�Ǳ�', '����');

select * from ex1;

delete from ex1 where column1 = 'abc';

select distinct column1 ��ġ from ex1;

