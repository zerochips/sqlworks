SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- ���ǻ簡 '�½�����'�� ������ �˻��Ͻÿ�
SELECT publisher 
FROM book 
WHERE publisher = '�½�����'
OR publisher = '���ѹ̵��';

SELECT publisher 
FROM book 
WHERE publisher LIKE '%��%'
OR publisher LIKE '%����%';

SELECT * FROM book 
WHERE publisher IN ('�½�����', '���ѹ̵��');

SELECT * FROM book 
WHERE publisher NOT IN ('�½�����', '���ѹ̵��');

-- ���� �̸��� '�౸'�� ���Ե� ���ǻ縦 �˻��Ͻÿ�.
SELECT bookname 
FROM book 
WHERE bookname LIKE '%�౸%';

-- '�౸'�� ���� ���� �� ������ 20000�� �̻��� ������ �˻��Ͻÿ�
select bookname, price
from book
where bookname like '%�౸%'
and price >= 20000;

-- ������ �̸������� �˻��Ͻÿ�(�������� ����)
select * from book order by bookname;

-- ������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �����Ͻÿ�.
select * from book
order by price desc, bookname;

-- �ڷ� �߰� (10, 'ȥ�ڰ����ϴ� �ڹ�', '�Ѻ��̵��', 24000)
insert into book values (11, 'ȥ�ڰ����ϴ� �ڹ�', '�Ѻ��̵��', 24000);

-- bookname�� 'ȥ�� �����ϴ� ���̽�'���� �����Ͻÿ�
update book set bookname = 'ȥ�� �����ϴ� ���̽�'
where bookid = 11;

rollback;


