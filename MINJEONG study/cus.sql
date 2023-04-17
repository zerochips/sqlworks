-- cus table
create table cus(
    cusid   number primary key,
    cusname varchar2(20) not null,
    address varchar2(60) not null,
    phone   varchar2(30) not null
);

-- 테이블 수정
alter table cus rename column cusname to cname;
alter table cus rename column cname to cusname;

alter table cus modify phone varchar2(30) null;

DESC cus;

-- customer 자료 추가
insert into cus (cusid, cusname, address, phone) values (1, '박지성', '영국 맨체스터', '010-0123-4567');
insert into cus values (2, '김연아', '대한민국 서울', '010-1234-5678');
insert into cus values (3, '안산', '대한민국 경기도 안산', '010-7890-4561');
insert into cus values (4, '류현진', '미국 토론토', 'null');
insert into cus values (5, '손흥민', '영국 토트넘', 'null');
insert into cus values (6, '김하늘', '대한민국 성남시', '010-7777-8888');
insert into cus values (7, '박대양', '대한민국 용인시', '010-4444-3333');
insert into cus values (8, '김관우','대한민국 서울시', '010-5555-6666');

update cus set phone = ''
where phone = 'null';

select * from cus;

-- 전화번호가 없는 고객을 찾으시오
select * from cus
where phone = 'null';

/* null 설정이 table에서 안되어 있으면
select * from cus
where phone is null;
*/

-- 박지성 전화번호 변경
select * from cus;
update cus set phone = '010-1111-2222'
where cusid = 1;

-- 주소가 대한민국인 고객을 검색하시오
select * from cus
where address like '%대한민국%';

-- 고객을 이름순으로 
select * from cus
order by cusname;


COMMIT;