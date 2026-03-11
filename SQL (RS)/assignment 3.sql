--ASSIGNMENT 3

--(arithmetic)

--1.
select Ename,Esalary,(Esalary*1.10) as bonus from employee

--2.
update employee
set Esalary=(Esalary*1.10)

select * from employee

--3.
select Ename,Eage,(Eage+2) as increase_age from employee


--4.
select Ename,Esalary,(Esalary*1.02) as professional_tax from employee


--(comparison operator)

--6.
select * from employee
where Eage=20

--7.
select * from employee
where Esalary>20000

--8.
select * from employee
where department<>'cloud'

--9.
select * from employee
where Eage<=25

--10.
select * from employee
where Esalary<=25000


insert into employee values (7,'happy',22,'it',30000),(8,'abhay',23,'sales',26000),(9,'bhargav',24,'marketing',50000),(10,'vijay',25,'finance',30000),(11,'suresh',28,'hr',40000),(12,'ramesh',40,'operation',32000)
--(logical operation)

--11.
select * from employee
where (department='it' AND Esalary>30000)

--12.
select * from employee
where (department='sales' OR department='marketing')

--13.
select * from employee
where (Eage=30 AND department<>'finance')

--14.
select * from employee
where (Eage=28 AND Esalary=30000)

--15.
select * from employee
where (department<>'admin' AND Esalary>20000)


--(special operators)

--16.
select * from employee
where Eage between 25 AND 35

--17.
select * from employee
where department='it' AND department='hr' OR department='operation'

--18.
select * from employee
where Ename like '%a'

--19.
select * from employee
where Esalary between 25000 AND 30000

--20.
select * from employee
where department=NULL

select * from employee
where department NOT IN ('it','sales')

--21.
select * from employee
where Ename like 'n%'

--22.
select * from employee
where Eage NOT between 20 AND 30
