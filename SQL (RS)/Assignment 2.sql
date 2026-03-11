use JANUARY2026

-- PART 1 (INSERT OPERATION)

create table IT(EID int identity (101,1) , Ename varchar(20), Eage int, Esalary money, Edepartment varchar(100))

select * from IT

drop table IT

insert into IT (Ename,Eage,Esalary) values ('suresh patel',28,55000)

insert into IT (Ename) values ('mahesh patel')

insert into IT (Ename,Eage,Esalary) values ('ramesh patel',23,40000),('naresh patel',45,34000),('paresh patel',54,60000)

insert into IT (Ename) values ('jayesh patel')

insert into IT (Ename,Eage,Esalary,Edepartment) values ('viren patel',44,65000,'HR')


--PART 2 (UPDATE OPERATION)

update IT
set Edepartment='Marketing'
where Edepartment is NULL

alter table IT
add city varchar(50)

select * from IT

update IT
set city='vadodara'
where Esalary=40000

update IT
set Edepartment='Tech'
where city='vadodara'

update IT
set Esalary=75000
where EID in (101,103)

update IT
set Edepartment='management'
where Eage=22

update IT
set Esalary=80000
where Ename='suresh patel'


--PART 3 (DELETE OPERATION)

delete from IT
where EID=105

select * from IT

delete from IT
where Edepartment='Marketing'

delete from IT
where Eage=25

delete from IT
where Esalary is NULL

truncate table IT
