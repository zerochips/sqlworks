CREATE TABLE sol(
    solnum VARCHAR2(4) PRIMARY KEY,
    solname VARCHAR2(20) NOT NULL,
    soloffice VARCHAR2(10)
);

DESC sol;

-- 부서 추가
INSERT INTO sol(solnum, solname, soloffice) VALUES ('101', '인사팀', '서울');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('102', '회계팀', '서울');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('103', '마케팅팀', '서울');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('104', '홍보팀', '서울');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('105', '연구개발팀', '서울');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('106', '보안팀', '서울');
INSERT INTO sol(solnum, solname, soloffice) VALUES ('107', '감사팀', '서울');

SELECT * FROM sol;
SELECT solnum as 부서코드, solname as 부서명, soloffice as 위치 FROM sol;
SELECT solnum, solname, soloffice FROM sol;

-- 찾기
SELECT *FROM sol WHERE solnum = '101';

-- 특정한 자료 검색
SELECT * FROM sol WHERE solnum = '102';

-- 자료 정렬 : ORDER BY 칼럼명 (ASC/DESC)
SELECT *FROM sol ORDER BY solnum DESC;

-- 부서 번호가 102번인 부서를 '디자인팀'으로 변경하시오
UPDATE sol SET solname = '디자인팀'
WHERE solnum = '102';

SELECT * FROM sol;










