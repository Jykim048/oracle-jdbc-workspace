CREATE TABLE MEMBER(
    ID VARCHAR2(100) PRIMARY KEY,
    PASSWORD VARCHAR2(150) NOT NULL,
    NAME VARCHAR2(50) NOT NULL,
    ADDRESS VARCHAR2(200) NOT NULL
);
SELECT * FROM MEMBER;


CREATE SEQUENCE SEQ_BOARD;
CREATE TABLE BOARD(
    NO NUMBER,
    TITLE VARCHAR2(200) NOT NULL,
    CONTENT VARCHAR2(2000) NOT NULL,
    WRITER VARCHAR2(50) NOT NULL,
    REGDATE DATE DEFAULT SYSDATE
);

ALTER TABLE board ADD url VARCHAR(200);
SELECT * FROM BOARD;





create table company (
	vcode varchar2(10) primary key,
	vendor  varchar2(20) not null
);
insert  into company values('10', '삼성');
insert  into company values('20', '애플');
create table Phone(
	num varchar2(10) primary key,
	model varchar2(20) not null,
	price number not null,
	vcode varchar2(10),
   constraint fk_vcode foreign key(vcode) references company(vcode)
);
insert into Phone values('ZF01','Galaxy Z Flip5', 1369000,'10');
insert into Phone values('S918N','Galaxy S23 Ultra', 1479000,'10');
insert into Phone values('IPO02','iPhone 14',1250000,'20');
create table userinfo (
	id varchar(20) primary key,
	pw varchar(20) not null
);
insert into userinfo values('member','member');
insert into userinfo values('admin','admin');
commit;