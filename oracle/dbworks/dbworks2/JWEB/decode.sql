-- decode() �Լ�
SELECT * FROM t_member;

SELECT count(*) ��üȸ����
FROM t_member;

SELECT count(memberId) ���̵𰳼�
FROM t_member WHERE memberId = 'garlic';

SELECT count(memberId) result
FROM t_member WHERE memberId = 'garlic2';

-- memberId�� 'garlic'�̸� 'true' �ƴϸ� 'fals' ���
SELECT memberId, passwd, 
       decode(memberId, 'garlic', 'true', 'false') as result
FROM t_member;

-- memberId�� 'garlic2'�� ������ 1�̸� 'true' �ƴϸ� 'false' ���
SELECT decode(count(*), 1, 'true', 'false') as result
FROM t_member WHERE memberId = 'garlic2';
