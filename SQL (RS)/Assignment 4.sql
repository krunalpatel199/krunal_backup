-- ASSIGNMENT 4

use JANUARY2026

create table employee_details (EId int,Ename varchar(20),Eage int,Edepartment varchar(20),city varchar(20))

alter table employee_details
add Esalary money

select * from employee_details

insert into employee_details values (1,'krunal',20,'DA','mumbai',30000),
(2,'viral',21,'FS','delhi',25000),
(3,'aditya',23,'DS','ahemdabad',23000),
(4,'rutul',23,'DS','chennai',23000),
(5,'mahesh',25,'QA','udaipur',NULL),
(6,'ramesh',28,'DE','jaipur',12000),
(7,'naresh',22,'QA','baroda',14000),
(8,'yash',22,'DE','new york',80000),
(9,'zeel',23,'DA','new jersey',50000)

insert into employee_details values (10,'suresh',40,'DE','surat',40000)

--1.
select Ename as namecolumn
from employee_details
where Ename='suresh'

--2.
select top 100 * from employee_details
where Esalary is NOT NULL

--3.
select * from employee_details
where Ename < 'd'

--4.
select * from employee_details
where city='new york'

--5.
select Ename as Employee_name
from employee_details 
where Ename='ramesh'

--6.
select * from employee_details
where (Edepartment='QA') or (Eage<23 AND Esalary<50000)

--7.
select * from employee_details
where Edepartment in ('DA','FS','DE')

select * from employee_details
where Edepartment='DA' or Edepartment='FS' or Edepartment='DE'

--8.
select * from employee_details
where Ename like 'a%'

--9.
select * from employee_details
where Ename like '%a'

--10.
select * from employee_details
where Edepartment is NOT NULL

--11.
select Eid,Esalary 
from employee_details
where Edepartment is NOT NULL AND Esalary=20000
