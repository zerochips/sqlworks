-- bookmall

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

/*

*/

-- JOIN(동등조인-EQUI JOIN) - 공통된 부분 (교집합, AND)
-- 고객의 이름과 고객이 주문에 도서의 판매가격을 구하시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

-- '박지성' 고객이 주문한 도서의 판매가격을 구하시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
    AND cus.name = '박지성';

-- 고객별로 주문한 모든 도서의 총 판매액을 구하시오(GROUP BY, SUM)
SELECT cus.name 고객명, SUM(ord.saleprice) 판매금액
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- 안산 고객이 구매한 도서의 총 판매액을 구하시오(SUM)
SELECT cus.name 고객명, SUM(ord.saleprice) 판매금액
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name = '안산';

-- 표준 SQL - INNER JOIN ON~
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name DESC;

-- 여긴 AND
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    AND cus.name = '박지성';

-- 여긴 WHERE
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    WHERE cus.name = '박지성';

-- 고객이 주문한 도서의 이름과 판매가격을 구하시오 - 3개의 테이블 조인
SELECT cus.name, bk.bookname, ord.saleprice
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    AND bk.bookid = ord.bookid;

-- '박지성' 고객이 주문한 도서의 판매가격을 구하시오
SELECT cus.name, bk.bookname, ord.saleprice, ord.orderdate
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    AND bk.bookid = ord.bookid
    AND cus.name = '박지성';
    
-- 외부 조인 ('+' 연산자 사용) : JOIN 조건에 충족하는 데이터가 이니어도 검색하는 방식
-- WHRER 절에서 모든 행이 출력되는 테이블의 반대편 테이블에 '+'를 붙임 (null 값 같이 출력됨)
-- 주문이 없는 고객을 포함하여 고객의 이름과 주문한 도서의 판매가격을 찾으시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+);

-- 표준 SQL - LEFT OUTER JOIN ON ~
SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
    