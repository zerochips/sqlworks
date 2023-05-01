--100만이 넘어가면 ORDER BY bno DESC; 느려져서 index를 사용
SELECT * FROM board ORDER BY bno DESC;
SELECT * from board;

-- 작성자가 'admin'인 게시글
SELECT * FROM board WHERE writer = 'admin';

-- 인덱스 생성
CREATE INDEX idx_admin ON board(writer);

-- 인덱스 삭제
DROP INDEX idx_admin;

-- 실행 계획 보는 코드
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(null, null, 'ALLSTATS LAST'));

SELECT /* + board_admin*/
       bno,
       title
FROM board
where writer = 'admin';

