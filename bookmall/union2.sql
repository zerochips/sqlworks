-- 대한민국에 거주하는 고객의 이름과 도서를 주문한 고객의 이름 검색
-- join을 쓰지 않고 union을 사용
select * from customer;

-- 대한민국에 거주하는 고객의 이름
select name
from customer
where address like '%대한민국%';

-- 도서를 주문한 곡객의 이름 검색
select name
from customer cus, orders ord
where cus.custid = ord.custid;

-- 집합 연산 더하기
-- UNION - 중복 불가
select name
from customer
where address like '%대한민국%'
UNION
select name
from customer cus, orders ord
where cus.custid = ord.custid;

-- UNION ALL - 중복 허용
select name
from customer
where address like '%대한민국%'
UNION all
select name
from customer cus, orders ord
where cus.custid = ord.custid;