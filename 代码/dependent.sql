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
values('230101198009081234','������','Ů','1983-09-02','��ż')
insert dependent
values('230101198009081234','������','��','2005-01-01','����')
insert dependent
values('23010119950101XXXX','С�һ�','��','2009-01-01','����')
insert dependent
values('23010119960101XXXX','С�һ�','��','2009-01-01','ĸ��')