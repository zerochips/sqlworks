-- join
select * from cus;
select * from ord;
select * from bk;

-- ���ΰ� ��������
-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
select * from cus, ord
where cus.cusid = ord.cusid;

select cus.cusid ���̵�, cus.cusname �̸�, ord.price ���űݾ�, ord.orderdate ���ų�¥
from cus, ord
where cus.cusid = ord.cusid;

-- ������ ���� �ֹ�����
select cus.cusid, cus.cusname, ord.price, ord.orderdate
from cus, ord
where cus.cusid = ord.cusid
and cus.cusname = '������';

select * from cus;

-- '�迬��' ���� �ֹ�����
select cus.cusid ��ȣ, cus.cusname ����, ord.price �ݾ�, ord.orderdate �ֹ�����
from cus, ord
where cus.cusid = ord.cusid
and cus.cusname = '�迬��';

-- '�迬��' ���� �ֹ������� �˻��Ͻÿ�
-- 1. �迬�� ���� ���̵� �˻�
-- 2. �迬�� ���� ���̵�� �ֹ����̺��� �˻�
SELECT cus.cusid
FROM cus
WHERE cus.cusname = '�迬��';

select *
from ord
where ord.cusid = (select cus.cusid from cus where cus.cusname = '�迬��');

-- �Ǹ� ������ 20000�� �̻��� �ֹ� ����
select * from cus, ord
where cus.cusid = ord.cusid
and price >= 20000;

-- �ֹ����� 2023-4-14 �ֹ� ����
select * from ord
where orderdate = '2023-4-14';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�
select cus.cusname, sum(ord.price)
from cus, ord
where cus.cusid = ord.cusid
group by cusname;

-- ��(�̸�)���� �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�
select cus.cusname, sum(ord.price) �Ǹűݾ�,
       rank() over(order by sum(ord.price) desc) ����
from cus, ord
where cus.cusid = ord.cusid
group by cusname;

-- ���� �̸��� ���� �ֹ��� ������ �̸��� �˻��Ͻÿ�
select cus.cusid, cus.cusname, bk.bkname, ord.price, ord.orderdate
from cus, ord, bk
where cus.cusid = ord.cusid
and bk.bkno = ord.bkno;

-- ������ ���� ��� ������ �̸��� �˻��Ͻÿ�
select max(bkprice) �ְ�ݾ�
from bk;

select * from cus;
select * from ord;
select * from bk;
-- ��ø ����
select bk.bkname, bk.bkprice
from bk
where bkprice = (select max(bkprice)from bk);

-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
select cus.cusid id, cus.cusname ����, bk.bkname ������, ord.orderdate �ֹ�����
from cus, bk, ord
where cus.cusid = ord.cusid
and bk.bkno = ord.bkno;

-- 1. �ֹ� ���̺��� �����̵� �˻�
select distinct cusid id from ord;

-- 2. �� ���̵� �ִ� ���̸� �˻�
select cusname from cus
where cusid in(1,2,3,4);

select cusname, cusid from cus; 

select cusid, cusname 
from cus
where cusid in ( select cusid from ord);

-- ������ ������ ���� ���� ���� �̸��� �˻��Ͻÿ�
select cusid, cusname
from cus
where cusid not in (select cusid from ord);

COMMIT;

