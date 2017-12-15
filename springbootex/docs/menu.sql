create database if not exists digitalmenudb default character set utf8 collate utf8_general_ci;

create user 'menu'@'localhost' identified by '1111';

grant all privileges on digitalmenudb.* to 'userid'@'localhost';

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

desc branch_master;

insert into branch_master(bmno, bmemail, bmpwd, bmname, bmtel, bmfbid, bmgrade) values(1, 'a1@test.com', password('1111'), 'hong1', '111-1111', 'a1@test.com', 'branch_master')
insert into branch_master(bmno, bmemail, bmpwd, bmname, bmtel, bmfbid, bmgrade) values(2, 'a2@test.com', password('1111'), 'hong2', '222-2222', 'a2@test.com', 'branch_master')
insert into branch_master(bmno, bmemail, bmpwd, bmname, bmtel, bmfbid, bmgrade) values(3, 'a3@test.com', password('1111'), 'hong3', '333-3333', 'a3@test.com', 'pre_master')