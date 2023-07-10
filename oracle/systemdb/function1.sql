
SELECT * FROM emp;

-- nvl(�μ�1, �μ�2) : �μ�1�� NULL�� �ƴϸ� �μ�1�� ���, NULL�̸� �μ�2�� ���
-- �޿��� ���� ����� �˻��Ͻÿ�
SELECT * FROM emp where sal is null;

SELECT empname,
       NVL(sal, 0)
FROM emp;

-- ���� �ڷ� �����ϱ�
UPDATE emp set gender = '����'
where empno = 100 or empno = 101;

update emp set gender = '����'
where empno = 102 or empno = 103;

-- DECODE(Į����, ����, ��, ����) �Լ� -IF�Լ��� ������
-- Male, Female
SELECT empname, sal,
        DECODE(gender, '����', 'M', 'F') gender
FROM emp;

-- CASE WHEN
/*
    CASE
        WHEN ���� THEN ���1
        WHEN ���� THEN ���2
        ELSE ���3        
    END
*/
SELECT empname, sal,
        CASE
          WHEN gender='����' THEN 'M'
          ELSE 'F'
        END gender
FROM emp;

-- �޿��� 250���� �̻��̸� ���� '�븮'�� ǥ���ϰ�, 
-- �޿��� 350���� �̻��̸� '����'���� ǥ���Ͻÿ�.
SELECT empname,
    CASE
        WHEN sal >= 3500000 THEN '����'
        WHEN sal >= 2500000 THEN '�븮'
        ELSE '���'
    END �޿�����
FROM emp;

-- DECODE() , Ư������ �ƴϸ� �ȵ�. 00 �̻� 00 �̸� ����ȵ�
/*SELECT empname, 
       sal,
        DECODE(sal, 5000000, '����', 2500000, '�븮', '���') �޿�����
FROM emp;*/

COMMIT;




