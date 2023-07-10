-- ������ ���� --
CREATE TABLE TAB1(
    C1 VARCHAR2(1),
    C2 VARCHAR2(1),
    C3 VARCHAR2(1)
);

INSERT INTO TAB1 VALUES('1', NULL, 'A');
INSERT INTO TAB1 VALUES(2, 1, 'B');
INSERT INTO TAB1 VALUES(3, 1, 'C');
INSERT INTO TAB1 VALUES(4, 2, 'D');

1 NULL	A
2 1 B
4 2 D
3 1 C

SELECT * 
    FROM TAB1
   START WITH C2 IS NULL
   CONNECT BY PRIOR C1 = C2
   ORDER SIBLINGS BY C3 DESC;

/* ����2 */
CREATE TABLE ���(
    �����ȣ VARCHAR(3),
    ����� VARCHAR(10),
    �Ի����� VARCHAR(10),
    �Ŵ��������ȣ VARCHAR(3),
    CONSTRAINT ���_PK PRIMARY KEY (�����ȣ),
    CONSTRAINT ���_FK FOREIGN KEY (�Ŵ��������ȣ)
    REFERENCES ���(�����ȣ)
);

INSERT INTO ��� VALUES ('001', 'ȫ�浿', '2012-01-01', NULL);
INSERT INTO ��� VALUES ('002', '������', '2012-01-01', '001');
INSERT INTO ��� VALUES ('003', '�̼���', '2013-01-01', '001');
INSERT INTO ��� VALUES ('004', '�̹���', '2013-01-01', '001');
INSERT INTO ��� VALUES ('005', '�̺���', '2013-01-01', NULL);
INSERT INTO ��� VALUES ('006', '�ȼ���', '2014-01-01', '005');
INSERT INTO ��� VALUES ('007', '�̼���', '2014-01-01', '005');
INSERT INTO ��� VALUES ('008', '�躴��', '2014-01-01', '005');

SELECT *
    FROM ���
    START WITH �Ŵ��������ȣ IS NULL
    CONNECT BY PRIOR �����ȣ = �Ŵ��������ȣ
    AND �Ի����� BETWEEN '2013-01-01' AND '2013-12-31'
    ORDER SIBLINGS BY �����ȣ;
    

ROLLBACK;
DELETE FROM ���;

/* ����3 */
CREATE TABLE �μ�(
    �μ��ڵ� VARCHAR2(3),
    �μ���  VARCHAR2(20),
    �����μ��ڵ� VARCHAR2(3),
    CONSTRAINT �μ�_PK PRIMARY KEY (�μ��ڵ�),
    CONSTRAINT �μ�_FK FOREIGN KEY (�����μ��ڵ�) REFERENCES �μ�(�μ��ڵ�)
);

INSERT INTO �μ� VALUES ('100', '�ƽþƺ�', NULL);
INSERT INTO �μ� VALUES ('110', '�ѱ�����', 100);
INSERT INTO �μ� VALUES ('111', '��������', 110);
INSERT INTO �μ� VALUES ('112', '�λ�����', 110);
INSERT INTO �μ� VALUES ('120', '�Ϻ�����', 100);
INSERT INTO �μ� VALUES ('121', '��������', 120);
INSERT INTO �μ� VALUES ('122', '����ī����', 120);
INSERT INTO �μ� VALUES ('130', '�߱�����', 100);
INSERT INTO �μ� VALUES ('131', '����¡����', 130);
INSERT INTO �μ� VALUES ('132', '����������', 130);
INSERT INTO �μ� VALUES ('200', '����������', NULL);
INSERT INTO �μ� VALUES ('210', '����������', 200);
INSERT INTO �μ� VALUES ('211', '���帮������', 210);
INSERT INTO �μ� VALUES ('212', '�׶󳪴�����', 210);




SELECT �μ��ڵ�, �μ���, �����μ��ڵ�, LEVEL AS LVL
    FROM �μ�
    START WITH �μ��ڵ� = '120'
    CONNECT BY PRIOR �����μ��ڵ� = �μ��ڵ�
UNION  
SELECT �μ��ڵ�, �μ���, �����μ��ڵ�, LEVEL AS LVL
    FROM �μ�
    START WITH �μ��ڵ� = '120'
    CONNECT BY PRIOR �μ��ڵ� = �����μ��ڵ�;









   
   
   
    