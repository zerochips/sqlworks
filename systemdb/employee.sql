-- 사원 테이블(부서와 관계를 맺은)
CREATE TABLE employee(
    empno       NUMBER(3) PRIMARY KEY,   -- 사원 번호
    empname     VARCHAR2(20) NOT NULL,   -- 사원 이름(중복될 수 있음)
    sal         NUMBER(10),              -- 급여
    createdate  DATE DEFAULT SYSDATE,    -- 등록일
    gender      VARCHAR2(10),            -- 성별
    deptno      VARCHAR2(4),             -- 부서번호
    -- 외래키 (FOREIGN KEY) 제약조건
    CONSTRAINT emp_fk FOREIGN KEY(deptno)
    REFERENCES dept(deptno)
    -- ON DELETE CASCADE(부서를 삭제하면 참조하고 있는 사원도 삭제)
);

-- 참조 무결성 제약 위배(외래키 제약)
-- 1. 사원이 소속된 부서를 삭제할 때 '자식 레코드가 있다'는 오류 발생
-- 2. 부서번호가 없는 사원 자료를 추가할 때 '부모키가 없다'는 오류 발생

INSERT INTO employee VALUES (100, '이강', 2500000, SYSDATE, '남자', '1000');
INSERT INTO employee VALUES (101, '이산', 2000000, SYSDATE, '여자', '1001');
INSERT INTO employee VALUES (102, '박달', 1500000, SYSDATE, '남자', '1002');
INSERT INTO employee VALUES (103, '강하늘', 3500000, SYSDATE, '', '1003');
INSERT INTO employee VALUES (104, '양우주', 4500000, SYSDATE, '여자', '1000');
INSERT INTO employee VALUES (105, '강남', 2500000, SYSDATE, '남자', '1000');
INSERT INTO employee VALUES (106, '이해', 2500000, SYSDATE, '남자', '1000');

-- 사원 자료 검색
SELECT * FROM employee;

UPDATE employee SET sal = 2600000
WHERE empno = 105;

-- 중복없이 부서번호를 검색하시오(DISTINCT 키워드)
SELECT DISTINCT deptno 부서번호
FROM employee;

-- GROUP BY 절(소속등 그룹화) , 조건절 - HAVING 사용
-- 부서별 급여 총액을 구하시오
-- 소수점 ROUND(AVG(sal),2) 소수점 2자리
SELECT deptno 부서,  SUM(sal) 급여총액, ROUND(AVG(sal),2) 급여평균
FROM employee
GROUP BY deptno
HAVING AVG(sal) >= 3000000
ORDER BY AVG(sal) DESC;
-- ORDER BY 제일 마지막에 

-- 성별이 남자이면서 250만원 이상인 사원을 검색하세요
SELECT * FROM employee
WHERE gender = '남자'
AND sal >= 2500000;

-- 급여가 200만 원 이상 300만 원 이하인 사원을 검색하시오
SELECT * FROM employee 
WHERE sal >= 2000000 
AND sal <=3000000;

-- BETWEEN ~ AND
SELECT * FROM employee 
WHERE sal 
BETWEEN 2000000 AND 3000000;

-- 문자열 검색 : 일부 문자 포함 LIKE %문자%
-- 성이 '이'인 사원을 검색하시오.
SELECT * FROM employee
WHERE empname LIKE '%이%';

-- 사원 총 인원수를 구하시오
SELECT COUNT(*) as 사원수 FROM employee;

COMMIT;
/*
오라클 자료형
한글 - 3bite
영어 - 1bite

char(10) - 고정길이 'abc' - 10byte
varchar2(10) - 가변길이 'abc' - 3byte

date - 날짜(연월일)
timestamp - 날짜, 시간

unmber(3)
*/
-- -------------------------복습--------------------------------
-- 사원 자료 검색
select * from employee;

-- 중복없이 부서번호를 검색하시오(DISTINCT 키워드)
select distinct deptno 부서번호 from employee;

-- GROUP BY 절(소속등 그룹화) , 조건절 - HAVING 사용
-- 부서별 급여 총액을 구하시오
-- 소수점 ROUND(AVG(sal),2) 소수점 2자리
select deptno 부서, sum(sal) 총액, round(avg(sal),2) 평균
from employee 
group by deptno
having avg(sal) >= 3000000
order by avg(sal) desc;

-- 성별이 남자이면서 250만원 이상인 사원을 검색하세요
select * from employee
where gender = '남자'
and sal >= 2500000;

-- 급여가 200만 원 이상 300만 원 이하인 사원을 검색하시오
select * from employee
where sal >= 2000000
and sal < 3000000
order by sal;

-- BETWEEN ~ AND
select * from employee
where sal
between 2000000 and 3000000
order by sal;

-- 문자열 검색 : 일부 문자 포함 LIKE %문자%
-- 성이 '이'인 사원을 검색하시오.
select * from employee
where empname like '%이%';

-- = 은 완전히 똑같이 기입해야 출력됨
select * from employee
where empname = '이강';

-- 사원 총 인원수를 구하시오
select count(*) as 총사원수 from employee;

-- 105의 사원의 월급을 265만원으로 변경하시오
update employee set sal = 2650000
where empno = 105;

update employee set sal = 2600000
where empno = 105;

update employee set sal = 3000000
where empno = 102;

update employee set sal = 1500000
where empno = 102;

select * from employee;

select deptno 부서번호 from employee;

-- 중복없이 부서번호를 검색하시오
select distinct deptno 부서번호 from employee;























