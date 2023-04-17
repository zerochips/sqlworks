
SELECT ROUND(163.76, 1) FROM DUAL;
SELECT ROUND(163.76, -2) FROM DUAL;

SELECT FLOOR(22.3) FROM DUAL;

SELECT MOD(15, 7) FROM DUAL;

SELECT SYSDATE FROM DUAL;

-- 부속질의, 집계 함수
CREATE TABLE JOB(
    JOB_ID    VARCHAR2(10),
    SALARY    NUMBER(5)
);

INSERT INTO JOB VALUES ('manager', 1300);
INSERT INTO JOB VALUES ('manager', 1500);
INSERT INTO JOB VALUES ('manager', 1900);
INSERT INTO JOB VALUES ('helper', 1000);
INSERT INTO JOB VALUES ('helper', 1500);
INSERT INTO JOB VALUES ('helper', 2500);


SELECT * 
    FROM (
        SELECT JOB_ID, MAX(SALARY) SALARY
        FROM JOB
        GROUP BY JOB_ID
        UNION
        SELECT JOB_ID, MIN(SALARY) SALARY
        FROM JOB
        GROUP BY JOB_ID
        );
        
-- LOLLUP, CUBE
CREATE TABLE DEPT(
    DEPT_NO VARCHAR2(3),
    JOB_NM  VARCHAR2(50),
    SALARY  NUMBER(5)
);

INSERT INTO DEPT VALUES ('100', '증권사', 3300);
INSERT INTO DEPT VALUES ('100', '관리자', 4300);
INSERT INTO DEPT VALUES ('200', '증권사', 5000);
INSERT INTO DEPT VALUES ('200', '데이터분석가', 4000);
INSERT INTO DEPT VALUES ('200', '관리자', 6000);

-- LOLLUP()
SELECT DEPT_NO, JOB_NM, SUM(SALARY) 
FROM DEPT
GROUP BY ROLLUP(DEPT_NO, JOB_NM)
ORDER BY DEPT_NO;

-- CUBE()
SELECT DEPT_NO, JOB_NM, SUM(SALARY) 
FROM DEPT
GROUP BY CUBE(DEPT_NO, JOB_NM)
ORDER BY DEPT_NO;

-- GROUPING SETS()  
SELECT DEPT_NO, JOB_NM, SUM(SALARY) 
FROM DEPT
GROUP BY GROUPING SETS(DEPT_NO, JOB_NM)
ORDER BY DEPT_NO;





