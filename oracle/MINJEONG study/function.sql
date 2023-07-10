-- 숫자 타입 함수
-- 제공된 테이블 : dual 
-- abs 절댓값
select abs(-10), abs(10) from dual;

-- 반올림 : ROUND(수, 자리수)
select round(3.875) from dual;
select round(3.875, 1) from dual;
select round(3.875, 2) from dual;

-- sal을 30일로 나눈 후 소수 자리수에 따라 반올림한 값 출력
select round(sal/30) 일급,
    round(sal/30, 1) 결과1,
    round(sal/30, 0) 결과2,
    round(sal/30, -1) 결과3
from employee;

-- sal을 30일로 나눈 후 소수 자리수에 따라 절삭(버림) 값 출력
select round(sal/30) 일급,
    trunc(sal/30, 1) 결과1,
    trunc(sal/30, 0) 결과2,
    trunc(sal/30 -1) 결과3
from employee;

select * from employee;
select sal/30 from employee;
-- 고객별 평균 주문 금액을 백원 단위로 반올림한 값을 구하시오
select ord.cusid id, round(avg(ord.price), -2) 평균주문금액
from ord group by cusid;

select ord.cusid id, count(*) 주문수, sum(ord.price) 총액
from ord group by cusid;

select 
ord.cusid id, 
count(*) 주문수, 
round(sum(ord.price)/count(*), -2) 평균금액
from ord group by ord.cusid;

-- 문자 타입 함수
select lower('ABCD') result from dual;
select lower('ㄱㄴㄷㄹ') 결과 from dual;

-- SUBSTR(문자, 인덱스, 글자수)
select substr('ABC', 1, 2) FROM DUAL;

-- REPLACE(문자, 이전문자, 새로운문자)
SELECT REPLACE('ABC', 'A', 'E') 결과 from dual;
select replace('ABC', 'A', 'E') from dual;

-- CONCAT(문자1, 문자2) - 문자 연결
select concat ('부자', '입니다') from dual;
select concat ('hel', 'lo') from dual;

-- 연결연산자 -'||'
select '안녕' || '하세요' 결과 from dual;
select 'hel' || 'lo' 결과 from dual;

-- 부서이름에서 처음부터 시작해서 2개의 문자 출력
select substr(deptname, 1, 2) 부서명 from dept;
select substr(deptname, 1, 2) 부서명 from dept;

-- 도서 제목에 야구가 포함된 농구로 변경하여 검색
select replace(bkname, '한국', '대한민국') from bk;
select replace(bkname, '대한민국', '한국') from bk;

-- 날짜 함수
-- 20일 전의 날짜 출력
select sysdate -20 from dual;
select sysdate -10 from dual;
select sysdate -5 from dual;
select sysdate -30 from dual;

-- 3개월 후의 날짜 출력
select add_months(sysdate, 3) from dual;
select add_months(sysdate, 3) from dual;
select add_months(sysdate, 3) from dual;
select add_months(sysdate, 5) from dual;

-- 3개월 전의 날짜 출력
select add_months(sysdate, -3) from dual;

-- 3개월 전의 날짜 출력
select add_months('2023-4-1', -3) from dual;
select add_months('2023-3-15', -5) from dual;

-- 현재 날짜와 시간 까지
select sysdate, systimestamp from dual;

-- 주문 번호가 6에서 10사이인 도서의 주문일에 3개월을 더한값을 구하시오.
-- 1. 주문번호가 6~10인 도서 검색
select ordid from ord where ordid >= 6 and ordid <=10;
select * from ord where ordid >= 6 and ordid <=10;

-- 2. 주문일에 3개월 더하기
select orderdate 주문일자,
add_months(orderdate, 3) 후,
add_months(orderdate, -4) 전
from ord
where ordid >= 6 and ordid <=10;

select * from ord;

-- 주문번호가 10인 도서의 주문일로부터 오늘까지의 총 개월수를 구하시오
-- MONTHS_BETWEEN(이후날짜, 이전날짜)
select ordid 주문번호, orderdate 주문일자,
       trunc(months_between(sysdate, orderdate)) 총개월수
from ord
where ordid = 10;

-- 서점은 주문일로부터 10일후 매출을 확정한다. 각 주문의 확정일자를 구하시오.
select ordid    주문번호,
       orderdate 주문일자,
       orderdate + 10 확정일
       from ord;

select orderdate 주문일자, orderdate +10 확정일자
from ord;

-- 주문 번호가 10인 도서
select * from ord where ordid = 10;
-- -------------------------------------------------------------
-- 자동 타입 변환
select 1 + '2' from dual;

-- 수동 타입 변환(직접해야함)
-- 문자를 숫자 형식으로 변환
select to_number('120') 결과 from dual;

-- 날짜 형식
select to_date('2022-06-30', 'yy-mm-dd') from dual;

-- 날짜 형식 변환
select to_char(sysdate, 'yyyy-mm-dd') from dual;

select to_char(sysdate, 'yyyy-mm-dd') 날짜,
to_char(sysdate, 'yyyy') 연도,
to_char(sysdate, 'mm') 월,
to_char(sysdate, 'dd') 일
from dual;

-- 시간 형식 변환
select to_char(sysdate, 'hh:mi:ss pm') 시간형식 from dual;

-- 시간이 오후라서 AM으로 표기해도 오후라고 출력됨
select to_char(sysdate, 'hh:mi:ss am') from dual;
-- -------------------------------------------------------------
-- 고객 이름에서 같은 성을 가진 사람의 인원수를 구하시오
-- 힌트, GROUP BY 절, SUBSTR(), COUNT(*)
select substr(cusname, 1, 1) 성, count(*) 인원
from cus
group by substr(cusname, 1, 1);

select substr(cusname, 1, 1), count(*)
from cus
group by substr(cusname, 1, 1);

----------------------------------------------------------
-- function
-- NULL 값 처리하기
select *from cus where phone = 'null';

-- NVL(칼럼값, 특정값) : 칼럼이름이 NULL인 경우에 특정값을 출력, 
-- NULL이 아니면 칼럼값 출력
select cusid, cusname, address, nvl(phone, '------x------') phone
from cus;

select cusid, cusname, address, nvl(phone, '010-0000-1111') phone
from cus;

-- 전체 개수, 합계, 평균, 최소값
select count(phone) from cus;
select count(phone) from cus;

-- NULL을 0으로 바꿈
-- 숫자를 더하지만 계산하기 애매해서 id로 연습해봄
select count(nvl(phone, 0)) count from cus;
select sum(nvl(cusid, 0))/4 sum from cus;
select avg(nvl(cusid, 0)) avg from cus;
select min(nvl(cusid, 0)) min from cus;
select max(nvl(cusid, 0)) max from cus;

select max(nvl(phone, 0)) max from cus;

-- RANK() 함수
select cusid,
       price,
       rank() over(order by price desc) 급여_rank,
       dense_rank() over(order by price desc) 급여_dense_rank
       from ord;

select cusid, price,
rank() over(order by price desc) 급여,
dense_rank() over(order by price) 순위
from ord;

select empname, sal,
rank() over(order by sal desc) 월급,
dense_rank() over(order by sal) 순차
from employee;

select * from ord;


