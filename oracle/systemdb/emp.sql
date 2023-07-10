-- 사원 테이블
CREATE TABLE emp(
    -- 칼럼 이름 자료형
    -- 3bite 에 한 자 
    empno       NUMBER(3) PRIMARY KEY,   -- 사원 번호
    empname     VARCHAR2(20) NOT NULL,   -- 사원 이름(중복될 수 있음)
    sal         NUMBER(10),              -- 급여
    createdate   DATE DEFAULT SYSDATE    -- 등록일
);

-- 사원의 성별 칼럼 추가(ALTER ~ ADD 칼럼이름 자료형 )
ALTER TABLE emp ADD gender VARCHAR2(4);

-- 사원의 성별 자료형을 변경(MODIFY) VARCHAR2(10)
ALTER TABLE emp MODIFY gender VARCHAR2(10);
DESC emp;

-- 사원 추가
INSERT INTO emp VALUES (100, '이강', 2500000, SYSDATE, '남');
INSERT INTO emp VALUES (101, '김산', 3000000, SYSDATE, '남');
INSERT INTO emp VALUES (102, '오상식', 5000000, SYSDATE, '남');
INSERT INTO emp VALUES (103, '박신입', '', SYSDATE, '남');
INSERT INTO emp VALUES (104, '서울시', 1500000, SYSDATE, '여');

-- 사원 조회
SELECT * FROM emp;

-- 사원번호, 사원이름, 급여를 검색하시오
SELECT empno as 사번, empname as 사원명, sal as 급여 FROM emp;

-- 급여가 없는 사원을 검색하시오
SELECT * FROM emp WHERE sal IS NULL;  -- NULL이 아닌 구문(IS NOT NULL)

-- 급여가 300 이하인 사람을 검색하시오
-- 급여가 300만원 이하인 사원을 급여가 많은 순서로 정렬하시오
SELECT *
FROM emp
WHERE sal <= 3000000
ORDER BY sal DESC;

-- 급여가 많은 순으로 정렬하시오
SELECT * FROM emp ORDER BY sal DESC;

-- 사원의 수를 구하시오
SELECT COUNT(*) as 사원수
FROM emp;

-- 사원 급여의 합계와 평균을 구하시오
SELECT SUM(sal) 급여합계, AVG(sal) 급여평균 FROM emp;

-- 성별이 '여'인 사원을 '여자'로 변경하시오(자료 수정)
-- 이름이 서울시인 사원을 검색하시오
/*SELECT * FROM emp
WHERE empno = 104;*/

UPDATE emp SET gender = '여자'
WHERE empno = 104;

-- 사원 이름이 서울시인 사원 삭제
DELETE FROM emp
WHERE empname = '서울시';

-- 집계 함수 count(칼럼이름), count(*), sum(), avg(), max(), min()

COMMIT;

-- COMMIT 하기 전이면 복원 가능함
ROLLBACK;

-- ---------------------------복습---------------------------------
-- 사원 테이블
-- 사원의 성별 칼럼 추가(ALTER ~ ADD 칼럼이름 자료형 )
-- alter table emp add gender varchar2(10);

-- 사원의 성별 자료형을 변경(MODIFY) VARCHAR2(10)
alter table emp modify gender varchar2(10);
alter table emp modify gender varchar2(10);

-- 사원 추가
insert into emp values (105, '김민정', 100000000, sysdate, '여');
insert into emp values (106, '김민정', 1000000000, sysdate, '여');
insert into emp values (107, '김민정', 10000000000, sysdate, '여');

-- 사원 조회
select * from emp;

-- 사원번호, 사원이름, 급여를 검색하시오
select empno as 사원번호, empname as 사원이름, sal  as 급여
from emp;

-- 급여가 없는 사원을 검색하시오
select * from emp where sal is null;

-- 급여가 300 이하인 사람을 검색하시오(오름차순)
select * from emp where sal < 3000000;

-- 급여가 300만원 이하인 사원을 급여가 많은 순서로 정렬하시오(내림차순)
select * from emp where sal <= 3000000 order by sal desc;

-- 급여가 많은 순으로 정렬하시오
select * from emp order by sal desc;
select * from emp order by sal;

-- 사원의 수를 구하시오
select count(*) 사원수 from emp;

-- 사원 급여의 합계와 평균을 구하시오
select sum(sal) 급여합계, avg(sal) 급여평균
from emp;

-- 성별이 '여'인 사원을 '여자'로 변경하시오(자료 수정)
update emp set gender = '여'
where gender = '여자';

select * from emp;

update emp set gender = '여'
where empno = 102;

-- 이름이 이강인 사원을 검색하시오
select * from emp where empname = '이강';
select * from emp where empname like '%김%';

-- 사원 이름이 서울시인 사원 삭제
delete from emp where empname = '서울시';

-- 집계 함수 count(칼럼이름), count(*), sum(), avg(), max(), min()
select count(*) 사원수 from emp;
select max(sal) 많은, min(sal) 적은
from emp;

-- COMMIT;
commit;
-- ROLLBACK;
rollback;

