-- 옵티마이저 - SQL 최적화
--100만이 넘어가면 ORDER BY bno DESC; 느려져서 index를 사용
SELECT * FROM board ORDER BY bno DESC;
SELECT * from board;

-- 작성자가 'admin'인 게시글
SELECT * FROM board WHERE writer = 'admin';

-- 인덱스 생성
-- 작성자가 'admin'인 게시글 조회 - 인덱스로 만들기
-- CREATE INDEX 인덱스이름 ON 테이블이름(칼럽이름)
CREATE INDEX idx_admin ON board(writer);
-- CREATE INDEX idx_writer ON board(writer);

-- 오라클 힌트
-- /*+ INDEX(테이블이름 인덱스이름) */
SELECT /*+ INDEX(board idx_admin) */ * FROM board
WHERE writer = 'admin';

-- 인덱스 삭제
DROP INDEX idx_admin;

-- 실행 계획 보는 코드
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(null, null, 'ALLSTATS LAST'));

SELECT /* + board_admin*/
       bno,
       title
FROM board
where writer = 'admin';

