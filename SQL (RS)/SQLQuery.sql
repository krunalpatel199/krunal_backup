-- To create database
-- Create database <Name>
CREATE DATABASE JAN2026
USE JAN2026
-- DROP DATABSE JAN2026 (for drop database)
drop database JANUARY2026

--Types of SQL language
-- 1.DDL (data definition language)
-- Create, Alter, Drop, Truncate
-- 2.DML (data manipulated language)
-- Insert, Update, Delete
-- 3.DQL (data query language)
-- Select
-- 4.TCL (transaction control language)
-- Commit, Rollback, Savepoint

Select 4+4 as Addition
-- Addition is column name
Select 'krunal' + 'patel' as Fullname
-- if we didn't give column name it shows "no column name"

Select GETDATE()
-- it shows current date and time

Select SYSTEM_USER
-- it shows username

-- for sharing database go to databse select the database right click it go to properties then go to files and select path and paste it to windows +r 

Alter database JAN2026
MODIFY NAME = JANUARY2026

use JANUARY2026

-- To create a table in DB
-- Create table <name>
-- (col1 name <datatype>, col2 name<datatype>, col3 name<datatype>

Create Table Employee (EID INT, Ename Varchar(20), Eage INT, Esalary Money)

Select * from Employee

--insert method 1
Insert into Employee values (1,'krunal',20,20000)

--insert method 2
insert into Employee (EID, Ename, Eage) values (2,'viral',21)

--insert method 3
insert into Employee values (3,'adi',23,22000), (4,'rutul',23,24000)

--for adding column to a table
alter table Employee
add Email varchar(20)

--for delete column from table
alter table Employee
drop column Email

--to update datatype
alter table Employee
alter column EID varchar(10)

-- to drop a table
drop table <tablename>
drop table Employee

-- to display all the database in system
Select name, create_date
from sys.databases
from sys.tables    --(for all tables in database)

--to display all tables in DB
Select name
from sys.tables

-- Rename table name
sp_rename 'EMP', 'Employee'

--Rename column name
--sp_rename 'Tablename.oldcolumnname', 'newcolumnname'
sp_rename 'Employee.EMPID', 'EID'

-- for select the columns of the table
select top 0 * from Employee

--for showing entire details of the table 
sp_help Employee


select * from Employee

--for updating the values of the table Employee
--1.update method 1
update <tablename>
set column-value
Where 

update Employee
set Esalary=30000
where EID=1

update Employee
set Esalary=25000
Where Ename='viral'

--2.update method 2
update Employee
set Esalary=26000
where Esalary=24000

--3.update method 3  (if we didn't apply any filter (where) it will change all EID salary as 50000)
update Employee
set Esalary=50000

--4.update method 4 (if you want to update value for only 3 people)
update Employee
set Esalary=40000
where EID in (1,2,3)


-- for delete the values from the table
--1. delete method 1
delete from Employee
Where Ename='krunal'

insert into Employee values (1,'krunal',20,30000)
insert into Employee (EID,Ename,Eage) values (5,'khushi',20)
select * from Employee

--2. delete method 2
delete from Employee
where Esalary is NULL

--3.delete methdod 3 (for deleting all the values from table)(it can't delete the table structure)
delete from Employee

-- drop is use for delete the entire table with structure (in drop you can't use filter (where) commands)
drop table Employee

--truncate is use for delete the values from the table (truncate is faster than the delete commands if you want to delete entire values from the table)
truncate table Employee


--identity function (auto-increment feature)  (identity is only one for one table)
--identity is used only in integer datatype

--(if we want to start from 100 and increament 1 per id then you have to write EID int identity (100,1))
create table Employee (EID int identity, Ename varchar(250), Eage int, Esalary money)
insert into Employee Values ('krunal',20,40000)
select * from Employee

insert into Employee values('viral',21,30000)

--to manually insert the values  (ON is used for indentity manually in which you have compulsory mention the column names, and if we OFF then also you have to mention column names but it can take increametn automatically)
set Identity_Insert Employee ON
insert into Employee (EID,Ename,Eage,Esalary) values (3,'adi',23,25000),(4,'rutul',23,25000)

set Identity_Insert Employee OFF
insert into Employee values ('jahan',13,22000)

use JANUARY2026
select * from Employee

--operators

alter table Employee
add department varchar(50)

insert into Employee (department) values ('data analyst'),('full stack'),('java'),('data science'),('python')

drop table Employee

create table employee (Eid int, Ename varchar(20), Eage int, department varchar(20), Esalary money)

select * from employee

insert into employee values (1,'krunal',20,'data analyst',50000),(2,'viral',21,'full stack',40000),(3,'aditya',23,'chemical',35000),(4,'rutul',23,'java',35000)

insert into employee values (5,'jahan',15,'data analyst',30000)

--1. arithmetic operator (+,-,*,/)

--addition operator (+)
select Eid,Ename,Eage,Esalary,(Esalary+25000) as salary_bonus from employee

--if you want to count total sell of cellphone in vadodara
select Pid,Pname,Pcity,(price*quantity) as total sell from <tablename>

--multiplication operator (*)
select Eid,Ename,Eage,Esalary,(Esalary*1.05) as increament from employee

--for update salary in table
update employee
set Esalary=(Esalary*1.05)


--2. logical operator (IN, AND, Not null)
select * from employee
where Eid in (1,2)

-- IN operator 
select * from employee
where department in ('chemical','full stack')

--AND operator (if you want both condition)
select * from employee
where department = 'data analyst' AND Esalary=50000

--OR operator (if you want any one condition)
select * from employee
where department = 'data analyst' OR Esalary=50000

select * from employee
where (department='data analyst' AND Esalary=50000) OR (department='full stack')

select * from employee
where department = 'full stack' AND Esalary=50000


--3.comparison operator (<,>,<=,>=,<>(not equal to))

select * from employee
where department='full stack' AND Esalary<50000

select * from employee
where Esalary <> 20000

select * from employee
where department = 'full stack'

insert into employee (Eid,Ename,Eage,department) values (6,'shiv',23,'full stack')

select * from employee
where Esalary is not NULL

--for delete null salary row
delete from employee
where Esalary is Null

--in between it will take 20000 and 40000 also
select * from employee
where Esalary between 20000 AND 40000

--in less than and greater than it won't take 20000 and 40000 value
select * from employee
where Esalary>20000 AND Esalary<40000

--if you want a name whose name start with 's'
select * from employee
where Ename like 'S%'

--if you want a name whose name ends with 'l'
select * from employee
where ename like '%l'

--if you want '@gmail.com'
select * from employee
where like '%@gmail.com'

--if you want to find country code
select * from employee
where like '+91%'


--SET operators
--union, union all, intersect, except

create table Bank_vadodara
(BID int, Bname varchar(20), location varchar(20))

select * from Bank_vadodara

insert into Bank_vadodara values (10,'SBI','akota'),(20,'HDFC','manjalpur'),(30,'ICICI','atladra')

create table Bank_surat
(BID int, Bname varchar(20), location varchar(20))

select * from Bank_surat

insert into Bank_surat values (10,'SBI','akota'),(40,'AXIS','varacha'),(50,'BOB','udhna')

--UNION operation
select * from Bank_vadodara
UNION
select * from Bank_surat

--UNION ALL operation
select * from Bank_vadodara
UNION ALL
select * from Bank_surat

--INTERSECT operation
select * from Bank_vadodara
INTERSECT
select * from Bank_surat

--EXCEPT operation  (give first table value except second table)
select * from Bank_vadodara
EXCEPT
select * from Bank_surat


select BID,Bname,location from Bank_vadodara
UNION 
select BID,location,Bname from Bank_surat

--certain limitation of set operators

--1.number of column in table must be same
--2.order of the column must be same
--3.datatype of the column must be same
--4.number of supplied values must be same


--Clauses (group by having)
--where (used to apply filters on ROWS)
--Group by (used to group similar data based on the column)
--Having (used to filter the records after group by) 
--order by (always give ascending order, if you want in descending order then write DESC)

--Aggregate function 
--count (numeric & non numeric)
--sum (numeric)
--max (both)
--min (both)
--avg (numeric)

select * from employee

select count (*) from employee
select Max (Esalary) as highest from employee
select Min (Esalary) as lowest from employee
select Avg (Esalary) as average from employee
select sum (Esalary) as totalsalary from employee

select Max (Esalary) as highest, Min (Esalary) as lowest, Avg (Esalary) as average from employee

--syntax
select <department>,max(Esalary)
from <tablename>
group by <department>


select department, Max (Esalary) as  highest
from employee
Group by department

select department, sum (Esalary) as totalsalary 
from employee
Group by department

select * from employee

select count(department)
from employee

group by department

select * from employee

select department, max(Esalary) as highest
from employee
group by department
having max(Esalary)>21000
order by highest DESC 

select department, max(Esalary) as highest
from employee
group by department
having max(Esalary)>21000
order by 2  
--2 says column 2

select Ename, max(Esalary)
from employee
group by Ename
order by 2 DESC 

select top 1 max(Esalary)
from employee
order by max(Esalary) DESC

--1.find out how many employees are in each department
select department, count(*)
from employee
group by department

--same question and display department greater than 2 and in descending order
select department, count(*)
from employee
group by department
having count(department)>1
order by 1 DESC

--2.calculate the avg salary from employee in each department
select department,avg(Esalary) as average
from employee
group by department

--3.find the total quantity sold for each distinct product (distinct is use for unique value)
select distinct Ename, sum(Esalary)
from employee
group by Ename

--4.maximum price of a product in each region
select department, max(Esalary)
from employee
group by department

--5.minimum and maximum salary per department
select department, min(Esalary), max(Esalary)
from employee
group by department

--6.total sales value per region only when total sales is less than equals to 50000 order by region
select region, sum(quantity* sales)
from product
group by region
having sum(quantity*price)<=50000
order by region DESC


--practice
--1.find the departments with an average salary greater than 20000
select department, avg(Esalary) as average_salary
from employee
group by department
having avg(Esalary)>20000

--2.list the cities where the average employee age is greater than 20
select department, avg(Eage) as average_age
from employee
group by department
having avg(Eage)>20

--3.find the departments with more than 5 employee.
select department, count(Ename) as total_employees
from employee
group by department
having count(Ename)>5

--4.list the cities where the total salary of all employees exceeds 30000
select department, sum(Esalary) as total_salary
from employee
group by department
having sum(Esalary)=30000

--5.find the departments where the average age of employees is between 20 and 25.
select department, avg(Eage) as average_age
from employee
group by department
having avg(Eage) between 20 AND 25

select department
from employee
where Eage between 20 AND 25
group by department


--constraints
--Not NULL (ensures that column must have values, but it may allows duplicate values)
--Unique (ensure that a column is having unique value, but it may allow null values)
--check (will check the given condition on a particular column)
--default (used to assign a default value in a column)


--Not NULL
create table EMP1(Eid int, Ename varchar(20), Eage int Not NULL)

insert into EMP1 values (1,'suresh',20)
insert into EMP1 values (1,'ramesh',20)

select * from EMP1

drop table EMP1

--unique
create table EMP1(Eid int unique, Ename varchar(20), Eage int)
insert into EMP1 values (1,'suresh',20)
insert into EMP1 values (1,'ramesh',23)
insert into EMP1 (Ename,Eage) values ('naresh',25)
insert into EMP1 (Ename,Eage) values ('mahesh',27)

select * from EMP1
drop table EMP1

--check
create table EMP1(Eid int, Ename varchar(20),Eage int,Esalary money check (Esalary>=18000))
insert into EMP1 values (1,'mahesh',22,18000)

select * from EMP1

insert into EMP1 values (2,'naresh',23,17999)

drop table EMP1


--default
create table EMP1(Eid int, Ename varchar(20),Eage int default 18)

insert into EMP1 values(1,'mahesh',15)

select * from EMP1

insert into EMP1 (Eid,Ename) values (2,'suresh')

drop table EMP1

-- default age is pending and id is not null and unique
create table EMP1(Eid int NOT NULL unique, Ename varchar(20),Eage int default 'pending')

--practice
create table EMP1 (Eid int, Ename varchar (20), Eage int)

insert into EMP1 values (1,'suresh',20)

select * from EMP1

alter table EMP1
add Emailid varchar(20)

insert into EMP1 values (2,'mahesh',21,'mahesh@gmail.com'),(3,'mahesh',22,'mahesh@gmail.com')


--alter table <tablename>
--add constraint <constraintName> constrainttype <columnname>

alter table EMP1
add constraint UC_Cons unique (Emailid)

delete from EMP1
where Eid=3

select * from EMP1

insert into EMP1 values (3,'ramesh',17,'mahesh@gmail.com')

alter table EMP1
add constraint CK_Cons check (Eage>18)


create table product (pid int, pname varchar(20), quantity int, status varchar(20))
insert into product values (10,'laptop',2,'delivered'),(11,'mobile',1,'on-the-way')
insert into product (pid,pname,quantity) values (12,'charger',1)

select * from product

alter table product
add constraint DF_default default 'pending' for status

insert into product (pid,pname,quantity) values (13,'television',1)


--to drop constraint

--alter table <tablename>
--drop constraint <name>
alter table product
drop constraint DF_default

insert into product (pid,pname,quantity) values (14,'AC',1)


alter table emp1
drop constraint CK_Cons

alter table emp1
drop constraint UC_Cons

drop table product

create table product (pid int, pname varchar(20), quantity int, status varchar(20))
insert into product values (10,'laptop',2,'active')

select * from product

alter table product
alter column quantity int NOT NULL

insert into product (pid,pname,status) values (11,'AC','pending')

alter table product
alter column quantity int

insert into product (pid,pname,status) values (11,'AC','pending')


create table shop (sid int NULL, sname varchar(20), status varchar(20))

insert into shop (sname,status) values ('ashish','open')

select * from shop

alter table shop
alter column sid int

insert into shop values (1,'ashish','open')

drop table shop


--primary key (unique + not null)

create table emp2 (eid int, ename varchar(20))

insert into emp2 values (2,'suresh'),(1,'mahesh'),(3,'ramesh')

select * from emp2

drop table emp2


create table emp2 (eid int primary key, ename varchar(20))

insert into emp2 values (2,'suresh'),(1,'mahesh'),(3,'ramesh')

select * from emp2

insert into emp2 values (4,'suresh')

insert into emp2 values (2,'suresh')

insert into emp2 (ename) values ('suresh')

drop table emp2

--we can add only one primary key in one table

create table emp2 (eid int, ename varchar (20) primary key)

insert into emp2 values (1,'jayesh'),(2,'JAYESH')    
--we can't add this value to the table.

select * from emp2
drop table emp2


--foreign key (to establish relationship between)
--to maintain referential data integrity) (if something is not present in parent table , the child table can't take the value from it)

create table courses (cid int primary key ,cname varchar (20), cfee money)

insert into courses values(10,'fullstack',1000), (20,'cloud',2000),(30,'genai',3000)
insert into courses values (40,'QA',1000)

select * from courses

create table student (sid int, sname varchar (20),
cid int foreign key references courses (cid))

insert into student values (1,'mahesh',10),(2,'mahesh',20)
insert into student values (3,'ramesh',40)

select * from courses
select * from student

--we can't update this cause it linked with child table
update courses
set cid=50
where cname='QA'

--we can update this 
update courses
set cname='testing'
where cid=40

--we can't update this cause cid=50 is not in student table
update student
set cid=50
where sid=3

--we can update it
update student
set cid=10
where sid=3

--we can't delete it 
delete from courses
where cid=10

--we can delete it cause it is in child table
delete from student
where sid=3

select * from courses
select * from student

-- you can't drop a parent table because it is reference to child table
drop table courses

--first drop child table then drop parent table
drop table student

--create parent table courses
create table courses (cid int primary key ,cname varchar (20), cfee money)
insert into courses values(10,'fullstack',1000), (20,'cloud',2000),(30,'genai',3000)


--create child table student
create table student (sid int, sname varchar (20),
cid int foreign key references courses (cid) on update cascade on delete cascade)
insert into student values (1,'mahesh',10),(2,'mahesh',20),(3,'ramesh',30)

select * from courses
select * from student

update courses
set cid=40
where cname='fullstack'

delete from courses
where cid=40

drop table courses
drop table student

--create parent table (courses)
create table courses (cid int primary key,cname varchar (20), cfee money)

--create child table (student)
create table student (sid int, sname varchar (20),
course_id int foreign key references courses (cid) on update cascade on delete cascade)

select * from courses
select * from student

create table courses (cid int,cname varchar (20), cfee money)

insert into courses values (10,'cloud',1000)
insert into courses values (20,'QA',1000)

select * from courses

--we can't add constraint cause cid has nullable value
alter table courses
add constraint pk_course primary key (cid)

--first we have to change the constraint of cid to not null
alter table courses
alter column cid int not null

--after that we can add primary key to cid
alter table courses
add constraint pk_course primary key (cid)

--we can't insert thr value to course table cause it violate the primary key
insert into courses values (20,'fullstack',3000)

--we have to drop the primary key constraint for adding the values to the table
alter table courses
drop constraint pk_course

insert into courses values (20,'fullstack',3000)

select * from courses

delete from courses
where cname='fullstack'

drop table courses
drop table student

create table courses (cid int primary key, cname varchar(20), cfee money)

create table student (sid int, sname varchar (20),cid int)

insert into courses values (10,'fullstack',1000)
Insert into Student VALUES (1, 'Suresh', 10)

select * from courses
select * from student

alter table student
add constraint fk_student foreign key (cid) references courses (cid)

Insert into Student VALUes (1,'Shakti',50) 
-- Error bcz there is no any 50 value in the cid in courses 

-- if the 50 is already present in to the student table and if we apply the foreign key then it will give us an error


create table courses1 (cid int,sid int, cname varchar(20), primary key (cid,sid))

insert into courses1 values (10,1,'fullstack'),(10,2,'QA'),(20,1,'DA'),(20,2,'DE')

create table student1 (cid int, sid int,sname varchar(20), foreign key (cid,sid) references courses1 (cid,sid))

insert into student1 values (10,2,'krunal'),(10,1,'shiv'),(20,1,'yash'),(20,2,'meet')

select * from courses1
select * from student1

-- during creation of table if we can't add primary key then we can add null value but if we want to add not null value then we have to first add not null then add primary key constraints )


--this is how SQL server understand your query
--from - table
--where -filter rows
--group by - buckets
--having - filter the bucktets
--select-column/aggregate function
--order by-sort


--subquery (nested query) multiples queries
--subquery= outer query + inner query
--types: corelated (inner query -> outer query) & non corelated query(outer query -> inner query))

select * from employee

select max(Esalary) from employee

select top 1 Eid,Ename,Esalary 
from employee
order by Esalary DESC

insert into employee values (13,'ashish',45,'kotak',55000)

delete from employee
where Ename='ashish'

select max (Esalary) 
from employee

select * from employee
where Esalary=55000

--subquery (non-corelated) (when outer query is dependent on inner query)
select * from employee
where Esalary=(select max (Esalary) from employee)

--finding 2nd highest salary
select * from employee
where Esalary=(select max (Esalary) from employee
where Esalary <
(select max (Esalary) from employee))

--finding 3rd highest salary
select * from employee
where Esalary=(select max (Esalary) from employee
where Esalary <
(select max (Esalary) from employee
where Esalary <
(select max (Esalary) from employee)))


--find all products that have price higher then the average price of all product
select * from products where price 
> (select Avg(price) from products)

--find out employees whose salary is greater than the average salary of employees
select * from employee where Esalary
> (select Avg(Esalary) from employee)

--if we want only emp name and esalary
select Ename,Esalary from employee where Esalary
> (select Avg(Esalary) from employee)

--if we want Ename and esalary which is equal to average salary
select Ename,Esalary from employee where Esalary
= (select Avg(Esalary) from employee)

--write a query to list all productnames that have atleast one sales record in the 'vadodara' region.
select distinct productname from sales
where productname IN
(select productname
from sales
where region='vadodara')

--write a query to find the names of departments that have atleast one employee older than 30 years.
select Ename,Eage,department from employee
where department IN
(select department
from employee
where Eage>30)

--write a query to find Ename,department, Esalary of employees who earn the  maximum salary within their respective department.
select Ename,department,Esalary from employee
where Esalary IN
(select max(Esalary) 
from employee
group by department)

select * from employee

use JANUARY2026



--JOINS
--combining 2 or more tables
--atleast one common column between tables
--datatype must be same
--two types of joins (ANSI & NON-ANSI)
--ANSI (americal national standard institute)(modern-latest joins) - using ON keyword
--NON ANSI (non-americal national standard institute) -using Where keyword


--TYPES OF ANSI JOINS
--1.left join
--2.right join
--3.full outerjoin
--4.left join excluding inner join
--5.right join excluding inner join
--6.inner join
--7.full outer join excluding inner join
--8.self join


--SYNTAX OF ANSI JOINS

--1.INNER JOIN (matching values)
select * from A
INNER JOIN B
ON A.key = B.key

--2.LEFT JOIN (inner + left)
select * from A
LEFT JOIN B
ON A.key = B.key

--3.RIGHT JOIN (inner + right)
select * from A
RIGHT JOIN B
ON A.key = B.key

--4.LEFT JOIN EXCLUDING INNER JOIN (left - inner)
select * from A
LEFT JOIN B
ON A.key =B.key
WHERE B.key IS NULL

--5.RIGHT JOIN EXCLUDING INNER JOIN (right - inner)
select * from A
RIGHT JOIN B
ON A.key = B.key
WHERE A.key IS NULL

--6.FULL OUTER (inner + left + right)
select * from A
FULL OUTER JOIN B
ON A.key = B.key

--7.FULL OUTER JOIN EXCLUDING INNER JOIN ((left + right) - inner)
select * from A
FULL OUTER JOIN B
ON A.key = B.key
WHERE A.key IS NULL OR B.key IS NULL

--8.SELF JOIN 
--joining a table with itself
--aliasing is mandatory
--duplicate copy of a table and using the 

--find out the employee having same salary as aditya
select * from employee where Ename='aditya'
select * from employee where Esalary=38500

select e1.Ename,e1.Eid,e1.Esalary from employee e1, employee e2
where e1.Esalary=e2.Esalary
AND e2.Ename='aditya'

--find out the employee in which they working in same department
select e1.Eid,e1.Ename,e1.department from employee e1
join employee e2
on e1.department=e2.department
where e1.Eid <> e2.Eid

--find out employees working in the same city
select e1.Eid,e1.Ename,e1.city from employee_details e1
join employee_details e2
on e1.city=e2.city
where e1.Eid<>e2.Eid

--find out employees working in the same salary
select e1.Eid,e1.Ename,e1.Esalary from employee e1
join employee e2
on e1.Esalary=e2.Esalary
where e1.Eid<>e2.Eid


drop table student
drop table courses

create table course (cid int, cname varchar(255), cfee money)

insert into course values (10,'fullstack',1000),
(20,'QA',1000),
(30,'cloud',2000),
(40,'AI',3000)

create table student (sid int, sname varchar(20), cid int)

insert into student values (1,'suresh',10),
(2,'mahesh',20),
(3,'jayesh',50)

select * from course
select * from student


--INNER JOIN
select * from course
inner join student
on course.cid = student.cid

--LEFT JOIN
select * from course
left join student
on course.cid = student.cid

--RIGHT JOIN
select * from course
right join student
on course.cid = student.cid

--LEFT JOIN EXCLUDING INNER JOIN
select * from course
left join student
on course.cid = student.cid
where student.cid IS NULL

--RIGHT JOIN EXCLUDING INNER JOIN
select * from course
right join student
on course.cid = student.cid
where course.cid IS NULL

--FULL OUTER
select * from course
full outer join student
on course.cid = student.cid

--FULL OUTER JOIN EXCLUDING INNER JOIN
select * from course
full outer join student
on course.cid = student.cid
where course.cid IS NULL OR student.cid IS NULL

select c.cid,s.sid,c.cname from course c
full join student s
on c.cid = s.cid
where c.cid is null OR s.cid is null


--CROSS JOIN (cartesian product) (table 1 * table 2)
select * from course
cross join student

select * from course, student



create table customer (cid int , cname varchar(20), cnumber bigint)
insert into customer values (1,'krunal',7778875567),
(2,'viral',9426618787),
(3,'aditya',9724618221),
(4,'rutul',8394125874)

create table orders (oid int, oname varchar(50), cid int)

insert into orders values (10,'laptop',1),
(20,'mobile',2),
(30,'TV',5)

select * from customer
select * from orders


--INNER JOIN
select * from customer
inner join orders
on customer.cid = orders.cid

--LEFT JOIN
select * from customer
left join orders
on customer.cid =orders.cid

--RIGHT JOIN
select * from customer
right join orders
on customer.cid = orders.cid

--LEFT JOIN EXCLUDING INNER JOIN
select * from customer
left join orders
on customer.cid = orders.cid
where orders.cid IS NULL

--RIGHT JOIN EXCLUDING INNER JOIN
select * from customer
right join orders
on customer.cid = orders.cid
where customer.cid IS NULL

--FULL OUTER JOIN
select * from customer
full join orders
on customer.cid = orders.cid

--FULL OUTER JOIN EXCLUDING INNER JOIN
select * from customer
full join orders
on customer.cid = orders.cid
where customer.cid IS NULL OR orders.cid IS NULL


--CROSS JOIN
select * from customer, orders

select * from customer
cross join orders


--TYPES OF NON ANSI JOINS (WHERE)

--1.Equi join (only equality operator) (=)
--2.Non Equi join (except equality operator) (>,<,<>,>=,<=)


--EQUI JOIN
select * from course,student
where course.cid = student.cid

--NON EQUI JOIN
select * from course,student
where course.cid > student.cid

select * from course,student
where course.cid <> student.cid


--customerdetails (customerCID, customername, customercity,contactnumber)
--ordersdetails (orderID,productname, orderdate,customerCID,promocode,paymentmethod)

create table customerdetails (cid int, cname varchar(20), city varchar(50), contact int)

alter table customerdetails
drop column contact

select * from customerdetails

alter table customerdetails
add contact varchar(20)

alter table customerdetails
alter column contact bigint

insert into customerdetails values (1,'krunal','ankleshwar',7778875567),
(2,'viral','ankleshwar',9426618727),
(3,'aditya','ankleshwar',972618221),
(4,'khushi','bharuch',9313166210),
(5,'sneha','surat',9624655856),
(6,'ashish','vadodara',9913627932)

select * from customerdetails

create table orderdeatails (oid int, pname varchar(20), odate varchar(20) default getdate(),cid int, promocode varchar(20), paymentmethod varchar(20))

select * from orderdeatails

insert into orderdeatails (oid,pname,cid,promocode,paymentmethod) values (101,'bike',1,30051,'online'),
(102,'car',2,30052,'cash'),
(103,'mobile',3,30053,'online'),
(104,'tv',8,30057,'online')

select * from orderdeatails

--INNER JOIN
select * from customerdetails c
inner join orderdeatails o
on c.cid = o.cid

--LEFT JOIN
select * from customerdetails c
left join orderdeatails o
on c.cid = o.cid

--RIGHT JOIN
select * from customerdetails c
right join orderdeatails o
on c.cid = o.cid

--LEFT JOIN EXCLUDING INNER JOIN
select * from customerdetails c
left join orderdeatails o
on c.cid = o.cid
where o.cid is null

--RIGHT JOIN EXCLUDING INNER JOIN
select * from customerdetails c
right join orderdeatails o
on c.cid = o.cid
where c.cid is null

--FULL JOIN
select * from customerdetails c
full join orderdeatails o
on c.cid = o.cid

--FULL JOIN EXCLUDING INNER JOIN
select * from customerdetails c
full join orderdeatails o
on c.cid = o.cid
where c.cid is null or o.cid is null

--CROSS JOIN
select * from customerdetails,orderdeatails

select * from customerdetails
cross join orderdeatails

--EQUI JOIN
select * from customerdetails,orderdeatails
where customerdetails.cid = orderdeatails.cid


--customerdetails (customerid, customername, bankid, bankname)
--bankdetails (bankname,customerid,acc number,bank branch)


--joins using 4 tables

--employee (EID,Ename,MID,DID)
--manager (MID,Mname)
--project (PID,Pname,EID)
--department (DID,Dname)

create table employee1 (EID varchar(10),Ename varchar(50),MID int ,DID int)

insert into employee1 values ('E101','suresh',10,1),
('E102','ramesh',12,2),
('E103','naresh',14,3),
('E104','mahesh',16,4),
('E105','jayesh',18,5)

create table manager1 (MID int, Mname varchar(20))

insert into manager1 values (10,'krunal'),
(12,'viral'),
(18,'aditya'),
(20,'rutul')

create table project1 (PID varchar(10), Pname varchar(20), EID varchar(10))

insert into project1 values ('P1','data migration','E101'),
('p2','web application','E103'),
('p3','cloud project','E107')

create table department1 (DID int, Dname varchar(20))

insert into department1 values (1,'data analyst'),
(3,'full stack'),
(6,'java')

select * from employee1
select * from manager1
select * from project1
select * from department1

--JOINS ASSIGNMENT

--1.Display each employee's name and their corresponding department name.
select E.Ename,D.Dname from employee1 E
inner join department1 D
on E.DID = D.DID

--2.List all projects along with the name of the employee assigned to them.
select P.Pname,E.Ename from project1 P
inner join employee1 E
on P.EID=E.EID

--3.Show the names of employees and the names of their managers.
select Ename,Mname from employee1 E
inner join manager1 M
on E.MID=M.MID

--4.Display the Project ID and the Department ID for every project.
select P.PID, D.DID from project1 P
join employee1 E
on P.EID=E.EID
join department1 D
on E.DID=D.DID

--5.List employees who work in the 'IT' department.
select E.Ename, D.Dname from employee1 E
join department1 D
on E.DID=D.DID
where D.Dname='data analyst'

--6.Display employee names and their manager names for all employees in department 10.
select E.Ename, M.Mname from employee1 E 
join manager1 M
on E.MID=M.MID
where E.DID=1

--7.Show all projects handled by ‘Suresh’.
select Pname,Ename from project1 P
join employee1 E
on P.EID=E.EID
where Ename='suresh'

--8.Find the department name associated with Project ID 101.
select Dname,PID from department1 D
join employee1 E
on D.DID=E.DID
join project1 P
on E.EID=P.EID
where P.PID='P1'

--9.List all employees whose manager's name is 'Suresh'.
select Ename,Mname from employee1 E
join manager1 M
on E.MID=M.MID
where M.Mname='krunal'

--10.Display the count of employees in each department name.
select count(E.Ename) as employees ,D.Dname from employee1 E
right join department1 D
on E.DID=D.DID
group by D.Dname

--11.List all departments and the employees working in them (including departments with no employees).
select D.Dname,E.Ename from department1 D
left join employee1 E
on D.DID=E.DID

--12.Display all employees and the projects they are assigned to (including those with no projects).
select E.Ename, P.Pname from employee1 E
left join project1 P
on E.EID=P.EID

--13.Show the names of employees, their department names, and their manager names in one result.
select E.Ename, D.Dname, M.Mname from department1 D
join employee1 E
on D.DID=E.DID
join manager1 M
on E.MID=M.MID

--14.Find all projects and the department name they belong to.
select P.Pname, D.Dname from project1 P
left join employee1 E
on P.EID=E.EID
left join department1 D
on E.DID=D.DID

--15. List all managers and the names of employees reporting to them (including managers with no reporters).
select M.Mname, E.Ename from manager1 M
left join employee1 E
on M.MID=E.MID

--16.Find employees who are NOT assigned to any project.
select E.Ename from employee1 E
left join project1 P
on E.EID=P.EID
where P.EID is NULL

--17.Display the names of all employees and the names of projects, but only for those in the ‘IT’ department.
select E.Ename, P.Pname,D.Dname from project1 P
join employee1 E
on P.EID=E.EID
join department1 D
on E.DID=D.DID
where D.Dname='data analyst'

--18. Show the names of managers who are managing employees in the 'Finance' department.
select M.Mname,E.Ename,D.Dname from manager1 M
join employee1 E
on M.MID=E.MID
join department1 D
on E.DID=D.DID
where D.Dname='full stack'

--19.Display Department Name, Employee Name, and Project Name for all matches.
select D.Dname,E.Ename,P.Pname from department1 D
full join employee1 E
on D.DID=E.DID
full join project1 P
on E.EID=P.EID

--20.List all projects and the manager's name responsible for the employee assigned to that project.



--views (virtual tables)
select * from employee

select Eid,Ename,department 
from employee

--syntax for view
create view <viewname>
as
{
}

--create a view
create view vw_employeedetails
as
select Eid,Ename,department
from employee

select * from vw_employeedetails

--alter a view
alter view vw_employeedetails
as
select Eid,Ename,department,Eage
from employee

select * from vw_employeedetails

--drop a view
drop view vw_employeedetails

select * from vw_employeedetails


--create view using joins
create view vw_employeeprojectdetails
as
select E.Ename,P.Pname from employee E
join project P
on E.Eid=P.Eid

select * from vw_employeeprojectdetails

drop view vw_employeeprojectdetails


--update view
create view vw_employeedetails
as
select Eid,Ename,department 
from employee

select * from vw_employeedetails

update vw_employeedetails
set department='AI'
where Eid=1

select * from vw_employeedetails

--if we update anything in view table it will also update in main table
--visa versa (if you update anything in original table it update also in view table)

select * from employee

update employee
set department='data analyst'
where Eid=1

select * from employee
select * from vw_employeedetails

--update two tables using joins and view (view can't update two tables simultanuesly using view) (for that we use triggers)
create view vw_employeeproject
as
select E.EID,E.Ename,P.PID,P.Pname from employee1 E
join project1 P
on E.EID=P.EID

select * from employee1
select * from project1
select * from vw_employeeproject

update vw_employeeproject
set Ename='krunal', Pname='data analyst'
where EID='E101'

drop view vw_employeeproject

sp_helptext 'vw_employeedetails'

--for hide or encrypt the view table (also encrypt with create)
alter view vw_employeedetails
with encryption
as
select Eid,Ename,department 
from employee
 
--helptext is use for show only view the createview
sp_helptext 'vw_employeedetails'

--help is use to show full details
sp_help 'vw_employeedetails'

drop view vw_employeedetails

--fetch employeename, manager name, department name, project name

select * from employee1 E
select * from manager1
select * from department1
select * from project1

create view vw_employeedetails
as
select Ename,Mname,Dname,Pname from employee1 E
join manager1 M
on E.MID=M.MID
join department1 D
on E.DID=D.DID
join project1 P
on E.EID=P.EID

select * from vw_employeedetails

create view vw_employee1
as
select EID,Ename,MID,DID from employee1

update vw_employee1
set Ename='krunal'
where EID='E103'

select * from vw_employee1


--create emp table (EID,Ename,DID) and dpt(DID,Dname)

create table emp (Eid int,Ename varchar(20) ,Did int)
insert into emp values (1,'suresh',10),(2,'jayesh',10),(3,'mahesh',30)

create table dpt (Did int, Dname varchar(20))
insert into dpt values (10,'IT'),(20,'cloud'),(30,'AI')

select * from emp
select * from dpt

create view vw_empdptdetails
as
select E.Eid,E.Ename,D.Dname from emp E
join dpt D
on E.Did=D.Did

select * from vw_empdptdetails

update vw_empdptdetails
set Dname='QA'
where Eid=1

select * from vw_empdptdetails

select * from dpt
select * from emp

create table test (Tid int,Tname varchar(20),city varchar(20))
insert into test values (1,'QA','vadodara'),(2,'cloud','anand'),(3,'AI','ahemdabad')

create view vw_testdetails
as
select Tid,Tname from test

select * from vw_testdetails

alter table test
drop column Tid 

drop view vw_testdetails
drop table test

--schemabinding is use to user never drop column from base table or view table
create view vw_testdetails
with schemabinding
as
select Tid,Tname
from dbo.test

select * from vw_testdetails

alter table test
drop column Tid

alter table vw_testdetails
drop column Tid


--to show all the tables in database
select name
from sys.tables

--to show all the views in database
select name,create_date,modify_date
from sys.views


select * from student
select * from course


--INDEX (clustered & non clustered) 

--clustered (can one per table) (represent physical index(order) of a table)
--non clustered (can multiple per table) (if we didn't represent physical index it will be non clustered)

--syntax of an index
create index <IX_indexname>
on <tablename> <columnname>


select * from employee

--creating an index
create index IX_Esalary
on employee (Esalary ASC)

select Esalary from employee

sp_helpindex employee

--drop index
--drop index tablename.indexname
drop index employee.IX_Esalary

--composite index (create index multiple column same time)
create index IX_Esalarywithdepartment
on employee (department DESC, Esalary ASC)

select department,Esalary from employee


--clustered index
create clustered index IX_Eid
on employee (Eid)

select * from employee

sp_helpindex employee

drop index employee.IX_Eid

insert into employee values (14,'raj',21,'full stack',30000),(13,'meuhl',50,'agriculture',50000)
--it will add in ascending order in table because of clustered index


create table Samples (sid int primary key, sname varchar(20),sprice money)
insert into Samples values (2,'mobile',30000),(4,'laptop',40000),(1,'earphone',2000),(3,'tv',50000)

select * from Samples

create clustered index IX_sid
on Samples (sid)

--unique index (same as primary key but give much more performance)
create Unique Index IX_Eid
on employee (Eid)

select * from employee
insert into employee values (5,'jahan',15,'data analyst',33000)

drop index employee.IX_Eid

--creating nonclustered index  (whenever we are using where clause its known as filter index) (we are filtering a record using where clause)
create nonclustered index IX_empterminationdate
on employee (terminationdate)
where terminationdate is not null


--FUNCTIONS

--1.CAST (convert datatype)

select Ename,'$' + CAST(Esalary as varchar) 
from employee

--2.coalesce (to find first not null value)

alter table employee
add officeemail varchar(50)

alter table employee
add personalemail varchar(50)

select * from employee

update employee
set officeemail = 'krunal@rishabhsoft.com'
where Ename='krunal'

update employee
set personalemail = 'krunalpatel1903@gmail.com'
where Ename='krunal'

update employee
set personalemail = 'viral253@gmail.com'
where Ename='viral'

select Eid,Ename, Coalesce(officeemail,personalemail,'no email found') from employee

--3.datediff (for how long the employee is working in our organizations) (find out employees age)
--datediff(interval,start_date,end_date)

select Ename,Doj, datediff(year,Doj,'2026-01-31') as yearsofexperience from employee

select Ename,DOB, datediff(age,DOB,getdate()) as age from employee

--4.replace (String, String_to_replace, newString)

select REPLACE('suresh  patel','  ',' ')

select REPLACE(phone,'-','')

select REPLACE (phone,'+91','0')

--TRIM (remove extra space)
select trim(Ename) from employee

--LTRIM (remove left space)
--RTRIM (remove right space)

--len() (length)
select len(Ename) from employee

--upper (uppercase (all letter are in capital))
select UPPER(Ename) from employee

--lower (lowercase (all letter are in lower))
select LOWER(Ename) from employee

--concat

select 'suresh' + ' ' + 'patel'

select ('suresh' + ' ' + NULL)
select CONCAT('suresh', NULL)




--ADVANCED SQL (23-02-26)


--Stored procedure 

--1.basic storeprocedure
--2.input parameter (user will give some input)
--3.output parameter

--1. for creating basic store procedure syntax
create proc <___>
as 
begin

end


--advantages of store procedure
--1.performance (login purpose)
--2.security
--3.reduced traffic
--4.reusability

select * from employee

create procedure spGetEmpSalary
as 
begin
select Eid,Esalary from employee
end

spGetEmpSalary
EXEC spGetEmpSalary
execute spGetEmpSalary


--for update store procedure   (if we want to encrypt it we can write "with encryption" after alter line)
alter procedure spGetEmpSalary
as
begin
select Eid,department,Esalary from employee
end

execute spGetEmpSalary

sp_helptext spGetEmpSalary
sp_help spGetEmpSalary
sp_depends spGetEmpSalary


--for drop store procedure
drop procedure spGetEmpSalary


--2.inparameter (input parameter) store procedure  (for declaring a variable we write "@")
create procedure <Name>
@id int
as
begin

end


--
create procedure spgetempdetails
@id int
as 
begin
select * from employee where Eid=@id
end

spgetempdetails 1

drop procedure spgetempdetails


--Get order placed by customers by orderid
create procedure spcustomerdetails
@id int
as
begin
select * from customerdetails where cid=@id
end

spcustomerdetails 1

drop procedure spcustomerdetails

--get the employee details by department and gender
select * from employee

alter table employee
add gender varchar(20)

update employee
set gender='male'


create procedure spgetempdetailsbydepartmentandgender
@dname varchar(20),
@gender varchar(20)
as
begin
    select * from employee where department=@dname and gender=@gender
end

spgetempdetailsbydepartmentandgender 'full stack','male'
spgetempdetailsbydepartmentandgender @dname='full stack',@gender='male'

drop procedure spgetempdetailsbydepartmentandgender


--3.store procedure with output parameter
create procedure <>
@deptname varchar(20)
@empcount int output
as
begin

end

declare
execute
print

--find out total employees department-wise 
create procedure spgetempdeptcount
@deptname varchar(50),
@empcount int output
as
begin
    select @empcount=count(Eid)from employee
    where department=@deptname
end

--We declare @total because:
--Variables inside stored procedures are local.
--They cannot be accessed outside directly.
--OUTPUT parameter needs a variable in the calling scope to receive the value.
--So we declare @total to store the returned count.

spgetempdeptcount 'full stack'

declare @total int 
execute spgetempdeptcount 'full stack',@total out
print 'total count is-'+cast(@total as varchar)


--get the totalspend of customer by customerid
create procedure spgetcustomerspending
@custid int,
@totalspend money output
as
begin
    select @totalspend= sum(o.price * o.quantity) from customer c
    join orders o
    on c.cid=o.cid
    where cid=@custid
end

declare @totalbill money
execute spgetcustomerspending 1, @totalbill output
print 'the total bill of the customer is'+cast(@totalbill as varchar)


--inserting a record for new product
select * from product1

create procedure spaddingnewproduct
@pid int,
@pname varchar(20),
@qnt int,
@sunit int,
@price money
as
begin
    insert into product1(product_id,productname,quantity,salesunit,price) values (@pid,@pname,@qnt,@sunit,@price)
end

spaddingnewproduct 11,'mobile',3,2,40000

--updating a product
create procedure spupdateproduct
@pid int,
@price money
as
begin
    update product1
    set price=@price
    where product_id=@pid
end

spupdateproduct 1,20000

drop procedure spupdateproduct

select * from product1

--for deleting a product

create procedure spdeleteproduct
@pid int
as
begin
  delete from product1
  where product_id=@pid
end

spdeleteproduct 11

drop procedure spdeleteproduct


--to find products by productname in e-commerce website.

create procedure spfindproducts
@pname varchar(50)
as
begin 
    select * from product
    where pname like '%' + @pname + '%'
end

execute spfindproducts 'laptop'

drop procedure spfindproducts


--to decrease stock of a product after purchase.
create procedure spdecreasestock
@quantity int,
@pid int
as
begin
    update product
    set quantity=quantity-@quantity
    where pid=@pid
end

execute spdecreasestock 1,10

drop procedure spdecreasestock

--create a store procedure to retrieve details of all employees working in a given project..
create procedure spdetailsemployees
@departmentname varchar(20)
as
begin
    select * from employee_details
    where Edepartment=@departmentname
end

execute spdetailsemployees 'DA'

drop procedure spdetailsemployees

--create a store procedure that retrieve details of specific employees by employeeid.
create procedure spempdetailsbyeid
@eid int
as
begin
    select * from employee
    where Eid=@eid
end

execute spempdetailsbyeid 1

drop procedure spempdetailsbyeid

--create a procedure to increase or decrease product price.
create procedure spincdecproductprice
@pname varchar(20),
@percentage decimal(5,2)  -- -20 (20%)
as
begin
    update product1
    set price = price + (price*@percentage)
    where productname=@pname
end

execute spincdecproductprice 'smartphone',0.10

select * from product1

drop procedure spincdecproductprice

--create a procedure that returns the max salary of employees respect to their department.
create procedure spfindmaxsalaryofemp
@department varchar(20),
@maxsalary int output,
@minsalary int output,
@avgsalary int output
as
begin
    select @maxsalary=max(Esalary),@minsalary=min(Esalary),@avgsalary=avg(Esalary) from employee_details
    where Edepartment=@department
end

drop procedure spfindmaxsalaryofemp

declare @totalmax int,@totalmin int, @totalavg int 
execute spfindmaxsalaryofemp 'DE',@totalmax output,@totalmin output,@totalavg output
print 'max salary is-'+cast(@totalmax as varchar) 
print 'min salary is-'+cast(@totalmin as varchar) 
print 'avg salary is-'+cast(@totalavg as varchar)


select name from sys.procedures

drop procedure spgetempdeptcount
drop procedure spaddingnewproduct


--TRIGGERS

--event driven
--DML (after (For), instead of trigger)
--DDL
--logon

select name from sys.triggers

--Syntax
create trigger <name>
on <table/DB/ALL server>
for <DML/DDL>     --exp.(insert)
as
begin
end

--simple trigger
create trigger trinsertmessage
on employee
for insert    --(update,delete)
as
begin
    print 'the record has been successfully inserted into employee table'
end

drop trigger trinsertmessage

--for disable trigger  (trigger us the only function in SQL which you can disable)
disable trigger <triggername> on <tablename>
disable all trigger on <tablename>

--for enable trigger
enable trigger <triggername> on <tablename>

--for drop trigger
drop trigger <triggername>

--for drop trigger on database or server
drop trigger <triggername> on database/server

--(always use camelcasing rule for creating a variable name)

--create trigger to restrict from creating a table.   (it is applicable for only that database which are you currently working)
create trigger trRestrictTableCreation
on database  
for create_table
as
begin 
     print 'you are not allowed to create a new table,'
     Rollback;  --undo the transaction
end

create table test1(tid int)

--for drop trigger on database
drop trigger trRestrictTableCreation on database

--for alter trigger
alter trigger trRestrictTableCreation
on
for
as
begin
end


--create trigger on server
create trigger trRestrictTableCreation
on all server
for create_table
as
begin
    print 'you are not allowed to create a table'
    rollback;
end

drop trigger trRestrictTableCreation on all server


--for alter,drop a table using trigger
create trigger trRestrictTableAltering
on database
for alter_table  
as
begin
    print 'you are not allowed to alter table'
    rollback;
end

select name from sys.triggers

alter trigger trRestrictTableAltering
on database
for alter_table,create_table  
as
begin
    print 'you are not allowed to alter table'
    rollback;
end

drop trigger trRestricttableAltering on database

--drop table by trigger
create trigger trRestrictTableAltering
on database
for drop_table  
as
begin
    print 'you are not allowed to alter table'
    rollback;
end

--we can add multiple triggers in one creation
--we can't alter drop trigger


-- temporary table/magical table
--inserted i/ deleted d

-- Temporary Table / Magical Table
-- inserted i (insert/update) , deleted d (delete/old)

Create Table Test2(TID INT)

Create Trigger tr_tblEmployee_ForInsert
ON Test2
FOR Insert
AS
Begin
    PRINT 'A new employee has been added';
    SELECT * FROM inserted;
END

Select * From Test2

Insert into Test2 values(1),(2)
Insert into Test2 values(2)


Create Trigger tr_tblEmployee_ForInsertAndDelete
ON Test2
FOR UPDATE
AS
Begin
    PRINT 'A new employee has been added';
    SELECT * FROM deleted;
    SELECT * FROM inserted;
End

UPDATE Test2
set TID = 2
where tid = 1

select * from Test2

Create Trigger tr_tblEmployee_ForDelete
ON Test2
FOR Delete
AS
Begin
    PRINT 'A new employee has been added';
    SELECT * FROM deleted;
    SELECT * FROM inserted;
End

Delete From Test2 where TID = 1


Create Trigger DeleteMsg
on test2
For delete,update
As
Begin
	Print 'Your Record has been successfuly.';
    Select * from deleted;
    select * from inserted;
End

delete from test2
where Tid=2

update test2
set Tid=3
where Tid= 

select * from test2

select name from sys.tables

select name from sys.triggers

select * from employee

--trigger exists
--to ensure non negative salary
create trigger tr_SalaryNonNegative
on employee
for insert
as
begin 
      if exists (select 1 from inserted where Esalary<0)
      begin
          print 'salary should not be negative. transaction cancle';
          rollback;   --this "undoes" the insert and update;
      end
end

drop trigger tr_SalaryNonNegative 

insert into employee (Eid,Ename,Eage,department,Esalary,gender) values (15,'kajan',56,'DA',40000,'male'),
(16,'manan',45,'QA',-30000,'male'),
(17,'hiya',22,'DA',50000,'female')

delete from employee
where Eid in (15,16,17)

select * from employee

sp_help employee

--we can do this operation using constraint check but trigger are faster than the constraints.


--after for triggers

--after trigger for insert
CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)


Insert into tblEmployee values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3,'Pam', 6000, 'Female', 1)

select * from tblEmployee

CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)

select * from tblEmployeeAudit


CREATE TRIGGER tr_tblEMployee_ForInsert
ON tblEmployee
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END

Insert into tblEmployee values (7,'Tan', 2300, 'Female', 3)

select * from tblEmployee
select * from tblEmployeeAudit

--after trigger for delete
CREATE TRIGGER tr_tblEMployee_ForDelete
ON tblEmployee
FOR DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from deleted
 
 insert into tblEmployeeAudit 
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END

delete from tblEmployee
where Id=7

select * from tblEmployee
select * from tblEmployeeAudit

--after trigger for update
create trigger trEmployee_ForUpdate
on tblEmployee
for update
as
begin
    select * from inserted;
    select * from deleted;
end


--instead of triggers
--it is used only on views,specially we are updating multiple base tables.

drop table tblEmployee
drop table tblemployeeAudit

--instead of insert
CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Gender nvarchar(10),
  DepartmentId int
)

CREATE TABLE tblDepartment
(
 DeptId int Primary Key,
 DeptName nvarchar(20)
)

Insert into tblEmployee values (1,'John', 'Male', 3)
Insert into tblEmployee values (2,'Mike', 'Male', 2)
Insert into tblEmployee values (3,'Pam', 'Female', 1)
Insert into tblEmployee values (4,'Todd', 'Male', 4)
Insert into tblEmployee values (5,'Sara', 'Female', 1)
Insert into tblEmployee values (6,'Ben', 'Male', 3)

Insert into tblDepartment values (1,'IT')
Insert into tblDepartment values (2,'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4,'Admin')

select * from tblEmployee
select * from tblDepartment

Create view vWEmployeeDetails
as
Select Id, Name, Gender, DeptName
from tblEmployee 
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId

select * from vWEmployeeDetails

Insert into vWEmployeeDetails values(7, 'Valarie', 'Female', 'IT')
--we cannot add values using viewtable it will show error

Create trigger tr_vWEmployeeDetails_InsteadOfInsert
on vWEmployeeDetails
Instead Of Insert
as
Begin
 Declare @DeptId int
 
 --Check if there is a valid DepartmentId
 --for the given DepartmentName
 Select @DeptId = DeptId 
 from tblDepartment 
 join inserted
 on inserted.DeptName = tblDepartment.DeptName

 --If DepartmentId is null throw an error
 --and stop processing
 if(@DeptId is null)
 Begin
  Raiserror('Invalid Department Name. Statement terminated', 16, 1)
  return
 End

 --Finally insert into tblEmployee table
 Insert into tblEmployee(Id, Name, Gender, DepartmentId)
 Select Id, Name, Gender, @DeptId
 from inserted
End

Insert into vWEmployeeDetails values(7, 'Valarie', 'Female', 'IT')

select * from vWEmployeeDetails
select * from tblEmployee

drop table tblEmployee
drop table tblDepartment

drop view vWEmployeeDetails

--instead of update trigger
CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Gender nvarchar(10),
  DepartmentId int
)

CREATE TABLE tblDepartment
(
 DeptId int Primary Key,
 DeptName nvarchar(20)
)

Insert into tblEmployee values (1,'John', 'Male', 3)
Insert into tblEmployee values (2,'Mike', 'Male', 2)
Insert into tblEmployee values (3,'Pam', 'Female', 1)
Insert into tblEmployee values (4,'Todd', 'Male', 4)
Insert into tblEmployee values (5,'Sara', 'Female', 1)
Insert into tblEmployee values (6,'Ben', 'Male', 3)

Insert into tblDepartment values (1,'IT')
Insert into tblDepartment values (2,'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4,'Admin')


Create view vWEmployeeDetails
as
Select Id, Name, Gender, DeptName
from tblEmployee 
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId

select * from vWEmployeeDetails
select * from tblEmployee
select * from tblDepartment

--1.limitation (updating two table simultaniously)
--without triggers its not possible to change two base tables with views
Update vWEmployeeDetails 
set Name = 'Johny', DeptName = 'IT'

--2.conflicts (even though if we updated only one row it will update other records also)
--we have to change only single table at a time
Update vWEmployeeDetails 
set DeptName = 'IT'
where Id = 1

select * from vWEmployeeDetails

select * from tblEmployee
select * from tblDepartment

Update tblDepartment 
set DeptName = 'HR' 
where DeptId = 3

--create a trigger
Create Trigger tr_vWEmployeeDetails_InsteadOfUpdate
on vWEmployeeDetails
instead of update
as
Begin
 -- if EmployeeId is updated
 if(Update(Id))
 Begin
  Raiserror('Id cannot be changed', 16, 1)
  Return
 End
 
 -- If DeptName is updated
 if(Update(DeptName)) 
 Begin
  Declare @DeptId int

  Select @DeptId = DeptId
  from tblDepartment
  join inserted
  on inserted.DeptName = tblDepartment.DeptName
  
  if(@DeptId is NULL )
  Begin
   Raiserror('Invalid Department Name', 16, 1)
   Return
  End
  
  Update tblEmployee set DepartmentId = @DeptId
  from inserted
  join tblEmployee
  on tblEmployee.Id = inserted.id
 End
 
 -- If gender is updated
 if(Update(Gender))
 Begin
  Update tblEmployee set Gender = inserted.Gender
  from inserted
  join tblEmployee
  on tblEmployee.Id = inserted.id
 End
 
 -- If Name is updated
 if(Update(Name))
 Begin
  Update tblEmployee set Name = inserted.Name
  from inserted
  join tblEmployee
  on tblEmployee.Id = inserted.id
 End
End

select * from vWEmployeeDetails

--Now, let's try to update JOHN's Department to IT. 
Update vWEmployeeDetails 
set DeptName = 'IT'
where Id = 1

drop table tblEmployee
drop table tblDepartment
drop view vWEmployeeDetails

--instead of delete

CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Gender nvarchar(10),
  DepartmentId int
)

CREATE TABLE tblDepartment
(
 DeptId int Primary Key,
 DeptName nvarchar(20)
)

Insert into tblEmployee values (1,'John', 'Male', 3)
Insert into tblEmployee values (2,'Mike', 'Male', 2)
Insert into tblEmployee values (3,'Pam', 'Female', 1)
Insert into tblEmployee values (4,'Todd', 'Male', 4)
Insert into tblEmployee values (5,'Sara', 'Female', 1)
Insert into tblEmployee values (6,'Ben', 'Male', 3)


Insert into tblDepartment values (1,'IT')
Insert into tblDepartment values (2,'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4,'Admin')

Create view vWEmployeeDetails
as
Select Id, Name, Gender, DeptName
from tblEmployee 
join tblDepartment
on tblEmployee.DepartmentId = tblDepartment.DeptId

select * from vWEmployeeDetails

--Now, let's try to delete a row from the view, and we get the same error.
Delete from vWEmployeeDetails 
where Id = 1

--create trigger for delete
Create Trigger tr_vWEmployeeDetails_InsteadOfDelete
on vWEmployeeDetails
instead of delete
as
Begin
 Delete tblEmployee 
 from tblEmployee
 join deleted
 on tblEmployee.Id = deleted.Id
 
 --Subquery
 --Delete from tblEmployee 
 --where Id in (Select Id from deleted)
End

Delete from vWEmployeeDetails 
where Id = 1

select * from vWEmployeeDetails

drop table tblEmployee
drop table tblDepartment
drop view vWEmployeeDetails


--logon trigger (generally used on server level)

select * from sys.dm_exec_sessions

select is_user_process,login_name 
from sys.dm_exec_sessions
order by login_time DESC

--create logon trigger
create trigger trlogontrigger
on all server
for logon
as
begin
     DECLARE @LoginName NVARCHAR(100)
     Set @LoginName = ORIGINAL_LOGIN()

    if (SELECT COUNT(*) FROM sys.dm_exec_sessions
         WHERE is_user_process = 1
         AND original_login_name = @LoginName) > 3
    BEGIN
         Print 'Fourth connection of ' + @LoginName + ' blocked'
         ROLLBACK;
    END
end

drop trigger trlogontrigger on all server


--windows functions (windows funtions always work with alias)
--over (to group using rows)(individual)
--partition (it will give individual rows and gives output in alphabetical order)
--default (range between unbounded preceding and current row) (if we write rows instead of range it will give rows wise output)

select * from employee

select Eid,Ename,Esalary,department, 
sum(Esalary) over (partition by department) as deptwise
from employee

select Eid,Ename,Esalary, 
sum(Esalary) over (order by Esalary rows between unbounded preceding and current row) as Total
from employee

select Eid,Ename,Esalary, 
sum(Esalary) over (order by Esalary) as Total,
avg(Esalary) over (order by Esalary) as average,
count(Esalary) over (order by Esalary rows between unbounded preceding and current row) as count
from employee

--rank will skip the value
select Eid,Ename,Esalary,
Rank() over (order by Esalary) as rankvalue
from employee

select Eid,Ename,Esalary,
Rank() over (order by Esalary DESC) as rankvalue
from employee


--dense_rank will not skip the value
select Eid,Ename,Esalary,
dense_rank() over (order by Esalary) as rankDensevalue
from employee

select Eid,Ename,Esalary,
dense_rank() over (order by Esalary DESC) as rankDensevalue
from employee

--to find out specific rows
select Eid,Ename,Esalary,
Row_number() over (order by Esalary) as rankDensevalue
from employee

select Eid,Ename,Esalary,
Row_number() over (order by Esalary DESC) as rankDensevalue
from employee

select * from Employeebackupdate

select * from employee

--OFFSET   (use to skip the number of rows)(like you want 2nd highest Esalary)
--FETCH next (to retrieve the number of rows)\

--it always works with order by

--SYNTAX
select * from tablename
order by columnname
OFFSET 'num of rows to skip' row 
fetch next 'number of rows to retrive' row only

select top 2 * from employee
order by Esalary DESC

select * from employee
order by Esalary DESC
offset 1 row   --(it will skip first row)
fetch next 1 row only  --(if we fetch 2 then it will give 2nd and 3rd highest)

--CTE (Common Table Expression)

--RULES--
--always starts with 'WITH' keyword
--always ends with select * from CTE
--CTEs are known as temporary table
--it executes only with CTE function
--CTE always works with alias

--SYNTAX

with CTEname as
(
    select * from employee
)
select * from CTEname

--extremly less space
--use to improve readability as compare to subqueries, it allows recursive, useability

--create CTE to find employee with salary>21000
with empsalary as
(
   select * from employee
   where Esalary>21000
)
select * from empsalary

--create CTE to find out total salary deparment-wise
with totalsalary as 
(
    select department,sum(Esalary) as totalsalary from employee
    group by department
)
select * from totalsalary where department = 'IT'

--to find emp with highest salary department wise
with highestempsalary as
(
   select Eid,Ename,Esalary,department,
   ROW_NUMBER() over (partition by department order by Esalary DESC) as rownum
   from employee
)
select * from highestempsalary where rownum=1

--Examples of recursive call

--to find employees having salary greater than the average salary of their deparment
with avgsalary as
(
    select department,avg(Esalary) as deptavg 
    from employee
    group by department
),
highsalarythenavg as
(
     select e.Eid,e.Ename,e.department,e.Esalary
     from employee e
     join avgsalary a
     on a.department=e.department
     where e.Esalary > a.deptavg
)
select * from highsalarythenavg


--practice queries

--to find the highest selling product from each city
with highsell as
(
    select city,salesunit,
    row_number() over( partition by city order by salesunit DESC) as rownum
    from product1
)
select * from highsell where rownum=1

with highsell as
(
   select city,max(salesunit) as highestsell from product1
   group by city
)
select * from highsell

select * from product1

--to find top 1 customer from each city
with topcustomer as
(
    select cid,cname,city,
    ROW_NUMBER() over (partition by city order by cid desc) rownum
    from customerdetails
)
select * from topcustomer where rownum=1

select * from customerdetails

--to find employees with lower salary as compare to department average salary
select * from employee

with avgsalary as
(
    select department,avg(Esalary) as deptavg 
    from employee
    group by department
),
lowsalarythenavg as
(
     select e.Eid,e.Ename,e.department,e.Esalary
     from employee e
     join avgsalary a
     on a.department=e.department
     where e.Esalary < a.deptavg
)
select * from lowsalarythenavg


--find 4,5 employees with highest salary
select * from employee
order by Esalary DESC
offset 3 row
fetch next 2 row only