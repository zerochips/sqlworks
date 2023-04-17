-- ���� Ÿ�� �Լ�
-- ������ ���̺� : dual 
-- abs ����
select abs(-10), abs(10) from dual;

-- �ݿø� : ROUND(��, �ڸ���)
select round(3.875) from dual;
select round(3.875, 1) from dual;
select round(3.875, 2) from dual;

-- sal�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� �ݿø��� �� ���
select round(sal/30) �ϱ�,
    round(sal/30, 1) ���1,
    round(sal/30, 0) ���2,
    round(sal/30, -1) ���3
from employee;

-- sal�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� ����(����) �� ���
select round(sal/30) �ϱ�,
    trunc(sal/30, 1) ���1,
    trunc(sal/30, 0) ���2,
    trunc(sal/30 -1) ���3
from employee;

select * from employee;
select sal/30 from employee;
-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
select ord.cusid id, round(avg(ord.price), -2) ����ֹ��ݾ�
from ord group by cusid;

select ord.cusid id, count(*) �ֹ���, sum(ord.price) �Ѿ�
from ord group by cusid;

select 
ord.cusid id, 
count(*) �ֹ���, 
round(sum(ord.price)/count(*), -2) ��ձݾ�
from ord group by ord.cusid;

-- ���� Ÿ�� �Լ�
select lower('ABCD') result from dual;
select lower('��������') ��� from dual;

-- SUBSTR(����, �ε���, ���ڼ�)
select substr('ABC', 1, 2) FROM DUAL;

-- REPLACE(����, ��������, ���ο��)
SELECT REPLACE('ABC', 'A', 'E') ��� from dual;
select replace('ABC', 'A', 'E') from dual;

-- CONCAT(����1, ����2) - ���� ����
select concat ('����', '�Դϴ�') from dual;
select concat ('hel', 'lo') from dual;

-- ���Ῥ���� -'||'
select '�ȳ�' || '�ϼ���' ��� from dual;
select 'hel' || 'lo' ��� from dual;

-- �μ��̸����� ó������ �����ؼ� 2���� ���� ���
select substr(deptname, 1, 2) �μ��� from dept;
select substr(deptname, 1, 2) �μ��� from dept;

-- ���� ���� �߱��� ���Ե� �󱸷� �����Ͽ� �˻�
select replace(bkname, '�ѱ�', '���ѹα�') from bk;
select replace(bkname, '���ѹα�', '�ѱ�') from bk;

-- ��¥ �Լ�
-- 20�� ���� ��¥ ���
select sysdate -20 from dual;
select sysdate -10 from dual;
select sysdate -5 from dual;
select sysdate -30 from dual;

-- 3���� ���� ��¥ ���
select add_months(sysdate, 3) from dual;
select add_months(sysdate, 3) from dual;
select add_months(sysdate, 3) from dual;
select add_months(sysdate, 5) from dual;

-- 3���� ���� ��¥ ���
select add_months(sysdate, -3) from dual;

-- 3���� ���� ��¥ ���
select add_months('2023-4-1', -3) from dual;
select add_months('2023-3-15', -5) from dual;

-- ���� ��¥�� �ð� ����
select sysdate, systimestamp from dual;

-- �ֹ� ��ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�.
-- 1. �ֹ���ȣ�� 6~10�� ���� �˻�
select ordid from ord where ordid >= 6 and ordid <=10;
select * from ord where ordid >= 6 and ordid <=10;

-- 2. �ֹ��Ͽ� 3���� ���ϱ�
select orderdate �ֹ�����,
add_months(orderdate, 3) ��,
add_months(orderdate, -4) ��
from ord
where ordid >= 6 and ordid <=10;

select * from ord;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
-- MONTHS_BETWEEN(���ĳ�¥, ������¥)
select ordid �ֹ���ȣ, orderdate �ֹ�����,
       trunc(months_between(sysdate, orderdate)) �Ѱ�����
from ord
where ordid = 10;

-- ������ �ֹ��Ϸκ��� 10���� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�.
select ordid    �ֹ���ȣ,
       orderdate �ֹ�����,
       orderdate + 10 Ȯ����
       from ord;

select orderdate �ֹ�����, orderdate +10 Ȯ������
from ord;

-- �ֹ� ��ȣ�� 10�� ����
select * from ord where ordid = 10;
-- -------------------------------------------------------------
-- �ڵ� Ÿ�� ��ȯ
select 1 + '2' from dual;

-- ���� Ÿ�� ��ȯ(�����ؾ���)
-- ���ڸ� ���� �������� ��ȯ
select to_number('120') ��� from dual;

-- ��¥ ����
select to_date('2022-06-30', 'yy-mm-dd') from dual;

-- ��¥ ���� ��ȯ
select to_char(sysdate, 'yyyy-mm-dd') from dual;

select to_char(sysdate, 'yyyy-mm-dd') ��¥,
to_char(sysdate, 'yyyy') ����,
to_char(sysdate, 'mm') ��,
to_char(sysdate, 'dd') ��
from dual;

-- �ð� ���� ��ȯ
select to_char(sysdate, 'hh:mi:ss pm') �ð����� from dual;

-- �ð��� ���Ķ� AM���� ǥ���ص� ���Ķ�� ��µ�
select to_char(sysdate, 'hh:mi:ss am') from dual;
-- -------------------------------------------------------------
-- �� �̸����� ���� ���� ���� ����� �ο����� ���Ͻÿ�
-- ��Ʈ, GROUP BY ��, SUBSTR(), COUNT(*)
select substr(cusname, 1, 1) ��, count(*) �ο�
from cus
group by substr(cusname, 1, 1);

select substr(cusname, 1, 1), count(*)
from cus
group by substr(cusname, 1, 1);

----------------------------------------------------------
-- function
-- NULL �� ó���ϱ�
select *from cus where phone = 'null';

-- NVL(Į����, Ư����) : Į���̸��� NULL�� ��쿡 Ư������ ���, 
-- NULL�� �ƴϸ� Į���� ���
select cusid, cusname, address, nvl(phone, '------x------') phone
from cus;

select cusid, cusname, address, nvl(phone, '010-0000-1111') phone
from cus;

-- ��ü ����, �հ�, ���, �ּҰ�
select count(phone) from cus;
select count(phone) from cus;

-- NULL�� 0���� �ٲ�
-- ���ڸ� �������� ����ϱ� �ָ��ؼ� id�� �����غ�
select count(nvl(phone, 0)) count from cus;
select sum(nvl(cusid, 0))/4 sum from cus;
select avg(nvl(cusid, 0)) avg from cus;
select min(nvl(cusid, 0)) min from cus;
select max(nvl(cusid, 0)) max from cus;

select max(nvl(phone, 0)) max from cus;

-- RANK() �Լ�
select cusid,
       price,
       rank() over(order by price desc) �޿�_rank,
       dense_rank() over(order by price desc) �޿�_dense_rank
       from ord;

select cusid, price,
rank() over(order by price desc) �޿�,
dense_rank() over(order by price) ����
from ord;

select empname, sal,
rank() over(order by sal desc) ����,
dense_rank() over(order by sal) ����
from employee;

select * from ord;


