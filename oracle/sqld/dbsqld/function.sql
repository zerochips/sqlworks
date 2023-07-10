-- ���� �Լ�
SELECT * FROM emp;

-- ��� ���̺��� �̸��� '��������'�� �˻��Ͻÿ�
SELECT * FROM emp
WHERE ename = '��������';

-- �޿��� 300�鸸���� �ʰ��ϴ� ����� �˻��Ͻÿ�.
SELECT * FROM emp
WHERE salary > 3000000;

-- �޿��� 300�鸸�� �̸鼭, �μ���ȣ�� 1002�� ����� �˻��Ͻÿ�.
SELECT * FROM emp
WHERE salary = 3000000
AND deptno = '1002';

-- �Ż��Ӵ��� �޿��� 320�������� �����ϼ���.
-- UPDATE ���̺��̸� SET Į�����泻�� WHERE ��
UPDATE emp SET salary = 3200000
WHERE empno = 104; -- �⺻Ű�� ������ �ش�.

SELECT * FROM emp;

-- ����� �� �ο����� ���Ͻÿ�(COUNT �Լ�)
SELECT COUNT(*) ���ο���
FROM emp;

-- ��� �޿��� ���հ踦 ���Ͻÿ�.(SUM �Լ�)
SELECT SUM(salary) �ѱ޿�
FROM emp;

-- ��� �޿��� ����� ���Ͻÿ�.(SUM / COUNT)
SELECT SUM(salary) /COUNT(*) �޿����
FROM emp;

SELECT AVG(salary) �޿����
FROM emp;

-- ���� Ÿ�� �Լ�
-- ���ڸ� �ݿø��Ѵ�. : ROUND(����, �ڸ���)
-- ����Ŭ���� �����ϴ� ���� TABLE
SELECT ROUND(3.87, 1) FROM DUAL;

-- �ڸ��� : 1 - �Ҽ�ù°�ڸ�, 0 - ����, -1 - �����ڸ�
SELECT ROUND(12351, -2) FROM DUAL;

-- ���밪 ABS(����) : ����� ����̰�, ������ ����� �ٲ�
SELECT ABS(-10), ABS(10) FROM DUAL;

-- ���ڸ� ����(����) - TRUNC(����, �ڸ���)
SELECT TRUNC(3.87, 1), TRUNC(3.87) FROM DUAL;

-- ���ڸ� ������ �����Ѵ�. - FLOOR(�Ǽ�)
SELECT FLOOR(3.87) FROM DUAL;

-- ��� �޿����� �ݿø� �Լ� ���
SELECT ename, salary,
              salary/30 �ϱ�,
              ROUND(salary/30, 1) ���1,
              ROUND(salary/30, 0) ���2,
              ROUND(salary/30, -1) ���3
FROM emp;

-- ����޿��� TRUNC() ����
SELECT ename, salary,
              salary/30 �ϱ�,
              TRUNC(salary/30, 1) ���1,
              TRUNC(salary/30, 0) ���2,
              TRUNC(salary/30, -1) ���3
FROM emp;




