-- cus table
create table cus(
    cusid   number primary key,
    cusname varchar2(20) not null,
    address varchar2(60) not null,
    phone   varchar2(30) not null
);

-- ���̺� ����
alter table cus rename column cusname to cname;
alter table cus rename column cname to cusname;

alter table cus modify phone varchar2(30) null;

DESC cus;

-- customer �ڷ� �߰�
insert into cus (cusid, cusname, address, phone) values (1, '������', '���� ��ü����', '010-0123-4567');
insert into cus values (2, '�迬��', '���ѹα� ����', '010-1234-5678');
insert into cus values (3, '�Ȼ�', '���ѹα� ��⵵ �Ȼ�', '010-7890-4561');
insert into cus values (4, '������', '�̱� �����', 'null');
insert into cus values (5, '�����', '���� ��Ʈ��', 'null');
insert into cus values (6, '���ϴ�', '���ѹα� ������', '010-7777-8888');
insert into cus values (7, '�ڴ��', '���ѹα� ���ν�', '010-4444-3333');
insert into cus values (8, '�����','���ѹα� �����', '010-5555-6666');

update cus set phone = ''
where phone = 'null';

select * from cus;

-- ��ȭ��ȣ�� ���� ���� ã���ÿ�
select * from cus
where phone = 'null';

/* null ������ table���� �ȵǾ� ������
select * from cus
where phone is null;
*/

-- ������ ��ȭ��ȣ ����
select * from cus;
update cus set phone = '010-1111-2222'
where cusid = 1;

-- �ּҰ� ���ѹα��� ���� �˻��Ͻÿ�
select * from cus
where address like '%���ѹα�%';

-- ���� �̸������� 
select * from cus
order by cusname;


COMMIT;