-- jweb function
SELECT bookid, REPLACE(bookname, '�߱�', '��') bookname
FROM book;

-- �½��������� ������ ������ ����� ������ ���� ��, ����Ʈ ���� �˻�
SELECT bookname ����,
       LENGTH(bookname) ���ڼ�,
       LENGTHB(bookname) ����Ʈ��
FROM book
WHERE publisher = '�½�����';

SELECT TO_NUMBER('123') 
FROM DUAL;

-- ��¥ ���� ��ȯ
SELECT SYSDATE
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') ��¥,
       TO_CHAR(SYSDATE, 'YYYY') �⵵,
       TO_CHAR(SYSDATE, 'MM') ��,
       TO_CHAR(SYSDATE, 'DD') ��
FROM DUAL;







