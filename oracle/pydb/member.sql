CREATE TABLE member(
	memberid	TEXT PRIMARY KEY,
	passwd		TEXT NOT NULL,
	name		TEXT NOT NULL,
	gender		TEXT,
	regdate		DATETIME DEFAULT (datetime('now','localtime'))
);

INSERT INTO member (memberid, passwd, name, gender) 
VALUES ('colud123','m123456#','장그래','남');

INSERT INTO member (memberid, passwd, name, gender) 
VALUES ('colud456','m123456#','오대리','여');

DELETE FROM member;

SELECT * FROM member;

DELETE FROM board WHERE bno = 3;