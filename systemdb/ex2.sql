-- ��¥ �ڷ���
CREATE TABLE ex2(
    col_date        DATE,
    col_timestamp   TIMESTAMP
);

-- hire_date VARCHAR2(20)
-- INSERT INTO ex2 VALUES ('2023-01-25');

-- �ڷ� ����
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);

-- �ڷ� �˻�
SELECT * FROM ex2;

-- Ŀ��
COMMIT;

-- ---------------------------����---------------------------------
-- ��¥ �ڷ���
create table ex2(
    col_date        date,
    col_timestamp   timestamp,
    hire_data       varchar2(10)    
);
-- �ڷ� ����
insert into ex2 values (sysdate, systimestamp);
insert into ex2 values (sysdate, systimestamp);


-- �ڷ� �˻�
select * from ex2;















