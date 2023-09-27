--第一题
select ssn
from Employee
where ssn IN(
	select essn
	from works_on,project
	where project.pnumber='p2'and project.pnumber=works_on.pno
	)

--第二题
select count(ssn)
from Employee
where ssn IN(
	select essn
	from works_on,project
	where project.pname='哈同公路'and project.pnumber=works_on.pno
	)


--第三题
select name,address
from Employee
where Employee.salary<3000 and dno IN(
	select dnumber
	from Department
	where Department.dname='研发部'
	)

--第四题
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

--第五题
select name
from Employee
Except
select name
from Employee
where ssn IN(
	select essn
	from dependent
)

--第六题
select e2.name,dname
from Employee e1,Employee e2,Department
where e1.name='张红'and e2.superssn=e1.ssn and  e2.dno=Department.dnumber

--第七题
select ssn
from Employee
where ssn IN(
	select essn
	from works_on
	group by essn
	having count(*)>=3
	)

--第八题
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

--第九题
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

--第十题
select e2.name
from Employee e1,Employee e2
where e1.name='张三'and e2.salary<e1.salary
	and e2.ssn IN(
		select essn
		from works_on
		where works_on.pno='p2'
	)

--第十一题
select distinct e2.name
from Employee e2,works_on
where  e2.ssn=works_on.essn and
	pno IN(
		select pno
		from project
		Except
		select pno
		from works_on,Employee
		where Employee.name='张三' and works_on.essn=Employee.ssn
		)

--第十二题
select name
from Employee
where not exists(
	select *
	from works_on a
	where essn IN(
		select ssn
		from Employee
		where name='王二'
	) and not exists(
		select *
		from works_on b
		where b.pno=a.pno and b.essn=ssn and b.essn!=a.essn
	)

)

--第十三题
select name,avg(hours)
from Employee, works_on
where Employee.ssn=works_on.essn and essn IN(
	select a.essn
	from works_on a,works_on b
	where a.essn=b.essn and a.pno!=b.pno and a.hours>=100 and b.hours>=100
)
group by name;


--第十四题
select name
from Employee
where ssn IN(
	select essn
	from works_on,project
	where works_on.pno=project.pnumber
	group by essn
	having count(distinct dnum)>=3
)

--第十五题
select name
from Employee
where ssn IN(
	select a.essn
	from works_on a,works_on b,works_on c
	where a.essn=b.essn and a.essn=c.essn and a.pno='p1' and b.pno='p2' and c.pno='p3'
)





