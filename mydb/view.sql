-- 중첩 쿼리 - 괄호안을 먼저 실행함, FROM절 - 인라인뷰
SELECT ROWNUM, NAME, SCORE FROM
(SELECT ROWNUM, NAME, SCORE
FROM EX_SCORE
ORDER BY score DESC)
WHERE ROWNUM <= 5;

-- JOB_INFO 테이블
CREATE TABLE JOB_INFO(
    JOB_ID      VARCHAR(10),
    MIN_SALARY  NUMBER,
    MAX_SALATY  NUMBER
);

INSERT INTO JOB_INFO VALUES ('AD_PRES', 20080, 40000);
INSERT INTO JOB_INFO VALUES ('AD_VP', 15000, 30000);
INSERT INTO JOB_INFO VALUES ('AD_ASST', 3000, 6000);
INSERT INTO JOB_INFO VALUES ('FI_MGR', 8200, 16000);
INSERT INTO JOB_INFO VALUES ('FI_ACCOUNT', 4200, 9000);
INSERT INTO JOB_INFO VALUES ('AC_MGR', 8200, 16000);
INSERT INTO JOB_INFO VALUES ('AC_ACCOUNT', 4200, 9000);

COMMIT;

-- 집계 함수 -COUNT(), SUM(), AVG()
SELECT COUNT(*) 총개수, 
       ROUND(AVG(MIN_SALARY), -1) 최저급여평균,
       AVG(MAX_SALATY) 최대급여평균
FROM JOB_INFO;

-- 최저 급여가 5000 달러 이상인 직업 이름을 검색하시오
-- 대문자 출력 min_sal
SELECT JOB_ID, MIN_SALARY min_sal
FROM JOB_INFO
WHERE MIN_SALARY > 5000;

-- 최저 급여가 5000 달러 이상인 직업 이름을 검색하시오
-- 소문자 출력 "min_sal"
SELECT JOB_ID, MIN_SALARY "min_sal"
FROM JOB_INFO
WHERE MIN_SALARY > 5000;

-- 최저 급여가 5000 달러 이상인 직업 이름을 검색하시오
-- 실행 순서가 SELECT 전이므로 별칭 사용 불가
SELECT JOB_ID, MIN_SALARY min_sal
FROM JOB_INFO
WHERE min_sal > 5000;

-- 최저 급여가 5000 달러 이상인 직업 아이디를 검색한 뷰를 작성하시오
-- CREATE VIEW 뷰이름 AS 구문
CREATE VIEW V_JOB_INFO
AS SELECT *
   FROM JOB_INFO
   WHERE MIN_SALARY > 5000;
   
SELECT * FROM V_JOB_INFO;

-- 최고 급여와 최저 급여의 차가 8000 이상인 직업아이디의 수를 검색하시오
SELECT COUNT(*)
FROM V_JOB_INFO
WHERE MAX_SALATY - MIN_SALARY > 8000;

-- 최고 급여와 최저 급여의 차가 8000 이상인 직업아이디를 검색하시오
SELECT JOB_ID
FROM V_JOB_INFO
WHERE MAX_SALATY - MIN_SALARY > 8000;

-- 직업 아이디의 이름이 AD로 시작하는 자료를 검색하시오
SELECT JOB_ID
FROM V_JOB_INFO
WHERE JOB_ID LIKE 'AD%';

-- 뷰 삭제
DROP VIEW V_JOB_INFO;
