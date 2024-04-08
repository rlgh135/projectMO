create database jspteam;
use jspteam;
CREATE TABLE user (
  userid varchar(300) PRIMARY KEY,
  userpw varchar(300) NOT NULL,
  username varchar(300) NOT NULL,
  useraddr varchar(1000),
  addrdetail varchar(1000) default '집',
  userhobby varchar(1000),
  gender varchar(300) default '남자',
  userpoint int default 0,
  warningcnt int default 0
);
drop table user;
select * from user;
CREATE TABLE `lpost` (
  lpostnum bigint PRIMARY KEY AUTO_INCREMENT,
  `lpostcategory` varchar(1000),
  `userid` varchar(300),
  `lposttitle` varchar(300),
  `lpostcontents` text,
  `lpostregdate` datetime default now(),
  `lpostlikecnt` int default 0,
  lpostaddr varchar(1000)
);
drop table lpost;
select * from lpost limit 0, 3000;
CREATE TABLE `lfile` (
  `lfilenum` bigint PRIMARY KEY AUTO_INCREMENT,
  `lpostnum` bigint,
  `lorgname` varchar(1000),
  `lsysname` varchar(1000)
);

CREATE TABLE `lreply` (
  `lreplynum` bigint PRIMARY KEY AUTO_INCREMENT,
  `lpostnum` bigint,
  `userid` varchar(300),
  `lreplycontents` text,
  `lpostregdate` datetime
);

CREATE TABLE `lrfile` (
  `lrfilenum` bigint PRIMARY KEY AUTO_INCREMENT,
  `lreplynum` bigint,
  `lrorgname` varchar(1000),
  `lrsysname` varchar(1000)
);

/*그룹네임 추가*/
CREATE TABLE `group` (
  `groupnum` bigint PRIMARY KEY AUTO_INCREMENT,
  `groupname` varchar(300),
  `groupaddr` varchar(1000),
  `groupcategory` varchar(1000),
  `groupmaster` varchar(300),
  `groupregdate` datetime default now(),
  `groupcontents` text,
  `grouplikecnt` int default 0
);
select * from `group` limit 0, 3000;
select * from `group` where groupnum=1;
select count(*) from `group`;
drop table `group`;
create table board_user(
	boardnum bigint,
    userid varchar(300)
);
create table group_user(
	groupnum bigint,
    userid varchar(300)
);
insert into group_user(groupnum, userid) value(1, 'abc5');

CREATE TABLE `groupimg` (
  `imgnum` bigint PRIMARY KEY AUTO_INCREMENT,
  `groupnum` bigint,
  `imgorgname` varchar(1000),
  `imgsysname` varchar(1000)
);

CREATE TABLE `gpost` (
  `gpostnum` bigint PRIMARY KEY AUTO_INCREMENT,
  `groupnum` bigint,
  `gposttitle` varchar(1000),
  `userid` varchar(300),
  `gpostcontents` text,
  `gpostregdate` datetime default now()
);
select * from gpost;
select * from gpost where gpostcontents like "%내용%";
select count(*) from gpost where groupnum = 1;
select count(*) from gpost where gpostcontents = "%내용%";
select count(*) from gpost where groupnum = 1 and gpostcontents like "%1%";
CREATE TABLE `gfile` (
  `gfilenum` bigint PRIMARY KEY AUTO_INCREMENT,
  `gpostnum` bigint,
  `gfileorgname` varchar(1000),
  `gfilesysname` varchar(1000)
);

CREATE TABLE `gpreply` (
  `gprnum` bigint PRIMARY KEY AUTO_INCREMENT,
  `userid` varchar(300),
  `gpostnum` bigint,
  `gprcontents` text,
  `gprregdate` datetime default now()
);
select * from gpreply;

CREATE TABLE `gprfile` (
  `gprfilenum` bigint PRIMARY KEY AUTO_INCREMENT,
  `gprnum` bigint,
  `gprfileorgname` varchar(1000),
  `gprfilesysname` varchar(1000)
);

CREATE TABLE `warning` (
  `warningnum` int PRIMARY KEY AUTO_INCREMENT,
  `reason` text
);

CREATE TABLE `userwarning` (
  `warningnum` int,
  `userid` varchar(300)
);


