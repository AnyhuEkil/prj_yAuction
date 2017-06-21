-- TEST 계정에서
-- 테이블 생성.

CREATE TABLE AUCTION_USER
(
   USER_ID         NUMBER PRIMARY KEY,
   USER_NAME       VARCHAR (20),
   EMAIL           VARCHAR (40),
   PASSWORD        VARCHAR (20),
   REGISTER_DATE   DATE,
   AUTH            NUMBER,
   USER_POINT      NUMBER
)
NOCACHE
LOGGING;


INSERT INTO AUCTION_USER VALUES (
	1,
	'우헹헹',
	'whynot@cto.com',
	'whywhy',
	sysdate,
	2,
	12000
	);
INSERT INTO AUCTION_USER VALUES (
	2,
	'관리자',
	'admin@cto.com',
	'admin',
	sysdate,
	1,
	0
	);
INSERT INTO AUCTION_USER VALUES (
	3,
	'TEST01',
	'test01@cto.com',
	'test',
	sysdate,
	3,
	0
	);
	
	commit;
	