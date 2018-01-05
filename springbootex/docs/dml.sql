-- BranchMaster

alter table branch_master add primary key(bmno);

alter table branch_master modify column bmno int not null auto_increment;

alter table branch_master add unique key(bmemail);

alter table branch_master modify column bmgrade varchar(50) DEFAULT 'branch_master';

-- Branch
alter table branch add primary key(bno);

alter table branch modify column bno int not null auto_increment;

alter table branch add constraint fk_bmno foreign key(bmno) references branch_master(bmno);


-- branch_file
alter table branch_file add primary key(fmno);

alter table branch_file modify column fmno int not null auto_increment;

alter table branch_file add constraint fk_bno foreign key(bno) references branch(bno);