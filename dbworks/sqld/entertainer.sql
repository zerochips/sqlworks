-- ��1 ������
-- ENTERTAINER ��ƼƼ ����
CREATE TABLE entertainer(
    name VARCHAR2(20) PRIMARY KEY,   -- �⺻Ű
    birthday VARCHAR2(10) NOT NULL,  -- yyyy-mm-dd
    agency_code VARCHAR2(5) CONSTRAINT ag_code_uq UNIQUE   -- ����Ű
);

CREATE SEQUENCE seq_enter;  -- �ڵ� ����

-- SITE ��ƼƼ ����
CREATE TABLE site(
    site VARCHAR2(20),
    name VARCHAR2(20) NOT NULL,
    CONSTRAINT site_fk FOREIGN KEY(name) REFERENCES entertainer(name) 
);

-- AGENCY ��ƼƼ ����
CREATE TABLE agency(
    agency_name VARCHAR2(50),
    agency_code VARCHAR2(5) NOT NULL,
    CONSTRAINT agency_fk FOREIGN KEY(agency_code) REFERENCES entertainer(agency_code)
);

-- entertainer data ����
INSERT INTO entertainer VALUES ('������', '1993-05-16', 'A1001');
INSERT INTO entertainer VALUES ('�����', '2000-08-09', 'B1002');
INSERT INTO entertainer VALUES ('������', '1995-12-30', 'B1004');

-- site data ����
INSERT INTO site VALUES ('�ν�Ÿ�׷�', '������');
INSERT INTO site VALUES ('���̽���', '������');
INSERT INTO site VALUES ('������', '������');
INSERT INTO site VALUES ('�ν�Ÿ�׷�', '�����');
INSERT INTO site VALUES ('Ʈ����', '�����');

-- agency data ����
INSERT INTO agency(agency_code, agency_name) VALUES ('A1001', 'EDAM�������θ�Ʈ');
INSERT INTO agency(agency_code, agency_name) VALUES ('B1002', '��Ŵ�������θ�Ʈ');

SELECT * FROM entertainer;
SELECT * FROM site;
SELECT * FROM agency;

DROP TABLE entertainer;
DROP TABLE site;
DROP TABLE agency;
DROP SEQUENCE seq_enter;

COMMIT;