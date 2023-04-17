-- ���� Ÿ�� �Լ�
SELECT LOWER('ABCD') FROM DUAL;  -- LOWER() - �ҹ��ڷ� �ٲٴ� �Լ�
SELECT UPPER('abcd') FROM DUAL;  -- UPPER() - �빮�ڷ� �ٲٴ� �Լ�
SELECT INITCAP('hello korea') FROM DUAL; -- INITCAP() - ù���ڸ� �빮�ڷ� �ٲ�

-- ���ڿ��߿� �Ϻθ� ����(����)
-- SUBSTR(����, ����, ����)
SELECT SUBSTR('ABCD', 2, 3) FROM DUAL;

SELECT SUBSTR(deptname, 1, 2) ����
FROM dept;

-- Ư�� ���ڿ� ã�� �ٲ� - REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('AB', 'A', 'D') FROM DUAL;

-- LPAD(���ڿ�, �ѹ��ڰ���, Ư������) : ���ʺ��� Ư�����ڷ� ä��
-- RPAD(���ڿ�, �ѹ��ڰ���, Ư������) : �����ʺ��� Ư�����ڷ� ä��
SELECT LPAD('sky123', 10, '*') FROM DUAL;
SELECT RPAD('sky123', 10, '*') FROM DUAL;

-- ���ڿ� ����(���ϱ�) - CONCAT(����1, ����2) -> ����1����2
SELECT CONCAT('sky', '1234') FROM DUAL;

-- ���ڿ� ����(���ϱ�) - ������ ��ȣ '||'
SELECT 'sky' || '1234' FROM DUAL;

-- ���ڿ��� ����
SELECT LENGTH('cloud') ���ڼ�, LENGTHB('cloud') ����Ʈ��
FROM DUAL;

-- ����Ʈ �� : ����, ���� - 1BYTE, �ѱ� - 3BYTE
SELECT LENGTH('����') ���ڼ�, LENGTHB('����') ����Ʈ��
FROM DUAL;

-- ��¥�� ����
-- DATE + NUMBER : ��¥���� �ϼ�(day)�� ����
-- DATE - NUMBER : ��¥���� �ϼ�(day)�� ����
SELECT SYSDATE, SYSDATE + 3, SYSDATE - 3 FROM DUAL;

-- Ư���� ��¥���� ����
-- ��¥ ��ȯ �Լ� - To_DATE(��¥���ڿ�) : ���ڸ� ��¥�� ��ȯ��
SELECT TO_DATE('2023/4/1') + 10 ���1, 
       TO_DATE('2023/4/1') - 10 ���2
FROM DUAL;

-- ��¥ �Լ�
-- ADD_MONTHS() : �������� ���ϰ�, ����
SELECT 
    ADD_MONTHS(SYSDATE, 2) ���ϱ�_���,
    ADD_MONTHS(SYSDATE, -2) ����_���
FROM DUAL;

-- MONTHS_BETWEEN() : �� ��¥ ������ �������� ���
-- �Ի��Ͽ��� ����ϱ����� ������ ���
SELECT 
     ROUND(MONTHS_BETWEEN(TO_DATE('2022-11-30'), 
            TO_DATE('2022-1-1')), 0) �Ѱ�����
FROM DUAL;

-- ���� ��ȯ �Լ�
SELECT 1 + 2 FROM DUAL;
SELECT 1 + '2' FROM DUAL;  -- �ڵ� Ÿ��(��) ��ȯ
SELECT TO_NUMBER('300') FROM DUAL; -- ���� Ÿ�� ��ȯ�Լ�

-- ��¥ ���� ��ȯ(��¥�� ���ڿ��� ��ȯ)
SELECT 
    TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥,
    TO_CHAR(SYSDATE, 'YYYY') ����,
    TO_CHAR(SYSDATE, 'MM') ��,
    TO_CHAR(SYSDATE, 'DD') ��
FROM DUAL;

-- �ð� ���� ��ȯ(�ð��� ���ڿ��� ��ȯ)
SELECT 
    TO_CHAR(SYSDATE, 'HH:MI:SS AM') �ð�,
    TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS PM') ��¥�ͽð�
FROM DUAL;






