-- function
-- NULL 값 처리하기
SELECT * FROM customer;
SELECT * FROM orders;

SELECT * FROM customer WHERE phone IS NULL;

-- NVL(칼럼값, 특정값) : 칼럼이름이 NULL인 경우에 특정값을 출력, NULL이 아니면 칼럼값 출력
SELECT custid, name, address, NVL(phone, '010-1234-5678') phone
FROM customer;

CREATE TABLE K1(
    ID  VARCHAR2(3),
    CNT NUMBER(2)
);

INSERT INTO K1 VALUES ('가', 5);
INSERT INTO K1 VALUES ('나', NULL);
INSERT INTO K1 VALUES ('다', 5);
INSERT INTO K1 VALUES ('라', NULL);
INSERT INTO K1 VALUES ('마', 10);

SELECT*FROM K1;

-- 전체 개수, 합계, 평균, 최소값
SELECT COUNT(*) FROM K1;    -- 5개 나옴
SELECT COUNT(CNT) FROM K1;  -- 3개 나옴

-- NULL을 0으로 바꿈
SELECT COUNT(NVL(CNT, 0)) COUNT FROM K1;    -- 5
SELECT SUM(NVL(CNT, 0))/4 SUM FROM K1;      -- 5
SELECT AVG(NVL(CNT, 0)) AVG FROM K1;        -- 4 
SELECT MIN(NVL(CNT, 5)) MIN FROM K1;        -- 4 NULL을 5로 변경 

SELECT SUM(NVL(CNT, 0)) SUM FROM K1;

COMMIT;
-- ----------------------------------------------------------------
-- RANK() 함수
SELECT empname,
       sal,
       RANK() OVER(ORDER BY sal DESC) 급여_RANK,
       DENSE_RANK() OVER(ORDER BY sal DESC) 급여_DENSE_RANK
FROM employee;