DROP TABLE IF EXISTS auth_mgr;
DROP TABLE IF EXISTS admin;
DROP TABLE IF EXISTS branch_master;
DROP TABLE IF EXISTS board;
DROP TABLE IF EXISTS reply;
DROP TABLE IF EXISTS board_mgr;
DROP TABLE IF EXISTS menu_mgr;
DROP TABLE IF EXISTS branch_file;
DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS menu;

-- 관리자 테이블
CREATE TABLE `admin` (
	`adno`    INT(11)      NULL     COMMENT 'adno', -- adno
	`admail`  VARCHAR(30)  NOT NULL COMMENT 'admail', -- admail
	`adpwd`   VARCHAR(200) NOT NULL COMMENT 'adpwd', -- adpwd
	`adname`  VARCHAR(30)  NOT NULL COMMENT 'adname', -- adname
	`addate`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'addate', -- addate
	`adgrade` VARCHAR(20)  NOT NULL DEFAULT 'admin' COMMENT 'adgrade' -- adgrade
)
COMMENT 'admin';

-- 점주 테이블
CREATE TABLE `branch_master` (
	`bmno`    INT(11)      NULL     COMMENT 'bmno', -- bmno
	`bmemail` VARCHAR(40)  NOT NULL COMMENT 'bmemail', -- bmemail
	`bmpwd`   VARCHAR(100) NOT NULL COMMENT 'bmpwd', -- bmpwd
	`bmname`  VARCHAR(40)  NOT NULL COMMENT 'bmname', -- bmname
	`bmtel`   VARCHAR(30)  NOT NULL COMMENT 'bmtel', -- bmtel
	`bmdate`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'bmdate', -- bmdate
	`bmfbid`  VARCHAR(40)  NULL     COMMENT 'bmfbid', -- bmfbid
	`bmgrade` VARCHAR(20)  NULL     DEFAULT 'normal' COMMENT 'bmgrade' -- bmgrade
)
COMMENT 'branch_master';

-- 지점 테이블
CREATE TABLE `branch` (
	`bno`    INT(11)      NULL     COMMENT 'bno', -- bno
	`bmno`   INT(11)      NULL     COMMENT 'bmno', -- bmno
	`bname`  VARCHAR(30)  NOT NULL COMMENT 'bname', -- bname
	`baddr`  VARCHAR(50)  NOT NULL COMMENT 'baddr', -- baddr
	`btel`   VARCHAR(30)  NOT NULL COMMENT 'btel', -- btel
	`bintro` VARCHAR(200) NOT NULL COMMENT 'bintro', -- bintro
	`bdate`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'bdate', -- bdate
	`barea`  VARCHAR(50)  NULL     COMMENT 'barea' -- barea
)
COMMENT 'branch';

-- 게시판 관리 테이블
CREATE TABLE `board_mgr` (
	`bdmno`       INT(11)     NULL     COMMENT 'bdmno', -- bdmno
	`adno`        INT(11)     NULL     COMMENT 'adno', -- adno
	`bmno`        INT(11)     NULL     COMMENT 'bmno', -- bmno
	`bdmanager`   VARCHAR(40) NOT NULL COMMENT 'bdmgr', -- bdmgr
	`bdtype`      VARCHAR(40) NOT NULL COMMENT 'bdtype', -- bdtype
	`create_date` DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'create_date', -- create_date
	`del_chk`     VARCHAR(10) NOT NULL DEFAULT 'N' COMMENT 'del_chk' -- del_chk
)
COMMENT 'board_mgr';

-- 게시판 테이블
CREATE TABLE `board` (
	`bdno`      INT(11)     NULL     COMMENT 'bdno', -- bdno
	`bmno`      INT(11)     NULL     COMMENT 'bmno', -- bmno
	`bdtype`    VARCHAR(50) NOT NULL COMMENT 'bdtype', -- bdtype
	`bdwriter`  VARCHAR(50) NOT NULL COMMENT 'bdwriter', -- bdwriter
	`bdsubject` VARCHAR(50) NOT NULL COMMENT 'bdsubject', -- bdsubject
	`bdcontent` VARCHAR(50) NOT NULL COMMENT 'bdcontent', -- bdcontent
	`bddate`    DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'bddate', -- bddate
	`bdudate`   DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'bdudate', -- bdudate
	`bdhit`     INT(11)     NULL     DEFAULT 0 COMMENT 'bdhit' -- bdhit
)
COMMENT 'board';

