create database presentation

use presentation

--table creation

create table employee (eid int primary key, ename varchar(50), department varchar(50), Esalary money)

insert into employee values (1,'krunal','DA',30000),
(2,'shiv','AI',32000),
(3,'shakti','Fullstack',35000),
(4,'happy','AI',33000),
(5,'kushal','Fullstack',31000)

-- retrieve all the records of employee table.
select * from employee

--retrieve only employee name and department from employee table.
select ename,department from employee


--SYNTAX OF CREATE VIEW
create view <viewname>
as
{
}

--retrieve only eid,ename,department from employee table.
create view vw_employeedetails
as
select eid,ename,department 
from employee

select * from vw_employeedetails

--we can also retrieve neccesary columns from the view.
select ename,department from vw_employeedetails


--SYNTAX OF ALTER VIEW
alter view <viewname>
as
{
}

--alter view (if we want salary from vw_employeedetails)
alter view vw_employeedetails
as
select eid,ename,department,Esalary
from employee

select * from vw_employeedetails


--SYNTAX FOR UPDATE VIEW
update <viewname>
set
where


--update salary of krunal to 35000
update vw_employeedetails
set Esalary=35000
where ename='krunal'

select * from vw_employeedetails

select * from employee


--SYNTAX OF DROP A VIEW
drop view <viewname>


--drop vw_employeedetails view
drop view vw_employeedetails


--now if we fetch vw_employeedetails (we get error)
select * from vw_employeedetails



--VIEWS USING JOINS

--create one more table.

create table project (pid int primary key, pname varchar(30), eid int foreign key references employee (eid))

insert into project values (101,'data mining',1),
(102,'web application',3),
(103,'web application',5),
(104,'cloud project',2)

select * from project


--create a view for retrieve ename and pname 
create view vw_employeeproject
as
select e.ename,p.pname from employee e
join project p
on e.eid=p.eid

select * from vw_employeeproject


--alter a view on joins
alter view vw_employeeproject
as
select e.ename,p.pname,e.department from employee e
join project p
on e.eid=p.eid

select * from vw_employeeproject

--update view
update vw_employeeproject
set department='dotnet'
where ename='shakti'

select * from vw_employeeproject


--update two tables using joins and views (we can't update two table simultaneously, we can do this with the help of trigger)
--(we have to use instead of triggers)
update vw_employeeproject
set department='QA',pname='testing'
where ename='kushal'


--helptext is use for show only view the createview
sp_helptext 'vw_employeeproject'

--help is use to show full details
sp_help 'vw_employeeproject'



--for hide or encrypt the view table (also encrypt with create)
alter view vw_employeeproject
with encryption
as
select e.ename,p.pname,e.department from employee e
join project p
on e.eid=p.eid

sp_helptext 'vw_employeeproject'

--we got the other details with the help of sp_help but we can't get the table name.
sp_help 'vw_employeeproject'


--now try to update
update vw_employeeproject
set ename='vraj'
where pname='data mining'

select * from vw_employeeproject

drop view vw_employeeproject


----schemabinding is use to user never drop column from base table or view table
create view vw_employeeproject
with schemabinding
as
select e.ename,p.pname,e.department from dbo.employee e
join dbo.project p
on e.eid=p.eid

select * from vw_employeeproject

--try to drop column
alter table employee
drop column department

--try to drop column from view
alter view vw_employeeproject
drop column ename


--to show all the views in database
select name from sys.views

drop view vw_employeeproject
