-- order ���̺�(�ֹ���ȣ, ����ȣ, ������ȣ, �ǸŰ���, �ֹ���)
create table ord(
    ordid       number primary key,
    cusid       number not null,
    bkno        number not null,
    price       number,
    orderdate   date,
    -- �ܷ�Ű ����
    constraint cus1_fk foreign key(cusid)
    references cus(cusid),
    constraint bk1_kf foreign key(bkno)
    references bk(bkno)    
);

-- orders �ڷ� ����
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

--���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
select sum(price) ���Ǹž�, avg(price) ��ձݾ�
from ord;

-- ������ ���� �Ǹ� �Ǽ��� ���Ͻÿ�
select count(*) ���ǸŰǼ� from ord;

-- 2�� ���� �ֹ� ���� �˻��ϱ�
-- 2�� ��(�迬��)�� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
select * 
from ord
where cusid = '2';
 
select sum(price) ���Ǹž�
from ord
where cusid = 2;

-- ������ 6000�� �̻��� ������ ������ ���� �ֹ������� �� ������ ���Ͻÿ�
-- ��, 2�� �̻� ������ ���� ã���ÿ�.
select cusid, count(*) �Ѽ���
from ord
where price >= 6000
group by cusid
having count(*) >= 2;


-- �� �̸����� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
-- ���踦 ���Ҷ��� GROUP BY �� ��� 
-- HAVING ���� GROUP BY�� ���� ��� ��Ÿ���� �׷��� �����ϴ� ����
select cus.cusname, sum(ord.price)
from cus, ord 
where cus.cusid = ord.cusid
group by cus.cusname
having cus.cusname = '������';

select cus.cusname as ���̸�, sum(ord.price) as �����Ѿ�
from cus, ord
where cus.cusid = ord.cusid
group by cus.cusname
having cus.cusname = '�����';

-- 1 ��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
select cus.cusname ����, cus.address �ּ�
from cus;

-- 2 ��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�
select cus.cusname, cus.address, cus.phone
from cus;

-- 3 �ּҰ� '����'�� ���� �˻��Ͻÿ�
select * from cus
where cus.address like '%����%';

-- 4 ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
select * from cus
where cus.cusname in ('�迬��', '�Ȼ�');

--5 �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
select * from cus
where cus.address not like '%���ѹα�%';

--6 ��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
select * from cus
where cus.phone = 'null';

--7 ���� �̸������� �����Ͻÿ�
select * from cus
order by cus.cusname;

--8 ���� �� �ο����� ���Ͻÿ�
select count(*) ���ο��� from cus;

COMMIT;
-- ------------------����(1�� ���̺� �̻� �����ϴ� ���)-------------------------
-- ROWNUMVER
/*SELECT ord.*, cus.*
FROM orders ord, customer cus
WHERE ord.custid = cus.custid;*/

select ord.*, cus.*
from ord, cus
where ord.cusid = cus.cusid;
