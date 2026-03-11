use JANUARY2026

create table product1 (product_id int primary key, productname varchar(255), quantity int check (quantity>=0), salesunit int, city varchar (20))

alter table product1
add price money

select * from product1

insert into product1 values (1,'smartphone',50,5,'vadodara',25000),(2,'laptop',30,3,'vadodara',50000),(3,'smartphone',70,17,'mumbai',28000),(4,'laptop',45,13,'mumbai',42000),(5,'smartphone',40,12,'surat',23000),(6,'laptop',48,11,'surat',41000),(7,'smartphone',60,15,'ahemdabad',29000),(8,'laptop',40,4,'ahemdabad',48000),(9,'smartphone',80,43,'pune',31000),(10,'laptop',70,33,'pune',50000)

--single value subqueries

--1.Find all products that have a Quantity greater than the average quantity of all products.
select product_id,productname,quantity from product1
where quantity 
>
(select avg(quantity) from product1)

--2.Display the ProductName of products sold in the same city as 'Laptop'.
select distinct productname,city,salesunit from product1
where city in
(select city
from product1
where productname='laptop')

--3.Find the details of the products with the maximum Quantity.
select * from product1
where quantity=(select max(quantity) from product1)

--4.List products whose salesUnit is higher than the salesUnit of ProductID 5.
select productname,salesunit
from product1
where salesunit>
(select salesunit from product1
where product_id=5)

--5.Find products that have a lower Quantity than the minimum Quantity found in 'Vadodara'.
select productname,quantity from product1
where quantity<
(select min(quantity)
from product1
where city='vadodara')

--6.Display products whose salesUnit is greater than the average salesUnit of products in 'Mumbai'.
select productname,salesunit from product1
where salesunit >
(select avg(salesunit)
from product1
where city='mumbai')

--7.Find the product name with the lowest salesUnit.
select productname,salesunit from product1
where salesunit = 
(select min(salesunit) from product1)

--8.List all products sold in cities that have more than 50 total Quantity across all their products.
select * from product1
where city in
(select city from product1
group by city
having sum(quantity)>50)


select * from product1

--9.Show products whose Quantity is exactly equal to the salesUnit of 'Smartphone'.
select productname,quantity from product1
where quantity=
(select sum(salesunit) from product1
where productname='smartphone')

--10.Find the city which has the product with the highest salesUnit.
select city,productname from product1
where salesunit=
(select max(salesunit) from product1)


--(IN,ALL,ANY & CORELATED)
--11.Find all products sold in cities where at least one product has a Quantity of zero.
select productname,city from product1
where city in 
(select city from product1
where quantity=0)

--12.List products whose salesUnit is greater than the salesUnit of all products in 'Surat'.
select productname,salesunit from product1
where salesunit > ALL
(select salesunit from product1
where city='surat')

--13.Find products that belong to cities where the average salesUnit is greater than 10.
select productname from product1
where city in 
(select city from product1
group by city
having avg(salesunit)>10)

--14.Display products that have a Quantity greater than any product's Quantity in 'Pune'.
select productname from product1
where quantity >
ANY (select quantity from product1
where city='pune')

--15. Find all products whose ProductName is the same as any product sold in 'Ahmadabad'.
select productname from product1
where productname = 
ANY(select productname from product1
where city='ahemdabad')

--16.Select products where the Quantity is greater than the average Quantity of their own City.
select productname,city,quantity from product1
where quantity >
(select avg(quantity) from product1
where city in 
(select city from product1
group by city))

select * from product1 p1
where quantity >
(select avg(quantity) from product1 p2
where p2.city = p1.city)

--17.Find cities where the total salesUnit is higher than the total salesUnit of 'Vadodara'.
select city,productname,quantity,salesunit from product1
where salesunit >
(select sum(salesunit) from product1
where city='vadodara')

select city from product1
group by city
having sum(salesunit)>
(select sum(salesunit) from product1
where city='vadodara')

--18.List products that are sold in the city that has the maximum variety (count) of products.
select productname from product1
where productname in 
(select count(productname) from product1
where city in (select city from product1
group by city))

select * from product1
where city = 
(select top 1 city from product1
group by city
order by count(*) DESC)

--19.Find the second highest Quantity from the Product table using a subquery.
select max(quantity) from product1
where quantity <
(select max(quantity) from product1)


--20.Display the ProductName and a calculated column showing the difference between its Quantity and the global average Quantity.
select productname, quantity
- 
(select avg(quantity) from product1) As quantity_diff from product1
