-- 학생 테이블
CREATE TABLE student(
    snumber NUMBER(10) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(4),
    address VARCHAR2(50),
    cname   VARCHAR2(30),
    pnumber NUMBER(3),
    
    --외래키 제약조건(학과)
    CONSTRAINT fk_class FOREIGN KEY(cname) 
    REFERENCES class(cname),
    
    -- 외래키(교수)
    CONSTRAINT fk_professor FOREIGN KEY(pnumber)
    REFERENCES professor(pnumber)
);

-- 학생 자료 삽입
INSERT INTO student VALUES (20211234, '이산', 22, '여', '서울시 종로구', '소프트웨어학과', 301, 3.5);
INSERT INTO student VALUES (20211235, '박대양', 25, '남', '서울시 성북구', '전기전자공학과', 501);
INSERT INTO student VALUES (20211236, '한비야', 33, '여', '수원시 장안구', '전기전자공학과', 501, 4.2);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211237, '김산', 33, '화학공학과', 402);
INSERT INTO student(snumber, sname, age, cname, pnumber) VALUES (20211238, '김산', 15, '소프트웨어학과', 302);
INSERT INTO student VALUES (20211240, '강감찬', 43, '남', '수원시 장안구', '전기전자공학과', 501, 4.1);
INSERT INTO student VALUES (20211241, '이순신', 37, '남', '수원시 장안구', '소프트웨어학과', 302, 3.6);
INSERT INTO student VALUES (20211242, '이강', 22, '남', '수원시 장안구', '소프트웨어학과', 301, 4.3);


-- 학생 자료 검색
SELECT * FROM student;

-- 성별이 '여'인 학생을 검색하시오
SELECT * FROM student WHERE gender = '여';

-- 나이가 20대인 학생을 검색하시오
-- BETWEEN A AND B(A이상(>=) B이하(<=)
SELECT * FROM student 
WHERE age BETWEEN 20 AND 30;

SELECT * FROM student 
WHERE age >= 20 AND age <= 30;

-- 주소가 '수원시'인 자료를 검색하시오
SELECT * FROM student 
WHERE address LIKE '수원시%';

-- 정렬(ORDER BY 오름차순-ASC(생략가능), 내림차순 정렬-DESC)
SELECT *
FROM student
ORDER BY age ASC;

-- 이름순으로 정렬하시오
SELECT *
FROM student
ORDER BY sname;

-- NULL인 자료 - IS NULL문을 사용, IS NOT NULL문 사용
-- 주소가 없는 자료를 검색하시오
SELECT *
FROM student
WHERE address IS NULL;

select student.*, professor.pname
from student, professor
where professor.pnumber = student.pnumber;

-- 테이블 조인(join)
-- 학생이름, 나이, 성별, 전공, 교수이름
SELECT 
    st.sname 학생이름, 
    st.age 나이, 
    st.gender 성별, 
    st.cname 전공, 
    pr.pname 교수 
FROM student st, professor pr
WHERE st.pnumber = pr.pnumber
ORDER BY st.sname;

-- 그룹(GROUP)함수 y = f(x)
-- 학생의 수를 출력하시오
SELECT COUNT(*) 학생수
FROM student;

SELECT COUNT(sname) 학생수
FROM student;

-- 학생 나이의 평균을 구하시오
SELECT AVG(age) 평균나이, MAX(age) 최고나이, MIN(age) 최저나이
FROM student;

-- 학점(point) 칼럼 추가(4.5)
ALTER TABLE student ADD point FLOAT(3);
-- NUMBER(3, 2) - 소수둘째자리와 점 포함 총 세자리임
ALTER TABLE student MODIFY point NUMBER(3, 2);

-- 학점이 NULL인 학생 삭제
DELETE FROM student
WHERE point IS NULL;

-- 학생의 학생수, 학점 평균
SELECT COUNT(*) 학생수, AVG(point) 학점평균
FROM student;

-- 학점이 4이상이고 성별이 '여'인 학생을 검색하시오
SELECT *
FROM student
WHERE point >= 4.0 AND gender = '여';

-- 학생이름, 성별, 학점, 학과명, 학과전화번호, 교수이름 출력
SELECT 
    st.sname 학생이름, 
    st.gender 성별, 
    st.point 학점, 
    cl.cname 학과명, 
    cl.ctel 학과전화번호,
    pr.pname 교수이름
FROM student st, class cl, professor pr
WHERE point >= 4.0 AND gender = '여'
    AND st.cname = cl.cname
    AND st.pnumber = pr.pnumber;

-- 그룹으로 데이터 처리 : GROUP BY 구문을 사용
-- 학과별 학점 평균을 검색하시오
SELECT cname 학과명, AVG(point) 학점평균
FROM student
GROUP BY cname;

-- 학과별 학점 평균을 검색하시오(조건: 4.0미만인 자료)
SELECT cname 학과명, AVG(point) 학점평균
FROM student
GROUP BY cname
HAVING AVG(point) < 4.0;

-- 성별 학점 평균을 구하시오
DESC student;