-- 댓글 테이블
CREATE TABLE `reply` (
	`rno`      INT(11)     NULL     COMMENT 'rno', -- rno
	`bdno`     INT(11)     NULL     COMMENT 'bdno', -- bdno
	`rcontent` INT(11)     NULL     COMMENT 'rcontent', -- rcontent
	`replyer`  VARCHAR(40) NOT NULL COMMENT 'replyer', -- replyer
	`rdate`    DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'rdate', -- rdate
	`rudate`   DATETIME    NULL     DEFAULT CURRENT_TIMESTAMP COMMENT 'rudate' -- rudate
)
COMMENT 'reply';

-- 파일 관리 테이블
CREATE TABLE `branch_file` (
	`fmno`           INT(11)      NULL     COMMENT 'fmno', -- fmno
	`bno`           INT(11)      NULL     COMMENT 'bno', -- bno
	`ori_file_name`  VARCHAR(260) NOT NULL COMMENT 'ori_file_name', -- ori_file_name
	`save_file_name` VARCHAR(36)  NOT NULL COMMENT 'save_file_name', -- save_file_name
	`fm_date_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fm_date_time', -- fm_date_time
	`fm_udate_time`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fm_udate_time', -- fm_udate_time
	`save_user_name` VARCHAR(30)  NOT NULL COMMENT 'save_user_name', -- save_user_name
	`del_chk`        VARCHAR(10)  NOT NULL DEFAULT 'N' COMMENT 'del_chk' -- del_chk
)
COMMENT 'branch_file';

-- 메뉴 관리 테이블
CREATE TABLE `menu_mgr` (
	`mmno`  INT(11)     NULL COMMENT 'mmno', -- mmno
	`adno` INT(11)     NULL COMMENT 'adno', -- adno
	`mtype` VARCHAR(20) NULL COMMENT 'mtype', -- mtype
	`mmgr` VARCHAR(40) NULL COMMENT 'mmgr', -- mmgr
	`mdate` DATETIME    NULL COMMENT 'mdate', -- mdate
	`mudate` DATETIME    NULL COMMENT 'mudate', -- mudate
	`del_chk` VARCHAR(10) NULL COMMENT 'del_chk' -- del_chk
)
COMMENT 'menu_mgr';

-- 메뉴 테이블
CREATE TABLE `menu` (
	`mno`      INT(11)      NULL     COMMENT 'mno', -- mno
	`mmno`      INT(11)      NULL     COMMENT 'mmno', -- mmno
	`bno`      INT(11)      NULL     COMMENT 'bno', -- bno
	`mname`    VARCHAR(40)  NOT NULL COMMENT 'mname', -- mname
	`mprice`   VARCHAR(40)  NOT NULL COMMENT 'mprice', -- mprice
	`mcontent` VARCHAR(200) NOT NULL COMMENT 'mcontent', -- mcontent
	`mkcal`    VARCHAR(40)  NOT NULL COMMENT 'mkcal', -- mkcal
	`mdate`    DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'mdate', -- mdate
	`mudate`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'mudate', -- mudate
	`mdel`     VARCHAR(20)  NOT NULL DEFAULT 'N' COMMENT 'mdel' -- mdel
)
COMMENT 'menu';

-- 이벤트 테이블
CREATE TABLE event (
   evno       INT(11)       NULL     ,
   tpno       INT(11)       NULL     ,
   evtype     VARCHAR(40)    NOT NULL,
   evtitle    VARCHAR(40)   NOT NULL ,
   evinfo     VARCHAR(40)   NOT NULL ,
   evcontent  VARCHAR(40)   NOT NULL ,
   evcontent2 VARCHAR(40)   NOT NULL,
   evsdate    DATETIME(40)   NOT NULL DEFAULT NOW() ,
   evedate    DATETIME(200) NOT NULL,
   delchk     VARCHAR(40)   NOT NULL DEFAULT 'N',
   evimg      VARCHAR(40) NULL
);

-- 템플릿 테이블
CREATE TABLE template (
   tpno      INT(11)       NULL     ,
   tptitle   VARCHAR(40)   NOT NULL ,
   tpinfo    VARCHAR(40)   NOT NULL ,
   tpdate    VARCHAR(40)   NOT NULL DEFAULT NOW(),
   delchk    VARCHAR(40)   NOT NULL DEFAULT 'N'  ,
   tpimg     VARCHAR(40)  
);