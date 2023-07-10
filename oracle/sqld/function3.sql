-- NULL �Լ� - NVL(�μ�1, �μ�2)
-- �μ�1�� NULL�� �ƴϸ� �μ�1 ��µǰ�, �μ�1�� NULL�̸� �μ�2�� ��µ�
CREATE TABLE test(
    id  VARCHAR2(3), -- Į���� �ڷ���
    cnt NUMBER(2)    
);

-- �ڷ� ����
INSERT INTO test VALUES ('��', 5);
INSERT INTO test VALUES ('��', NULL);
INSERT INTO test VALUES ('��', 5);
INSERT INTO test VALUES ('��', NULL);
INSERT INTO test VALUES ('��', 10);

SELECT id, cnt, NVL(cnt, 0) 
FROM test;

SELECT 
    COUNT(*) ��ü_����, 
    COUNT(cnt) cntĮ��_����, 
    SUM(cnt) cntĮ��_�հ�
FROM test;

SELECT 
    COUNT(*) ��ü_����, 
    COUNT(NVL(cnt, 0)) cntĮ��_����, 
    SUM(cnt) cntĮ��_�հ�
FROM test;

-- ���� �� ������� �ٸ� ���� ������
SELECT COUNT(NVL(CNT, 0)) FROM test;    --5
SELECT SUM(NVL(CNT, 0)) / 4 FROM test;   --5
SELECT AVG(NVL(CNT, 0)) FROM test;     --4
SELECT MIN(NVL(CNT, 5)) FROM test;     --5
