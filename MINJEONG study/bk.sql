-- ---------------------------����---------------------------------
-- book ���̺�(������ȣ, �����̸�, ���ǻ�, ��������)
create table bk(
     bkno           number primary key,
     bkname         varchar2(50) not null,
     bkpublisher    varchar2(50) not null,
     bkprice        number not null
);

--�̸� ����
alter table bk rename column bkpublisher to bkp;
alter table bk rename column bkp to bk���ǻ�;
alter table bk rename column bk���ǻ� to bkp;

-- �ڷ��� ���� 
alter table bk modify bkname varchar2(60);
alter table bk modify bkname varchar2(50);

-- ���� Ȯ��
select * from bk;

-- book �ڷ� �Է�
insert into bk (bkno, bkname, bkp, bkprice) values (100, 'ù�ڵ�', '���ǻ�', 12000);
insert into bk values (101, '��̵� ���� �����ϴ� �ڵ�', '�ڵ�����', 15000);
insert into bk values (102, '�ƶ� �����ڵ�', '����', 14000);
insert into bk values (103, '�ѱ��ε��� ����', '���λ�ȸ', 25000);
insert into bk values (104, '�����ε��� ����', '����', 30000);

insert into bk values (105, '�ѱ��ε��� ����', '���λ�ȸ', 25000);
insert into bk values (106, '�ѱ��ε��� ����', '���λ�ȸ', 25000);

-- book �ڷ� �˻�
select * from bk;

-- ��� ������ �̸��� ������ �˻��Ͻÿ�
select bkname �����̸�, bkprice �����ݾ�
from bk;

-- ���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�(�ߺ� ���� DISTINCT)
select distinct bkp from bk;

-- Ư���� ����(WHERE ��)
-- ������ 15000�� �̸��� ������ �˻��Ͻÿ�
select * from bk
where bkprice < 15000
order by bkprice;

-- ������ 10000�� �̻� 20000�� ������ ������ �˻��Ͻÿ�(BETWEEN ~AND)
select * from bk
where bkprice between 10000 and 20000;

-- OR ����, IN('a', 'b')
-- ���ǻ簡 '���ǻ�' Ȥ�� '����'�� ������ �˻��Ͻÿ�
select * from bk;

select * from bk
where bkp = '���ǻ�'
or bkp = '����';

select * from bk
where bkp in ('���ǻ�', '����');
select * from bk;

-- 'ù�ڵ�'�� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�
select bkname ������, bkp ���ǻ�
from bk
where bkname = 'ù�ڵ�';

-- ������ ��� = ��� LIKE�� ����ؼ� ���� ��� �� ����� �����ϴ�
-- ���� �̸��� '��'�� ���Ե� ���ǻ縦 �˻��Ͻÿ�
select * from bk
where bkname like '%��%';

-- �ڵ��� ���� ���� �� ������ 15000�� �̻��� ������ ã���ÿ�
select * from bk;

select * from bk
where bkprice >= 15000
and bkname like '%�ڵ�%';

-- ������ �� ���� ���Ͻÿ�
select count(bkno) �����Ѽ��� from bk;

-- ���� �� �ְ� ������ �˻��Ͻÿ�
select max(bkprice) �ְ�ݾ�
from bk;

-- ���� ����(��ø����, sub query)
-- ���� ������ ���� ������ �����Ͻÿ�
-- ������ ������ ���ǻ縦 �������� �����ϱ�
select * from bk
order by bkprice desc, bkp asc;

commit;






