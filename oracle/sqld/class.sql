-- �а� ���̺�
CREATE TABLE class(
    --�÷��̸� �ڷ���
    cname VARCHAR2(30),   --�а���(�⺻Ű)
    ctel  VARCHAR2(20),   --�а� ��ȭ��ȣ
    location VARCHAR2(20),  --���繫��
    PRIMARY KEY(cname)
);

-- �а� �ڷ� ����
INSERT INTO class VALUES ('����Ʈ�����а�', '02-1234-1234', 'B�� 3��');
INSERT INTO class VALUES ('ȭ�а��а�', '02-1234-4567', 'B�� 4��');
INSERT INTO class VALUES ('�������ڰ��а�', '02-1234-5678', 'B�� 5��');
--INSERT INTO class VALUES ('ȭ�а��а�', '02-1111-2222', 'B�� 6��'); --���Ἲ ���� ����(�⺻Ű �ߺ�)

-- �а� �ڷ� �˻�
SELECT * FROM class;

-- '�������ڰ��а�'�� ��ȭ��ȣ�� �˻��Ͻÿ�
SELECT cname AS �а��̸�, ctel AS �а���ȭ��ȣ FROM class WHERE cname = '�������ڰ��а�';

