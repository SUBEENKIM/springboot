-- BranchMaster

create database if not exists digitalmenudb default character set utf8 collate utf8_general_ci;
create database if not exists big3 default character set utf8 collate utf8_general_ci;

create user 'menu'@'localhost' identified by '1111';
create user 'big3'@'localhost' identified by '1111';

grant all privileges on digitalmenudb.* to 'menu'@'localhost';
grant all privileges on big3.* to 'big3'@'localhost';

use digitalmenudb;

create table branch_master(
  bmno int not null,
  bmemail varchar(50) not null,
  bmpwd varchar(200),
  bmname varchar(50),
  bmtel varchar(50),
  bmfbid varchar(50),
  bmgrade varchar(50)
);

alter table branch_master add primary key(bmno);

alter table branch_master modify column bmno int not null auto_increment;

alter table branch_master add unique key(bmemail);

alter table branch_master modify column bmgrade varchar(50) DEFAULT 'branch_master';

desc branch_master;

insert into branch_master(bmno, bmemail, bmpwd, bmname, bmtel, bmfbid, bmgrade) values(1, 'a1@test.com', password('1111'), 'hong1', '111-1111', 'a1@test.com', 'branch_master');
insert into branch_master(bmno, bmemail, bmpwd, bmname, bmtel, bmfbid, bmgrade) values(2, 'a2@test.com', password('1111'), 'hong2', '222-2222', 'a2@test.com', 'branch_master');
insert into branch_master(bmno, bmemail, bmpwd, bmname, bmtel, bmfbid, bmgrade) values(3, 'a3@test.com', password('1111'), 'hong3', '333-3333', 'a3@test.com', 'pre_master');

-- Branch

create table branch(
  bno int,
  bname varchar(50),
  btel varchar(50),
  baddr varchar(50),
  barea varchar(50),
  bimage varchar(200),
  bintro varchar(200),
  blilg varchar(50),
  bmno int
);

alter table branch add primary key(bno);

alter table branch modify column bno int not null auto_increment;

alter table branch add constraint fk_bmno foreign key(bmno) references branch_master(bmno);

insert into branch(bno, bname, btel, baddr, barea, bintro, blilg, bmno) values(1, '강남 중앙점', '111-1111', '서울특별시 강남구 서초동', '서울특별시 강남구', '안녕하세요', '38,33',1);
insert into branch(bno, bname, btel, baddr, barea, bintro, blilg, bmno) values(2, '시흥 목감점', '222-2222', '경기도 시흥시 목감동', '경기도 시흥시', 'ㅎㅇㅎㅇ', '32,33',2);
insert into branch(bno, bname, btel, baddr, barea, bintro, blilg, bmno) values(3, '안산 부곡점', '333-3333', '경기도 안산시 부곡동', '경기도 안산시', 'hello', '31,33',3);


create table branch_phot(
	bpno int ,
	bno int,
	path varchar(255)
);

alter table branch_phot add primary key(bpno);

alter table branch_phot modify column bpno int not null auto_increment;

alter table branch_phot add constraint fk_bno foreign key(bno) references branch(bno);


