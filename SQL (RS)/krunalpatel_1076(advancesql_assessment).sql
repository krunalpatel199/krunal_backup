--krunalpatel (int_1076)

use JANUARY2026

--1.Create Stored Procedure to get orders placed by Customers based on City.
select * from orderdeatails
select * from customerdetails

create procedure sp_getordersbycustomer
@city varchar(50)
as 
begin
     select * from orderdeatails o
     join customerdetails c
     on o.cid=c.cid
     where c.city=@city
end

execute sp_getordersbycustomer 'ankleshwar'

--2.Create Stored Procedure to find out total employees department-wise

select * from employee

create procedure sp_getfindemployee
@department varchar(50),
@empcount int output
as
begin
     select @empcount=count(Eid) from employee
     where department=@department
end

declare @totalemp int
execute sp_getfindemployee 'data analyst',@totalemp output
print 'total employee is'+cast(@totalemp as varchar)

--3.Create Stored Procedure to find products by productname in e-commerce website
select * from product1

create procedure sp_findproduct
@pname varchar(30)
as
begin
    select product_id,productname,city,price,quantity from product1
    where productname=@pname
end

execute sp_findproduct 'smartphone'

--4.Create procedure to increase or decrease product price of a specific category
select * from product1
sp_help product1

create procedure sp_incdecproductprice
@oldprice money,
@newprice money
as
begin
    update product1
    set price=@newprice
    where price=@oldprice
end

execute sp_incdecproductprice 22000,25000

--5.Create a procedure that returns max salary of employees with respect to their department.
select * from employee

create procedure sp_returnmaxsalaryofemp
@department varchar(30),
@maxsalary money output
as
begin
     select @maxsalary=max(Esalary) from employee
     where department=@department
end

declare @maxtotal money
execute sp_returnmaxsalaryofemp 'full stack',@maxtotal output
print 'maximum salary is'+cast(@maxtotal as varchar)

--6.Create a Trigger to ensure that Salary is non negative
select * from employee

create trigger tr_ensuresalarynonnegative
on employee
for insert
as
begin
     if exists(select 1 from employee where Esalary<0)
     begin
          print 'you entered salary in negative.'
          rollback;
     end
end

insert into employee values (15,'jack',22,'full stack',-30000,'male')

--7.Create a Update Trigger to log Salary change
select * from employee

create trigger tr_updatetologsalarychange
on employee
for update
as
begin
     print 'you can not update the salary.'
     rollback;
end

update employee
set Esalary=30000
where Ename='krunal'

--8.Create a Trigger to ensure that Product Price never exceeds 9999.
select * from product1

create trigger tr_ensureproductpriceless9999
on product1
for insert
as
begin
     if exists(select 1 from product1 where price>9999)
     begin
          print 'product price never exceeds 9999.'
          rollback;
     end
end

insert into product1 values (11,'TV',30,4,'jaipur',12000)

--9.Create a trigger that prevents a user from deleting more than 5 products in a single DELETE statement.
select * from product1

create trigger tr_preventtodeleteproductgt5
on product1
for delete
as
begin
     if exists(select 6 from product1)
     begin
          print 'you can not delete more than 5 products in a row'
          rollback;
     end
end

delete from product1
where quantity>40

--10.Create a trigger to prevent Schema changes/ Structure modification on a database.
create trigger tr_preventschemachange
on database
for alter_table
as
begin
     print 'you can not change the schema'
     rollback;
end

alter table employee
drop column gender