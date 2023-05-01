
SELECT * FROM emp;

-- nvl(인수1, 인수2) : 인수1이 NULL이 아니면 인수1일 출력, NULL이면 인수2가 출력
-- 급여가 없는 사원을 검색하시오
SELECT * FROM emp where sal is null;

SELECT empname,
       NVL(sal, 0)
FROM emp;

-- 성별 자료 변경하기
UPDATE emp set gender = '여자'
where empno = 100 or empno = 101;

update emp set gender = '남자'
where empno = 102 or empno = 103;

-- DECODE(칼럼명, 조건, 참, 거짓) 함수 -IF함수와 유사함
-- Male, Female
SELECT empname, sal,
        DECODE(gender, '남자', 'M', 'F') gender
FROM emp;

-- CASE WHEN
/*
    CASE
        WHEN 조건 THEN 결과1
        WHEN 조건 THEN 결과2
        ELSE 결과3        
    END
*/
SELECT empname, sal,
        CASE
          WHEN gender='남자' THEN 'M'
          ELSE 'F'
        END gender
FROM emp;

-- 급여가 250만원 이상이면 직급 '대리'로 표시하고, 
-- 급여가 350만원 이상이면 '과장'으로 표시하시오.
SELECT empname,
    CASE
        WHEN sal >= 3500000 THEN '과장'
        WHEN sal >= 2500000 THEN '대리'
        ELSE '사원'
    END 급여기준
FROM emp;

-- DECODE() , 특정값이 아니면 안됨. 00 이상 00 미만 적용안됨
/*SELECT empname, 
       sal,
        DECODE(sal, 5000000, '과장', 2500000, '대리', '사원') 급여기준
FROM emp;*/

COMMIT;




