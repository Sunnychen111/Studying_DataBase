--��һ��
select ssn
from Employee
where ssn IN(
	select essn
	from works_on,project
	where project.pnumber='p2'and project.pnumber=works_on.pno
	)

--�ڶ���
select count(ssn)
from Employee
where ssn IN(
	select essn
	from works_on,project
	where project.pname='��ͬ��·'and project.pnumber=works_on.pno
	)


--������
select name,address
from Employee
where Employee.salary<3000 and dno IN(
	select dnumber
	from Department
	where Department.dname='�з���'
	)

--������
select name
from Employee
Except
select name
from Employee
where ssn IN(
	select essn
	from works_on,project
	where project.pnumber='p1'and project.pnumber=works_on.pno
	)

--������
select name
from Employee
Except
select name
from Employee
where ssn IN(
	select essn
	from dependent
)

--������
select e2.name,dname
from Employee e1,Employee e2,Department
where e1.name='�ź�'and e2.superssn=e1.ssn and  e2.dno=Department.dnumber

--������
select ssn
from Employee
where ssn IN(
	select essn
	from works_on
	group by essn
	having count(*)>=3
	)

--�ڰ���
select ssn
from Employee
where ssn IN(
	select essn
	from works_on,project
	where project.pnumber='p1'and works_on.pno=project.pnumber
		and essn IN(
			select essn
			from project,works_on
			where project.pnumber='p2' and works_on.pno=project.pnumber
		)
)

--�ھ���
select name
from Employee
where not exists(
	select *
	from project
	where not exists(
		select *
		from works_on
		where works_on.essn=Employee.ssn and works_on.pno=project.pnumber
	)
)

--��ʮ��
select e2.name
from Employee e1,Employee e2
where e1.name='����'and e2.salary<e1.salary
	and e2.ssn IN(
		select essn
		from works_on
		where works_on.pno='p2'
	)

--��ʮһ��
select distinct e2.name
from Employee e2,works_on
where  e2.ssn=works_on.essn and
	pno IN(
		select pno
		from project
		Except
		select pno
		from works_on,Employee
		where Employee.name='����' and works_on.essn=Employee.ssn
		)

--��ʮ����
select name
from Employee
where not exists(
	select *
	from works_on a
	where essn IN(
		select ssn
		from Employee
		where name='����'
	) and not exists(
		select *
		from works_on b
		where b.pno=a.pno and b.essn=ssn and b.essn!=a.essn
	)

)

--��ʮ����
select name,avg(hours)
from Employee, works_on
where Employee.ssn=works_on.essn and essn IN(
	select a.essn
	from works_on a,works_on b
	where a.essn=b.essn and a.pno!=b.pno and a.hours>=100 and b.hours>=100
)
group by name;


--��ʮ����
select name
from Employee
where ssn IN(
	select essn
	from works_on,project
	where works_on.pno=project.pnumber
	group by essn
	having count(distinct dnum)>=3
)

--��ʮ����
select name
from Employee
where ssn IN(
	select a.essn
	from works_on a,works_on b,works_on c
	where a.essn=b.essn and a.essn=c.essn and a.pno='p1' and b.pno='p2' and c.pno='p3'
)





