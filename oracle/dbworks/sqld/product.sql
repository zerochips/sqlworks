-- PRODUCT ���̺�
CREATE TABLE product(
    product_code NUMBER PRIMARY KEY,
    product_name VARCHAR2(100) NOT NULL,
    price NUMBER NOT NULL
);

-- PRODUCT_REVIEW ���̺�
CREATE TABLE product_review(
    review_no NUMBER PRIMARY KEY,
    member_id VARCHAR2(20),
    content VARCHAR2(2000),
    regdate DATE,
    product_code NUMBER,
    FOREIGN KEY(product_code) REFERENCES product(product_code)
);

-- EVENT ���̺�
CREATE TABLE event(
    event_no NUMBER PRIMARY KEY,
    event_name VARCHAR2(50),
    start_date DATE,
    end_date DATE
);


-- product �߰�
INSERT INTO product VALUES (100001, '������ ���� ���콺', 29500);
INSERT INTO product VALUES (100002, '���� ���̹� Ű����', 32600);
INSERT INTO product VALUES (100003, '������ �г� ���þ߰� �����', 179000);

-- product_review �߰�
INSERT INTO product_review 
VALuES (1, 'sqlbaby01', '�������ε� ������ ���� �ִ� ��?', '20210320', 100001);
INSERT INTO product_review 
VALuES (2, 'sqlchild01', '�����̶� ���� ���ϳ׿�!', '20210324', 100001);
INSERT INTO product_review 
VALuES (3, 'sqladult01', '������ �� ���ϴ�.', '20210329', 100003);

-- product_review�� 100002 -> 100001�� ����
UPDATE product_review SET product_code = 100001
WHERE review_no = 2;

-- event �߰�
INSERT INTO event VALUES (301, '20% �������� ����', '20210314', '20210324');
INSERT INTO event VALUES (302, '���콺�е� ����', '20210325', '20210331');
INSERT INTO event VALUES (303, '���� ���� �佺Ƽ��', '20210414', '20210430');

SELECT * FROM product;
SELECT * FROM product_review;
SELECT * FROM event;

COMMIT;

-- EQUI JOIN : PRODUCT�� PRODUCT_REVIEW
SELECT a.product_code,
       a.product_name,
       a.price,
       b.member_id,
       b.content,
       b.regdate
FROM product a, product_review b
WHERE a.product_code = b.product_code;

-- Non EQUI JOIN : PRODUCT_REVIEW�� EVENT
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a, product_review b
WHERE b.regdate BETWEEN a.start_date AND a.end_date;

-- INNER JOIN
SELECT a.product_code,
       a.product_name,
       b.member_id,
       b.content,
       b.regdate
FROM product a INNER JOIN product_review b
    ON a.product_code = b.product_code;
    
-- LEFT OUTER JOIN : OUTER ���� ����
SELECT a.product_code,
       a.product_name,
       b.member_id,
       b.content,
       b.regdate
FROM product a LEFT JOIN product_review b
    ON a.product_code = b.product_code;
    
-- RIGHT OUTER JOIN
SELECT a.member_id,
       a.content,
       a.regdate,
       b.product_code,
       b.product_name
FROM product_review a RIGHT OUTER JOIN product b
    ON a.product_code = b.product_code;
    
-- ��Į�� ��������(Scalar Subquery)
-- PRODUCT_REVIEW ���̺� �������� �ʴ� PRODUCT_NAME ���̺� ���
SELECT re.product_code,
       (SELECT pr.product_name 
            FROM product pr
        WHERE pr.product_code = re.product_code) as product_name,
       re.member_id,
       re.content
FROM product_review re;

-- ��Į�� ���������� �̿��Ͽ� PRODUCT_REVIEW ���̺� �������� �ʴ�
-- PRODUCT_NAME, PRICE ������ ���
SELECT re.product_code,
       (SELECT pr.product_name 
            FROM product pr
        WHERE pr.product_code = re.product_code) as product_name,
        (SELECT pr.price 
            FROM product pr
        WHERE pr.product_code = re.product_code) as price,
       re.member_id,
       re.content
FROM product_review re;

-- �ζ��� ��(Inline View)
SELECT R.PRODUCT_CODE,
       P.PRODUCT_NAME,
       P.PRICE,
       R.MEMBER_ID,
       R.CONTENT
FROM PRODUCT_REVIEW R,
    (SELECT PRODUCT_CODE,
            PRODUCT_NAME,
            PRICE
      FROM  PRODUCT) P
WHERE R.PRODUCT_CODE = P.PRODUCT_CODE;

DROP TABLE product;
DROP TABLE product_review;