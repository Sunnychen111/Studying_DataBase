use Company
create table Department
(
	dnumber char(3)primary key,
	dname varchar(30) not null,
	mgrssn char(18) not null,
	mgrstartdate char(10) not null
)
insert Department
values('d1','�з���','23010119751201312X','2008-01-01')
insert Department
values('d2','����','23010119960101XXXX','2006-01-01')
insert Department
values('d3','���ǲ�','23010120050101XXXX','2006-01-01')
insert Department
values('d4','ȫ�ܲ�','XXXXXXXXXXXXXXXXXX','3000-01-01')