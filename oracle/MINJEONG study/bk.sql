-- ---------------------------복습---------------------------------
-- book 테이블(도서번호, 도서이름, 출판사, 도서가격)
create table bk(
     bkno           number primary key,
     bkname         varchar2(50) not null,
     bkpublisher    varchar2(50) not null,
     bkprice        number not null
);

--이름 변경
alter table bk rename column bkpublisher to bkp;
alter table bk rename column bkp to bk출판사;
alter table bk rename column bk출판사 to bkp;

-- 자료형 변경 
alter table bk modify bkname varchar2(60);
alter table bk modify bkname varchar2(50);

-- 구조 확인
select * from bk;

-- book 자료 입력
insert into bk (bkno, bkname, bkp, bkprice) values (100, '첫코딩', '출판사', 12000);
insert into bk values (101, '어린이도 쉽게 따라하는 코딩', '코딩나라', 15000);
insert into bk values (102, '아랍 지도자들', '세계', 14000);
insert into bk values (103, '한국인들의 지혜', '한인사회', 25000);
insert into bk values (104, '직장인들의 워라벨', '조이', 30000);

insert into bk values (105, '한국인들의 지혜', 'ㄱ인사회', 25000);
insert into bk values (106, '한국인들의 지혜', 'ㄴ인사회', 25000);

-- book 자료 검색
select * from bk;

-- 모든 도서의 이름과 가격을 검색하시오
select bkname 도서이름, bkprice 도서금액
from bk;

-- 도서 테이블에 있는 모든 출판사를 검색하시오(중복 제거 DISTINCT)
select distinct bkp from bk;

-- 특정한 조건(WHERE 절)
-- 가격이 15000원 미만인 도서를 검색하시오
select * from bk
where bkprice < 15000
order by bkprice;

-- 가격이 10000원 이상 20000원 이하인 도서를 검색하시오(BETWEEN ~AND)
select * from bk
where bkprice between 10000 and 20000;

-- OR 조건, IN('a', 'b')
-- 출판사가 '출판사' 혹은 '세계'인 도서를 검색하시오
select * from bk;

select * from bk
where bkp = '출판사'
or bkp = '세계';

select * from bk
where bkp in ('출판사', '세계');
select * from bk;

-- '첫코딩'을 출간한 출판사를 검색하시오
select bkname 도서명, bkp 출판사
from bk
where bkname = '첫코딩';

-- 문자의 경우 = 대신 LIKE를 사용해서 같은 결과 값 출력이 가능하다
-- 도서 이름에 '코'가 포함된 출판사를 검색하시오
select * from bk
where bkname like '%코%';

-- 코딩에 관한 도서 중 가격이 15000원 이상인 도서를 찾으시오
select * from bk;

select * from bk
where bkprice >= 15000
and bkname like '%코딩%';

-- 도서의 총 수를 구하시오
select count(bkno) 도서총수량 from bk;

-- 도서 중 최고 가격을 검색하시오
select max(bkprice) 최고금액
from bk;

-- 서브 쿼리(중첩쿼리, sub query)
-- 도서 가격이 높은 순으로 정렬하시오
-- 가격이 같으면 출판사를 오름차순 정렬하기
select * from bk
order by bkprice desc, bkp asc;

commit;






