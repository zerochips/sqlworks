-- 내장 함수
SELECT * FROM emp;

-- 사원 테이블에서 이름이 '을지문덕'을 검색하시오
SELECT * FROM emp
WHERE ename = '을지문덕';

-- 급여가 300백만원을 초과하는 사원을 검색하시오.
SELECT * FROM emp
WHERE salary > 3000000;

-- 급여가 300백만원 이면서, 부서번호가 1002인 사원을 검색하시오.
SELECT * FROM emp
WHERE salary = 3000000
AND deptno = '1002';

-- 신사임당의 급여를 320만원으로 변경하세요.
-- UPDATE 테이블이름 SET 칼럼변경내역 WHERE 절
UPDATE emp SET salary = 3200000
WHERE empno = 104; -- 기본키로 조건을 준다.

SELECT * FROM emp;

-- 사원의 총 인원수를 구하시오(COUNT 함수)
SELECT COUNT(*) 총인원수
FROM emp;

-- 사원 급여의 총합계를 구하시오.(SUM 함수)
SELECT SUM(salary) 총급여
FROM emp;

-- 사원 급여의 평균을 구하시오.(SUM / COUNT)
SELECT SUM(salary) /COUNT(*) 급여평균
FROM emp;

SELECT AVG(salary) 급여평균
FROM emp;

-- 숫자 타입 함수
-- 숫자를 반올림한다. : ROUND(숫자, 자리수)
-- 오라클에서 제공하는 가상 TABLE
SELECT ROUND(3.87, 1) FROM DUAL;

-- 자리수 : 1 - 소수첫째자리, 0 - 정수, -1 - 일의자리
SELECT ROUND(12351, -2) FROM DUAL;

-- 절대값 ABS(숫자) : 양수는 양수이고, 음수는 양수로 바뀜
SELECT ABS(-10), ABS(10) FROM DUAL;

-- 숫자를 절삭(버림) - TRUNC(숫자, 자리수)
SELECT TRUNC(3.87, 1), TRUNC(3.87) FROM DUAL;

-- 숫자를 정수로 내림한다. - FLOOR(실수)
SELECT FLOOR(3.87) FROM DUAL;

-- 사원 급여에서 반올림 함수 사용
SELECT ename, salary,
              salary/30 일급,
              ROUND(salary/30, 1) 결과1,
              ROUND(salary/30, 0) 결과2,
              ROUND(salary/30, -1) 결과3
FROM emp;

-- 사원급여에 TRUNC() 적용
SELECT ename, salary,
              salary/30 일급,
              TRUNC(salary/30, 1) 결과1,
              TRUNC(salary/30, 0) 결과2,
              TRUNC(salary/30, -1) 결과3
FROM emp;




