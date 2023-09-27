use Company
create table depart_location
(
	dnumber char(3) primary key,
	dlocation varchar(30) not null,
)
insert depart_location
values('d1','哈尔滨')
insert depart_location
values('d2','青青草原')
insert depart_location
values('d3','青青草原')
insert depart_location
values('d4','地球')