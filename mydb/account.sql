--���� ���� ���̺� ����
CREATE TABLE account(
    ano VARCHAR2(10) PRIMARY KEY,
    owner VARCHAR2(20) NOT NULL,
    balance NUMBER(10) NOT NULL
);

INSERT INTO account VALUES ('1111', '��', 10000);

update account set owner = '�����' where ano ='1111';
update account set owner = '�̼���' where ano = '2222';
--delete account where owner ='1111';
COMMIT;

SELECT * FROM account;