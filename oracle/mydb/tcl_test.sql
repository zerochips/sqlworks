-- DDL(데이터 정의어) - CREATE, ALTER, DROP
-- DML(데이터 조작어) - SELECT, INSERT, UPDATE, DELETE
-- CDL(테이터 제어어) - GRANT, REVOKE
-- TCL(트랜잭션) - COMMIT, ROLLBACK

-- tcl_test 테이블 생성
CREATE TABLE tcl_test(
    c1 NUMBER(2),
    c2 NUMBER(3)
);

SAVEPOINT t1;  -- 저장점 실행
INSERT INTO tcl_test VALUES (10, 100);

SAVEPOINT t2;  -- 저장점 실행
INSERT INTO tcl_test VALUES (20, 200);

-- t2를 ROLLBACK(취소)하였음
ROLLBACK TO t2;

-- 커밋
COMMIT;  -- 커밋 완료

SELECT * FROM tcl_test;

DROP TABLE tcl_test;