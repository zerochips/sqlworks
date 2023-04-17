-- 날짜 자료형
CREATE TABLE ex2(
    col_date        DATE,
    col_timestamp   TIMESTAMP
);

-- hire_date VARCHAR2(20)
-- INSERT INTO ex2 VALUES ('2023-01-25');

-- 자료 삽입
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);

-- 자료 검색
SELECT * FROM ex2;

-- 커밋
COMMIT;

-- ---------------------------복습---------------------------------
-- 날짜 자료형
create table ex2(
    col_date        date,
    col_timestamp   timestamp,
    hire_data       varchar2(10)    
);
-- 자료 삽입
insert into ex2 values (sysdate, systimestamp);
insert into ex2 values (sysdate, systimestamp);


-- 자료 검색
select * from ex2;















