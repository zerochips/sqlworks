
-- ��� ���� �̸��� �ּҸ� �˻��Ͻÿ�.
SELECT name, address
FROM customer;

-- ��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�.
SELECT name, address, phone
FROM customer;

-- �ּҰ� '���ѹα�'�� ���� �˻��Ͻÿ�
SELECT * 
FROM customer 
WHERE address LIKE '%���ѹα�%';

-- ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
SELECT * 
FROM customer 
WHERE name IN ('�迬��', '�Ȼ�');

SELECT * 
FROM customer 
WHERE name = '�迬��' OR name = '�Ȼ�';

-- �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�.
SELECT * 
FROM customer 
WHERE address NOT LIKE '%���ѹα�%';

-- ��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
SELECT * 
FROM customer 
WHERE phone is NULL;

-- ���� �̸������� �����Ͻÿ�.
SELECT * 
FROM customer
ORDER BY name;

-- ���� �� �ο����� ���Ͻÿ�
SELECT COUNT(*) AS �Ѱ���
FROM customer;











