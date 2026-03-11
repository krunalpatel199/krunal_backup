--ASSIGNMENT

--(1)Literal SELECT Statement

--1.Execute a literal select statement that returns your name.
select 'krunal' + 'patel' as myname

--2.Write the literal select statement that evaluates the product of 7 and 4.
select 7*4 as product

--3.Write the literal select statement that takes the difference of 7 and 4 then multiplies that difference by 8.
select (7-4)*8 as multiplies

--4.Write a literal select statement that returns the phrase “Brewster’s SQL Training Class”. (Hint: note the single apostrophe in the string).
Select 'Brewster''s SQL Training Class' as phrase

--5.Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column.
select 'day 1 of training' as phrase, 5*3 as multiplies

--(2)Select Statement

create database Assignment1
use Assignment1

create table HumanResourceEmployee(NationalIDNumber INT, Jobtitle varchar(20), Birthdate DATE)

select * from HumanResourceEmployee

insert into HumanResourceEmployee values (101, 'Analyst', '2005-03-19'), (102, 'manager', '2004-04-22'), (103, 'sales', '2003-03-12'), (104, 'CA', '2000-05-30')
delete TOP (3) from HumanResourceEmployee
--1.Retrieve all rows from the HumanResources.Employee table. Return only the NationalIDNumber column.
select NationalIDNumber
from HumanResourceEmployee

--2.Retrieve all rows from the HumanResources.Employee table. Return the NationalIDNumber and JobTitle columns.
select NationalIDNumber, JobTitle
from HumanResourceEmployee

--3.Retrieve the top 20 percent of rows from the HumanResources.Employee table. Return the NationalIDNumber, JobTitle and BirthDate columns.
select TOP 20 percent NationalIDNumber,Jobtitle,Birthdate
from HumanResourceEmployee

--4.Retrieve the top 500 rows from the HumanResources.Employee table. Return the NationalIDNumber, JobTitle and BirthDate columns. Give the NationalIDNumber column an alias, “SSN”, and the JobTitle column an alias, “Job Title”.
select TOP 2 NationalIDNumber as SSN, JobTitle as JOBTITLE, Birthdate
from HumanResourceEmployee

--5.Return all rows and all columns from the Sales.SalesOrderHeader table.
select * from Employee

--6.Return the top 50 percent of rows and all columns from the Sales.Customer table.
select TOP 50 PERCENT * from Employee

--7.Return the Name column from the Production.vProductAndDescription view. Give this column an alias “Product’s Name”.
select Ename as "product's Name" from Employee

--8.Return the top 400 rows from HumanResources.Department
select TOP 2 * from HumanResourceEmployee

--9.Return all rows and columns from the table named Production.BillOfMaterials
select * from Employee

--10.Return the top 1500 rows and columns from the view named Sales.vPersonDemographics
select TOP 3 * from Employee