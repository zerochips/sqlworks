--은행 계정 테이블 생성
CREATE TABLE account(
    ano VARCHAR2(10) PRIMARY KEY,
    owner VARCHAR2(20) NOT NULL,
    balance NUMBER(10) NOT NULL
);

INSERT INTO account VALUES ('1111', '김', 10000);

update account set owner = '김민정' where ano ='1111';
update account set owner = '이순신' where ano = '2222';
--delete account where owner ='1111';
COMMIT;

SELECT * FROM account;