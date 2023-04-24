-- 집합 연산
-- 테이블간(집합) 연산
-- 더하기(unino)
-- 빼기(minus)
CREATE TABLE job(
    job_id  VARCHAR2(10),
    salary  NUMBER(5)   -- 달러로 입력
);

INSERT INTO job VALUES ('manager', 1300);
INSERT INTO job VALUES ('manager', 1500);
INSERT INTO job VALUES ('manager', 1900);
INSERT INTO job VALUES ('helper', 1000);
INSERT INTO job VALUES ('helper', 1500);
INSERT INTO job VALUES ('helper', 2500);

-- job 전체의 개수와 급여의 총합계 구하기
select count(*) 개수, sum(salary) 총합계
from job;

-- 직업 아이디별 개수와 급여의 총합게 구하기
select job_id, count(*) 개수, sum(salary) 총합계
from job
group by job_id;

-- 직업 아이디별 개수와 급여의 최대값 구하기
select job_id, count(*), max(salary) 최대급여
from job
group by job_id;

-- 직업 아이디별 개수와 급여의 최소값 구하기
select job_id, count(*), min(salary) 최소급여
from job
group by job_id;

-- 직업 아이디별 개수와 급여의 최대급여, 최소급여 구하기 1
select job_id, count(*), max(salary), min(salary)
from job
group by job_id;

-- 직업 아이디별 개수와 급여의 최대급여, 최소급여 구하기 2(UNION)
select job_id, count(*), max(salary) 최대급여
from job
group by job_id
UNION
select job_id, count(*), min(salary) 최소급여
from job
group by job_id;

select job_id, count(*), max(salary) 최대급여
from job
group by job_id
UNION ALL
select job_id, count(*), min(salary) 최소급여
from job
group by job_id;


COMMIT;

SELECT * FROM job;