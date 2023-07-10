-- 부서와 사원 테이블
use mydb;	-- 항상 우선 되어야함

create table department(
	deptid int primary key,
    deptname varchar(30) not null,
    location varchar(20) not null
);

create table employee(
	empid int primary key,
    empname varchar(30) not null,
    age int,
    deptid int,
    constraint fk_dept_emp foreign key(deptid)
    references department(deptid)
);

-- 부서 추가
insert into department values(10, '개발팀', '서울');
insert into department values(20, '디자인팀', '인천');

-- 사원 추가
insert into employee values(101, '한강', 27, 10);
insert into employee values(102, '백두산', 32, 20);

-- 외래키 제약 조건 위배
insert into employee values(103, '홍길동', 41, 30);

-- 부서 검색
select * from department;
select * from employee;
