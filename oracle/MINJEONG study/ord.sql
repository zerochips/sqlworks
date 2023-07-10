-- order 테이블(주문번호, 고객번호, 도서번호, 판매가격, 주문일)
create table ord(
    ordid       number primary key,
    cusid       number not null,
    bkno        number not null,
    price       number,
    orderdate   date,
    -- 외래키 설정
    constraint cus1_fk foreign key(cusid)
    references cus(cusid),
    constraint bk1_kf foreign key(bkno)
    references bk(bkno)    
);

-- orders 자료 삽입
insert into ord values (1, 1, 100, 6000, to_date('2023-04-14', 'yyyy-mm-dd'));
insert into ord values (2, 2, 101, 21000, to_date('2023-04-13', 'yyyy-mm-dd'));
insert into ord values (3, 3, 102, 3000, to_date('2023-04-13', 'yyyy-mm-dd'));
insert into ord values (4, 4, 103, 20000, to_date('2023-04-12', 'yyyy-mm-dd'));
insert into ord values (5, 5, 104, 12000, to_date('2023-04-11', 'yyyy-mm-dd'));
insert into ord values (6, 6, 105, 6000, to_date('2023-04-11', 'yyyy-mm-dd'));
insert into ord values (7, 7, 106, 13000, to_date('2023-03-14', 'yyyy-mm-dd'));
insert into ord values (8, 8, 100, 12000, to_date('2023-03-11', 'yyyy-mm-dd'));
insert into ord values (9, 8, 101, 7000, to_date('2023-02-13', 'yyyy-mm-dd'));
insert into ord values (10, 1, 106, 13000, to_date('2023-01-14', 'yyyy-mm-dd'));

select * from ord;

update ord set price = 13000
where ordid = 10;

--고객이 주문한 도서의 총 판매액을 구하시오
select sum(price) 총판매액, avg(price) 평균금액
from ord;

-- 서점의 도서 판매 건수를 구하시오
select count(*) 총판매건수 from ord;

-- 2번 고객의 주문 내역 검색하기
-- 2번 고객(김연아)이 주문한 도서의 총 판매액을 구하시오
select * 
from ord
where cusid = '2';
 
select sum(price) 총판매액
from ord
where cusid = 2;

-- 가격이 6000원 이상인 도서를 구매한 고객별 주문도서의 총 수량을 구하시오
-- 단, 2권 이상 구매한 고객만 찾으시오.
select cusid, count(*) 총수량
from ord
where price >= 6000
group by cusid
having count(*) >= 2;


-- 고객 이름별로 주문한 도서의 총 판매액을 구하시오
-- 집계를 구할때는 GROUP BY 절 사용 
-- HAVING 절은 GROUP BY의 질의 결과 나타내는 그룹을 제한하는 역할
select cus.cusname, sum(ord.price)
from cus, ord 
where cus.cusid = ord.cusid
group by cus.cusname
having cus.cusname = '박지성';

select cus.cusname as 고객이름, sum(ord.price) as 구매총액
from cus, ord
where cus.cusid = ord.cusid
group by cus.cusname
having cus.cusname = '김관우';

-- 1 모든 고객의 이름과 주소를 검색하시오
select cus.cusname 고객명, cus.address 주소
from cus;

-- 2 모든 고객의 이름, 주소, 전화번호를 검색하시오
select cus.cusname, cus.address, cus.phone
from cus;

-- 3 주소가 '영국'인 고객을 검색하시오
select * from cus
where cus.address like '%영국%';

-- 4 고객의 이름이 '김연아' 혹은 '안산'인 고객을 검색하시오
select * from cus
where cus.cusname in ('김연아', '안산');

--5 주소가 '대한민국'이 아닌 고객을 검색하시오
select * from cus
where cus.address not like '%대한민국%';

--6 전화번호가 없는 고객을 검색하시오
select * from cus
where cus.phone = 'null';

--7 고객을 이름순으로 정렬하시오
select * from cus
order by cus.cusname;

--8 고객의 총 인원수를 구하시오
select count(*) 총인원수 from cus;

COMMIT;
-- ------------------조인(1개 테이블 이상 연결하는 기법)-------------------------
-- ROWNUMVER
/*SELECT ord.*, cus.*
FROM orders ord, customer cus
WHERE ord.custid = cus.custid;*/

select ord.*, cus.*
from ord, cus
where ord.cusid = cus.cusid;
