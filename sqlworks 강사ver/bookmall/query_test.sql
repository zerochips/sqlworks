-- ���� ����
--1. 2.
select name, address, address from customer;
--3.
select * from customer
where address not like '%����%';
--4. 
select * from customer
where name in ('�迬��', '�Ȼ�');
--5.
select * from customer
where address not like '���ѹα�%';
--6.
select * from customer
where phone is null;
--7
select * from customer order by name;
--8.
select count(*) ���ο��� from customer;

