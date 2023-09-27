use Company
create table dependent
(
	essn char(18) not null primary key(essn,dependent_name),
	dependent_name char(10) not null ,
	sex char(2) not null,
	bdate char(10) not null,
	relationship char(10) not null
)
insert dependent
values('230101198009081234','张三妻','女','1983-09-02','配偶')
insert dependent
values('230101198009081234','张三儿','男','2005-01-01','父子')
insert dependent
values('23010119950101XXXX','小灰灰','男','2009-01-01','父子')
insert dependent
values('23010119960101XXXX','小灰灰','男','2009-01-01','母子')