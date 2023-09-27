create database Company
on(
	Name='Company',
	filename = 'D:\DATA\Company.mdf'
)

create table Employee
(
	ssn char(30) primary key,
	name char(10) not null,
	bdate char(10) not null,
	address char(30) not null,
	sex char(2)not null,
	salary float not null,
	superssn char(18) not null,
	dno char(3)not null
)

