-- 문자 타입 함수
SELECT LOWER('ABCD') FROM DUAL;  -- LOWER() - 소문자로 바꾸는 함수
SELECT UPPER('abcd') FROM DUAL;  -- UPPER() - 대문자로 바꾸는 함수
SELECT INITCAP('hello korea') FROM DUAL; -- INITCAP() - 첫글자만 대문자로 바꿈

-- 문자열중에 일부만 추출(선택)
-- SUBSTR(문자, 순서, 개수)
SELECT SUBSTR('ABCD', 2, 3) FROM DUAL;

SELECT SUBSTR(deptname, 1, 2) 팀명
FROM dept;

-- 특정 문자열 찾아 바꿈 - REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('AB', 'A', 'D') FROM DUAL;

-- LPAD(문자열, 총문자개수, 특수문자) : 왼쪽부터 특정문자로 채움
-- RPAD(문자열, 총문자개수, 특수문자) : 오른쪽부터 특정문자로 채움
SELECT LPAD('sky123', 10, '*') FROM DUAL;
SELECT RPAD('sky123', 10, '*') FROM DUAL;

-- 문자열 연결(더하기) - CONCAT(문자1, 문자2) -> 문자1문자2
SELECT CONCAT('sky', '1234') FROM DUAL;

-- 문자열 연결(더하기) - 연산자 기호 '||'
SELECT 'sky' || '1234' FROM DUAL;

-- 문자열의 길이
SELECT LENGTH('cloud') 문자수, LENGTHB('cloud') 바이트수
FROM DUAL;

-- 바이트 수 : 영어, 숫자 - 1BYTE, 한글 - 3BYTE
SELECT LENGTH('구름') 문자수, LENGTHB('구름') 바이트수
FROM DUAL;

-- 날짜의 연산
-- DATE + NUMBER : 날짜에서 일수(day)를 더함
-- DATE - NUMBER : 날짜에서 일수(day)를 빼기
SELECT SYSDATE, SYSDATE + 3, SYSDATE - 3 FROM DUAL;

-- 특정한 날짜에서 연산
-- 날짜 변환 함수 - To_DATE(날짜문자열) : 문자를 날짜로 변환함
SELECT TO_DATE('2023/4/1') + 10 결과1, 
       TO_DATE('2023/4/1') - 10 결과2
FROM DUAL;

-- 날짜 함수
-- ADD_MONTHS() : 개월수를 더하고, 빼기
SELECT 
    ADD_MONTHS(SYSDATE, 2) 더하기_결과,
    ADD_MONTHS(SYSDATE, -2) 빼기_결과
FROM DUAL;

-- MONTHS_BETWEEN() : 두 날짜 사이의 개월수를 계산
-- 입사일에서 퇴사일까지의 개월수 계산
SELECT 
     ROUND(MONTHS_BETWEEN(TO_DATE('2022-11-30'), 
            TO_DATE('2022-1-1')), 0) 총개월수
FROM DUAL;

-- 숫자 변환 함수
SELECT 1 + 2 FROM DUAL;
SELECT 1 + '2' FROM DUAL;  -- 자동 타입(형) 변환
SELECT TO_NUMBER('300') FROM DUAL; -- 수동 타입 변환함수

-- 날짜 형식 변환(날짜를 문자열로 변환)
SELECT 
    TO_CHAR(SYSDATE, 'YYYY-MM-DD') 날짜,
    TO_CHAR(SYSDATE, 'YYYY') 연도,
    TO_CHAR(SYSDATE, 'MM') 월,
    TO_CHAR(SYSDATE, 'DD') 일
FROM DUAL;

-- 시간 형식 변환(시간을 문자열로 변환)
SELECT 
    TO_CHAR(SYSDATE, 'HH:MI:SS AM') 시간,
    TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS PM') 날짜와시간
FROM DUAL;






