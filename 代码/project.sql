use Company
create table project
(
	pname varchar(30),
	pnumber char(3) primary key,
	plocation varchar(30),
	dnum char(3)
)

insert project
values('研究项目1','p1','哈尔滨','d1')
insert project
values('哈同公路','p2','哈尔滨','d1')
insert project
values('立交桥','p3','哈尔滨','d1')
insert project
values('机场建设','p4','哈尔滨','d1')
insert project
values('抓羊','p5','青青草原','d2')
insert project
values('吃羊','p6','青青草原','d2')
insert project
values('防狼','p7','青青草原','d3')