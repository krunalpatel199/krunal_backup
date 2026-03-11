create database sptriggerassignment

use sptriggerassignment

create table employees (employeeid int primary key, firstname varchar(50) not null, lastname varchar(50) not null,email varchar(100) unique, departmentid int foreign key references departments (departmentid), salary decimal(10,2) check (salary>0), hiredate date not null, status varchar(20) default 'active')
insert into employees values (101,'john','smith','john@email.com',1,55000),
(102,'sarah','johnson','sarah@email.com',2,62000),
(103,'michael','brown','michae@email.com',1,48000),
(104,'emily','davis','emily@email.com',3,71000),
(105,'david','wilson','david@email.com',2,54000)

create table departments (departmentid int primary key, departmentname varchar(100) not null, location varchar(100), budget decimal(12,2))
insert into departments values (1,'IT','new york',500000),
(2,'HR','chicago',300000),
(3,'sales','boston',400000)

create table products (productid int primary key, productname varchar(100) not null, category varchar(50), price decimal(10,2) not null, stockquantity int default 0, recorderlevel int default 10)
insert into products values (201,'laptop','electronics',1200.00,50,10),
(202,'mouse','electronics',25.00,150,20),
(203,'desk chair','furniture',250.00,30,5),
(204,'monitor','electronics',300.00,8,10),
(205,'keyboard','electronics',75.00,100,15)

create table orders (orderid int primary key, productid int foreign key references products (productid), quantity int not null, orderdate datetime default getdate(), totalamount decimal(10,2), status varchar(20) default 'pending')


create table employeeaudit (auditid int primary key, employeeid int, action varchar(50), oldsalary decimal(10,2), newsalary decimal(10,2), changedate datetime)