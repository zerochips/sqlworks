-- bookmall 데이터베이스 구축
-- book(도서) 테이블 생성
CREATE TABLE book(
    bookid  NUMBER PRIMARY KEY,       --책아이디 기본키
    bookname VARCHAR2(40) NOT NULL,   --책이름
    publisher VARCHAR2(40) NOT NULL,  --출판사
    price  NUMBER NOT NULL            --책가격
);

-- book 자료 삽입
INSERT INTO book VALUES (1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO book VALUES (2, '축구아는 여자', '나무수', 13000);
INSERT INTO book VALUES (3, '축구의 이해', '대한미디어', 22000);
INSERT INTO book VALUES (4, '골프 바이블', '대한미디어', 35000);
INSERT INTO book VALUES (5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO book VALUES (6, '양궁의 실제', '굿스포츠', 6000);
INSERT INTO book VALUES (7, '야구의 추억', '이상미디어', 20000);
INSERT INTO book VALUES (8, '야구를 부탁해', '이상미디어', 20000);
INSERT INTO book VALUES (9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);

SELECT * FROM book;

-- 모든 도서의 이름과 가격을 검색하시오
SELECT bookname, price FROM book;

-- 도서 테이블에 있는 모든 출판사를 검색하시오
SELECT DISTINCT publisher FROM book;

-- 가격이 20000원 미만인 도서를 검색하시오
SELECT * FROM book
WHERE price < 20000;

-- 가격이 10000원 이상이고, 20000원 이하인 도서를 검색하시오
SELECT * FROM book
WHERE price >= 10000 AND price <= 20000;

-- BETWEEN ~ AND
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000;

-- 출판사가 '굿스포츠' 혹은(또는) '대한미디어'인 도서를 검색하시오
-- IN('A', 'B') - A 또는 B
SELECT * FROM book
WHERE publisher = '굿스포츠' OR publisher = '대한미디어';

SELECT * FROM book
WHERE publisher IN('굿스포츠', '대한미디어');

-- '축구의 역사'를 출간한 출판사를 검색하시오
SELECT publisher, bookname FROM book
WHERE bookname = '축구의 역사';

SELECT publisher, bookname FROM book
WHERE bookname LIKE '축구의 역사';

-- 도서 이름에 '축구'가 포함된 출판사와 책이름를 검색하시오
SELECT publisher, bookname FROM book
WHERE bookname LIKE '%축구%';

-- 축구에 관한 도서 중 가격이 20000원 이상인 도서를 찾으시오
SELECT * FROM book
WHERE bookname LIKE '%축구%'
AND price >= 20000;

-- 도서 가격이 높은 순으로 정렬하시오
SELECT * FROM book
ORDER BY price DESC;

-- 도서 가격이 높은 순으로 정렬하시오
-- 가격이 같으면 출판사를 오름차순으로 정렬하시오.
SELECT * FROM book
ORDER BY price DESC, publisher ASC;











COMMIT;



