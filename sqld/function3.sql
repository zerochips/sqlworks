-- NULL 함수 - NVL(인수1, 인수2)
-- 인수1이 NULL이 아니면 인수1 출력되고, 인수1이 NULL이면 인수2로 출력됨
CREATE TABLE test(
    id  VARCHAR2(3), -- 칼럼명 자료형
    cnt NUMBER(2)    
);

-- 자료 삽입
INSERT INTO test VALUES ('가', 5);
INSERT INTO test VALUES ('나', NULL);
INSERT INTO test VALUES ('다', 5);
INSERT INTO test VALUES ('라', NULL);
INSERT INTO test VALUES ('마', 10);

SELECT id, cnt, NVL(cnt, 0) 
FROM test;

SELECT 
    COUNT(*) 전체_개수, 
    COUNT(cnt) cnt칼럼_개수, 
    SUM(cnt) cnt칼럼_합계
FROM test;

SELECT 
    COUNT(*) 전체_개수, 
    COUNT(NVL(cnt, 0)) cnt칼럼_개수, 
    SUM(cnt) cnt칼럼_합계
FROM test;

-- 다음 중 결과값이 다른 것을 고르세요
SELECT COUNT(NVL(CNT, 0)) FROM test;    --5
SELECT SUM(NVL(CNT, 0)) / 4 FROM test;   --5
SELECT AVG(NVL(CNT, 0)) FROM test;     --4
SELECT MIN(NVL(CNT, 5)) FROM test;     --5
