-- bookmall �����ͺ��̽� ����
-- book(����) ���̺� ����
CREATE TABLE book(
    bookid  NUMBER PRIMARY KEY,       --å���̵� �⺻Ű
    bookname VARCHAR2(40) NOT NULL,   --å�̸�
    publisher VARCHAR2(40) NOT NULL,  --���ǻ�
    price  NUMBER NOT NULL            --å����
);

-- book �ڷ� ����
INSERT INTO book VALUES (1, '�౸�� ����', '�½�����', 7000);
INSERT INTO book VALUES (2, '�౸�ƴ� ����', '������', 13000);
INSERT INTO book VALUES (3, '�౸�� ����', '���ѹ̵��', 22000);
INSERT INTO book VALUES (4, '���� ���̺�', '���ѹ̵��', 35000);
INSERT INTO book VALUES (5, '�ǰ� ����', '�½�����', 8000);
INSERT INTO book VALUES (6, '����� ����', '�½�����', 6000);
INSERT INTO book VALUES (7, '�߱��� �߾�', '�̻�̵��', 20000);
INSERT INTO book VALUES (8, '�߱��� ��Ź��', '�̻�̵��', 20000);
INSERT INTO book VALUES (9, '�ø��� �̾߱�', '�Ｚ��', 7500);
INSERT INTO book VALUES (10, 'Olympic Champions', 'Pearson', 13000);

SELECT * FROM book;

-- ��� ������ �̸��� ������ �˻��Ͻÿ�
SELECT bookname, price FROM book;

-- ���� ���̺� �ִ� ��� ���ǻ縦 �˻��Ͻÿ�
SELECT DISTINCT publisher FROM book;

-- ������ 20000�� �̸��� ������ �˻��Ͻÿ�
SELECT * FROM book
WHERE price < 20000;

-- ������ 10000�� �̻��̰�, 20000�� ������ ������ �˻��Ͻÿ�
SELECT * FROM book
WHERE price >= 10000 AND price <= 20000;

-- BETWEEN ~ AND
SELECT * FROM book
WHERE price BETWEEN 10000 AND 20000;

-- ���ǻ簡 '�½�����' Ȥ��(�Ǵ�) '���ѹ̵��'�� ������ �˻��Ͻÿ�
-- IN('A', 'B') - A �Ǵ� B
SELECT * FROM book
WHERE publisher = '�½�����' OR publisher = '���ѹ̵��';

SELECT * FROM book
WHERE publisher IN('�½�����', '���ѹ̵��');

-- '�౸�� ����'�� �Ⱓ�� ���ǻ縦 �˻��Ͻÿ�
SELECT publisher, bookname FROM book
WHERE bookname = '�౸�� ����';

SELECT publisher, bookname FROM book
WHERE bookname LIKE '�౸�� ����';

-- ���� �̸��� '�౸'�� ���Ե� ���ǻ�� å�̸��� �˻��Ͻÿ�
SELECT publisher, bookname FROM book
WHERE bookname LIKE '%�౸%';

-- �౸�� ���� ���� �� ������ 20000�� �̻��� ������ ã���ÿ�
SELECT * FROM book
WHERE bookname LIKE '%�౸%'
AND price >= 20000;

-- ���� ������ ���� ������ �����Ͻÿ�
SELECT * FROM book
ORDER BY price DESC;

-- ���� ������ ���� ������ �����Ͻÿ�
-- ������ ������ ���ǻ縦 ������������ �����Ͻÿ�.
SELECT * FROM book
ORDER BY price DESC, publisher ASC;











COMMIT;



