-- join
select * from cus;
select * from ord;
select * from bk;

-- 조인과 서브쿼리
-- 고객과 고객의 주문에 관한 데이터를 모두 검색하시오
select * from cus, ord
where cus.cusid = ord.cusid;

select cus.cusid 아이디, cus.cusname 이름, ord.price 구매금액, ord.orderdate 구매날짜
from cus, ord
where cus.cusid = ord.cusid;

-- 박지성 고객의 주문내역
select cus.cusid, cus.cusname, ord.price, ord.orderdate
from cus, ord
where cus.cusid = ord.cusid
and cus.cusname = '박지성';

select * from cus;

-- '김연아' 고객의 주문내역
select cus.cusid 번호, cus.cusname 고객명, ord.price 금액, ord.orderdate 주문일자
from cus, ord
where cus.cusid = ord.cusid
and cus.cusname = '김연아';

-- '김연아' 고객의 주문내역을 검색하시오
-- 1. 김연아 고객의 아이디 검색
-- 2. 김연아 고객의 아이디로 주문테이블에서 검색
SELECT cus.cusid
FROM cus
WHERE cus.cusname = '김연아';

select *
from ord
where ord.cusid = (select cus.cusid from cus where cus.cusname = '김연아');

-- 판매 가격이 20000원 이상인 주문 내역
select * from cus, ord
where cus.cusid = ord.cusid
and price >= 20000;

-- 주문일이 2023-4-14 주문 내역
select * from ord
where orderdate = '2023-4-14';

-- 고객별로 주문한 모든 도서의 총 판매액을 구하시오
select cus.cusname, sum(ord.price)
from cus, ord
where cus.cusid = ord.cusid
group by cusname;

-- 고객(이름)별로 주문한 모든 도서의 총 판매액을 구하시오
select cus.cusname, sum(ord.price) 판매금액,
       rank() over(order by sum(ord.price) desc) 순위
from cus, ord
where cus.cusid = ord.cusid
group by cusname;

-- 고객의 이름과 고객이 주문한 도서의 이름을 검색하시오
select cus.cusid, cus.cusname, bk.bkname, ord.price, ord.orderdate
from cus, ord, bk
where cus.cusid = ord.cusid
and bk.bkno = ord.bkno;

-- 가격이 가장 비싼 도서의 이름을 검색하시오
select max(bkprice) 최고금액
from bk;

select * from cus;
select * from ord;
select * from bk;
-- 중첩 쿼리
select bk.bkname, bk.bkprice
from bk
where bkprice = (select max(bkprice)from bk);

-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
select cus.cusid id, cus.cusname 고객명, bk.bkname 도서명, ord.orderdate 주문일자
from cus, bk, ord
where cus.cusid = ord.cusid
and bk.bkno = ord.bkno;

-- 1. 주문 테이블에서 고객아이디 검색
select distinct cusid id from ord;

-- 2. 고객 아이디가 있는 고객이름 검색
select cusname from cus
where cusid in(1,2,3,4);

select cusname, cusid from cus; 

select cusid, cusname 
from cus
where cusid in ( select cusid from ord);

-- 도서를 구매한 적이 없는 고객의 이름을 검색하시오
select cusid, cusname
from cus
where cusid not in (select cusid from ord);

COMMIT;

