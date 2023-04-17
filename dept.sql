--부서 테이블(dept)
CREATE TABLE dept(
    -- 칼럼이름 자료형
    deptno  VARCHAR2(4) PRIMARY KEY,
    deptname VARCHAR2(20) NOT NULL,
    office  VARCHAR2(10)
);

-- 이상 현상 해결
-- 부서코드 : 식별자(Indetifier) - 기본키(PRIMARY KEY) 속성 추가
-- 부서명 : 필수 입력 사항(NOT NULL 속성 추가)

DESC dept;

-- 부서 추가
INSERT INTO dept(deptno, deptname, office) VALUES ('1000', '인사팀', '서울');
INSERT INTO dept(deptno, deptname, office) VALUES ('1001', '전산팀', '수원');
INSERT INTO dept VALUES ('1002', '전산팀', '수원');
INSERT INTO dept(deptno, deptname) VALUES ('1003', '영업팀');

-- 실행 완료 : 트랜잭션의 한 부분
COMMIT;

-- 부서 자료 검색(as 별칭 - alias)
SELECT * FROM dept;
SELECT deptno as 부서코드, deptname as 부서명 FROM dept;
SELECT deptno, deptname, office FROM dept;
SELECT * FROM dept WHERE deptno = '1001';

-- 특정한 자료 검색 : WHERE 절 조건
SELECT * FROM dept;
WHERE deptno = '1002';

-- 자료 정렬 : ORDER BY 칼럼명 (ASC/DESC)
SELECT * FROM dept
ORDER BY deptno DESC;

-- 부서 번호가 1002번인 부서를 '회계팀'으로 변경하시오
UPDATE dept SET deptname = '회계팀'
WHERE deptno= 1002;
SELECT * FROM dept;

-- 부서 테이블 삭제
-- 자식 레코드가 있어서 삭제 안됨
DELETE FROM dept WHERE deptno = '1003';

DROP TABLE dept;

/*SQL 언어
- DDL : Data Definition Language(데이터 정의어)
	(Create, Alter, Drop)
- DML : Data Mainpulation Language(데이터 조작)
	(Insert, Select, Deleta -> Commit, Rollback)
- DCL : Data Control Language(데이터 제어어)
	(Grant, Revoke)

부서 테이블
Create table 
CRACTE TABLE dept( 
    -- 칼럼이름 자료형
    -- 부서코드 문자형
   deptno VARCHAR2(10)
);

RDBMS() - 관계형 데이터 베이스 - 객체, 관계형 데이터베이스
Releation(관계)

*/

-- ---------------------------복습---------------------------------
-- 이상 현상 해결
-- 부서코드 : 식별자(Indetifier) - 기본키(PRIMARY KEY) 속성 추가
-- 부서명 : 필수 입력 사항(NOT NULL 속성 추가)

-- 부서 추가
insert into dept values ('1004', '노무팀', '서울');
select * from dept;

-- 특정한 자료 검색 : WHERE 절 조건
select * from dept where deptno = '1000';

-- 자료 정렬 : ORDER BY 칼럼명 (ASC/DESC)
select deptno as 부서번호 from dept order by deptno asc;
select * from dept;

-- 부서 번호가 1002번인 부서를 '회계팀'으로 변경하시오
update dept set office = '노무팀'
where deptno = '1002';

update dept set office = '서울'
where deptno = '1002';

update dept set deptname = '노무팀'
where deptno = '1002';

update dept set deptname = '노무팀'
where deptno = '1004';

select * from dept;

-- 부서 테이블 삭제
delete from dept where deptname = '노무팀';

insert into dept values ('1004', '노무팀', '서울');
