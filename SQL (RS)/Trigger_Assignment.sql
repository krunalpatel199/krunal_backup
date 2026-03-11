use january2026

select name from sys.triggers


--1. Create an AFTER INSERT trigger to log new employees.
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
Insert into tblEmployee values (4,'todd',4800,'Male',4)
Insert into tblEmployee values (5,'sara',3200,'Female',1)
Insert into tblEmployee values (6,'ben',4800,'Male',3)

select * from tblEmployee

CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
)

create trigger tr_tblEmployee_ForInsert
on tblEmployee
for insert
as
begin
    declare @Id int
    select @Id=Id from inserted

    insert into tblEmployeeAudit values ('New value id' + cast(@Id as nvarchar(5)) + 'added at' + cast(getdate() as nvarchar(20)))
end

Insert into tblEmployee values (7,'Tan', 2300, 'Female', 3)

select * from tblEmployee
select * from tblEmployeeAudit

--2. Create a trigger to prevent salary < 10000.
create trigger tr_tblEmployee_preventsalary
on tblEmployee
for insert
as
begin
     if exists(select 1 from inserted where Salary<10000)
     begin
     print 'you can not insert salary less than 10000'
     rollback;
     end
end

insert into tblEmployee values (8,'krunal',8000,'male',1)

--3. Create AFTER DELETE trigger to log deleted records.
create trigger tr_tblEmployee_Fordelete
on tblEmployee
for delete
as
begin
     declare @Id int
     select @Id=Id from deleted

     insert into tblEmployeeAudit values ('existing employee with id'+ cast(@Id as nvarchar(5)) + 'deleted from' + cast(GETDATE() as nvarchar(20)))
end

delete from tblEmployee
where Id=8

select * from tblEmployee
select * from tblEmployeeAudit

--4. How to disable a trigger?
disable trigger tr_tblEmployee_ForInsert on tblEmployee

--5. How to enable a trigger?
enable trigger tr_tblEmployee_ForInsert on tblEmployee

--6. How to drop a trigger?
drop trigger tr_tblEmployee_ForInsert 

--7. Prevent deletion of Manager role.


--8. Create trigger to prevent duplicate email.
--9. How to check existing triggers on a table?
--10.Create a trigger to prevent UPDATE of primary key.
--11.Create a trigger to prevent table drop.
--12.Create a trigger to log when an employee record is deleted.
--13.Create a trigger to prevent negative stock quantity.
--14.Create a trigger to ensure the Salary is non negative.
--15.Disable all triggers on a table.
