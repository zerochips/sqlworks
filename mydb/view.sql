-- ��ø ���� - ��ȣ���� ���� ������, FROM�� - �ζ��κ�
SELECT ROWNUM, NAME, SCORE FROM
(SELECT ROWNUM, NAME, SCORE
FROM EX_SCORE
ORDER BY score DESC)
WHERE ROWNUM <= 5;

-- JOB_INFO ���̺�
CREATE TABLE JOB_INFO(
    JOB_ID      VARCHAR(10),
    MIN_SALARY  NUMBER,
    MAX_SALATY  NUMBER
);

INSERT INTO JOB_INFO VALUES ('AD_PRES', 20080, 40000);
INSERT INTO JOB_INFO VALUES ('AD_VP', 15000, 30000);
INSERT INTO JOB_INFO VALUES ('AD_ASST', 3000, 6000);
INSERT INTO JOB_INFO VALUES ('FI_MGR', 8200, 16000);
INSERT INTO JOB_INFO VALUES ('FI_ACCOUNT', 4200, 9000);
INSERT INTO JOB_INFO VALUES ('AC_MGR', 8200, 16000);
INSERT INTO JOB_INFO VALUES ('AC_ACCOUNT', 4200, 9000);

COMMIT;

-- ���� �Լ� -COUNT(), SUM(), AVG()
SELECT COUNT(*) �Ѱ���, 
       ROUND(AVG(MIN_SALARY), -1) �����޿����,
       AVG(MAX_SALATY) �ִ�޿����
FROM JOB_INFO;

-- ���� �޿��� 5000 �޷� �̻��� ���� �̸��� �˻��Ͻÿ�
-- �빮�� ��� min_sal
SELECT JOB_ID, MIN_SALARY min_sal
FROM JOB_INFO
WHERE MIN_SALARY > 5000;

-- ���� �޿��� 5000 �޷� �̻��� ���� �̸��� �˻��Ͻÿ�
-- �ҹ��� ��� "min_sal"
SELECT JOB_ID, MIN_SALARY "min_sal"
FROM JOB_INFO
WHERE MIN_SALARY > 5000;

-- ���� �޿��� 5000 �޷� �̻��� ���� �̸��� �˻��Ͻÿ�
-- ���� ������ SELECT ���̹Ƿ� ��Ī ��� �Ұ�
SELECT JOB_ID, MIN_SALARY min_sal
FROM JOB_INFO
WHERE min_sal > 5000;

-- ���� �޿��� 5000 �޷� �̻��� ���� ���̵� �˻��� �並 �ۼ��Ͻÿ�
-- CREATE VIEW ���̸� AS ����
CREATE VIEW V_JOB_INFO
AS SELECT *
   FROM JOB_INFO
   WHERE MIN_SALARY > 5000;
   
SELECT * FROM V_JOB_INFO;

-- �ְ� �޿��� ���� �޿��� ���� 8000 �̻��� �������̵��� ���� �˻��Ͻÿ�
SELECT COUNT(*)
FROM V_JOB_INFO
WHERE MAX_SALATY - MIN_SALARY > 8000;

-- �ְ� �޿��� ���� �޿��� ���� 8000 �̻��� �������̵� �˻��Ͻÿ�
SELECT JOB_ID
FROM V_JOB_INFO
WHERE MAX_SALATY - MIN_SALARY > 8000;

-- ���� ���̵��� �̸��� AD�� �����ϴ� �ڷḦ �˻��Ͻÿ�
SELECT JOB_ID
FROM V_JOB_INFO
WHERE JOB_ID LIKE 'AD%';

-- �� ����
DROP VIEW V_JOB_INFO;
