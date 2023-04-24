-- ���ѹα��� �����ϴ� ���� �̸��� ������ �ֹ��� ���� �̸� �˻�
-- join�� ���� �ʰ� union�� ���
select * from customer;

-- ���ѹα��� �����ϴ� ���� �̸�
select name
from customer
where address like '%���ѹα�%';

-- ������ �ֹ��� ��� �̸� �˻�
select name
from customer cus, orders ord
where cus.custid = ord.custid;

-- ���� ���� ���ϱ�
-- UNION - �ߺ� �Ұ�
select name
from customer
where address like '%���ѹα�%'
UNION
select name
from customer cus, orders ord
where cus.custid = ord.custid;

-- UNION ALL - �ߺ� ���
select name
from customer
where address like '%���ѹα�%'
UNION all
select name
from customer cus, orders ord
where cus.custid = ord.custid;