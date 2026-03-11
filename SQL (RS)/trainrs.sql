create database trainrs

use trainrs

create table trains(train_id int primary key,train_name varchar(50) not null, source_name varchar(50) not null, destination_name varchar(50) not null, departure_time time not null,arrival_time time not null, distance_km int check(distance_km>0))

alter table trains
alter column departure_time varchar(50)

alter table trains
alter column arrival_time varchar(50)


insert into trains values (101,'Shatabdi Exp', 'Delhi', 'Bhopal', '06:00:00', '14:00:00', 700),
(102, 'Rajdhani Exp', 'Delhi', 'Mumbai', '16:00', '08:00', 1400),
(103, 'Duronto Exp', 'Mumbai', 'Chennai', '20:00', '10:00', 1300),
(104, 'Garib Rath', 'Kolkata', 'Delhi', '12:00', '06:00', 1500),
(105, 'Chennai Exp', 'Chennai', 'Delhi', '08:00', '22:00', 2200),
(106, 'Howrah Exp', 'Howrah', 'Mumbai', '10:00', '20:00', 1960),
(107, 'Nizamuddin Exp', 'Delhi', 'Hyderabad', '15:00', '05:00', 1675),
(108, 'Goa Exp', 'Mumbai', 'Goa', '07:00', '15:00', 589),
(109, 'Kashi Exp', 'Varanasi', 'Delhi', '05:30', '13:30', 820),
(110, 'Jammu Tawi Exp', 'Delhi', 'Jammu', '18:00', '07:00', 670),
(111, 'Karnataka Exp', 'Bangalore', 'Delhi', '21:00', '14:00', 2360),
(112, 'Kerala Exp', 'Trivandrum', 'Delhi', '11:00', '22:00', 3045),
(113, 'Punjab Mail', 'Mumbai', 'Firozpur', '19:00', '09:00', 1925),
(114, 'Tamil Nadu Exp', 'Chennai', 'Delhi', '06:30', '20:30', 2180),
(115, 'Andhra Exp', 'Hyderabad', 'Delhi', '06:00', '19:00', 1700),
(116, 'Odisha Sampark', 'Bhubaneswar', 'Delhi', '14:00', '08:00', 1725),
(117, 'Maharashtra Exp', 'Mumbai', 'Nagpur', '09:00', '18:00', 840),
(118, 'Saurashtra Exp', 'Rajkot', 'Mumbai', '06:00', '14:00', 730),
(119, 'Utkal Exp', 'Puri', 'Delhi', '20:00', '12:00', 1850),
(120, 'Konark Exp', 'Mumbai', 'Bhubaneswar', '22:00', '14:00', 1950),
(121, 'Kaveri Exp', 'Mysore', 'Chennai', '23:00', '07:00', 500),
(122, 'Malwa Exp', 'Indore', 'Delhi', '21:00', '08:00', 850),
(123, 'Netravati Exp', 'Mumbai', 'Mangalore', '11:00', '20:00', 720),
(124, 'Ganga Kaveri Exp', 'Chennai', 'Patna', '16:00', '08:00', 2000),
(125, 'Deccan Exp', 'Pune', 'Mumbai', '07:00', '12:00', 192),
(126, 'Shatabdi Kolkata', 'Kolkata', 'Patna', '05:00', '11:00', 535),
(127, 'Sealdah Exp', 'Sealdah', 'Delhi', '15:00', '09:00', 1460),
(128, 'Sundar Exp', 'Bangalore', 'Hyderabad', '18:00', '06:00', 650),
(129, 'Ajmer Exp', 'Ajmer', 'Delhi', '12:00', '21:00', 500)

create table Passengers (passenger_id int primary key, passenger_name varchar(50) not null,age int check(age > 0),gender varchar(10) check(gender in ('M', 'F')), city varchar(50))

insert into Passengers values (1, 'Ramesh', 45, 'M', 'Delhi'),
(2, 'Sita', 32, 'F', 'Mumbai'),
(3, 'Arjun', 28, 'M', 'Bhopal'),
(4, 'Priya', 19, 'F', 'Chennai'),
(5, 'Anil', 52, 'M', 'Kolkata'),
(6, 'Neha', 27, 'F', 'Delhi'),
(7, 'Vikram', 34, 'M', 'Mumbai'),
(8, 'Sunita', 40, 'F', 'Kolkata'),
(9, 'Rajesh', 50, 'M', 'Chennai'),
(10, 'Meena', 22, 'F', 'Bangalore'),
(11, 'Arvind', 29, 'M', 'Hyderabad'),
(12, 'Kiran', 31, 'M', 'Pune'),
(13, 'Lakshmi', 36, 'F', 'Delhi'),
(14, 'Deepak', 48, 'M', 'Patna'),
(15, 'Swati', 25, 'F', 'Jaipur'),
(16, 'Harish', 55, 'M', 'Varanasi'),
(17, 'Rohit', 19, 'M', 'Lucknow'),
(18, 'Sneha', 23, 'F', 'Ahmedabad'),
(19, 'Manoj', 60, 'M', 'Nagpur'),
(20, 'Kavita', 33, 'F', 'Bhopal'),
(21, 'Ajay', 42, 'M', 'Indore'),
(22, 'Ritu', 28, 'F', 'Mysore'),
(23, 'Pankaj', 37, 'M', 'Goa'),
(24, 'Divya', 30, 'F', 'Surat'),
(25, 'Suresh', 44, 'M', 'Ranchi'),
(26, 'Pooja', 26, 'F', 'Bhubaneswar'),
(27, 'Nitin', 32, 'M', 'Kanpur'),
(28, 'Shalini', 39, 'F', 'Chandigarh'),
(29, 'Gaurav', 21, 'M', 'Shimla'),
(30, 'Anita', 47, 'F', 'Trivandrum')

create table Reservations (res_id int ,passenger_id int foreign key references passengers (passenger_id),train_id int foreign key references trains (train_id),travel_date date not null,class varchar(30) check(class in ('Sleeper', 'AC1', 'AC2', 'AC3')),fare int check(fare >= 0),res_status varchar(20) check(res_status in ('Confirmed', 'Waiting', 'Cancelled')))

alter table Reservations
alter column travel_date varchar(30)

insert into Reservations values (201, 1, 101, '2025-09-01', 'Sleeper', 500, 'Confirmed'),
(202, 2, 102, '2025-09-05', 'AC2', 1800, 'Confirmed'),
(203, 3, 101, '2025-09-01', 'Sleeper', 500, 'Waiting'),
(204, 4, 103, '2025-09-07', 'AC3', 1200, 'Confirmed'),
(205, 5, 104, '2025-09-10', 'Sleeper', 600, 'Cancelled'),
(206, 6, 105, '2025-09-12', 'AC1', 3500, 'Confirmed'),
(207, 7, 106, '2025-09-13', 'AC2', 2200, 'Waiting'),
(208, 8, 107, '2025-09-14', 'Sleeper', 950, 'Confirmed'),
(209, 9, 108, '2025-09-15', 'AC3', 1200, 'Cancelled'),
(210, 10, 109, '2025-09-16', 'AC2', 1400, 'Confirmed'),
(211, 11, 110, '2025-09-17', 'Sleeper', 600, 'Confirmed'),
(212, 12, 111, '2025-09-18', 'AC1', 3800, 'Confirmed'),
(213, 13, 112, '2025-09-19', 'AC3', 2800, 'Waiting'),
(214, 14, 113, '2025-09-20', 'AC2', 2100, 'Confirmed'),
(215, 15, 114, '2025-09-21', 'Sleeper', 950, 'Confirmed'),
(216, 16, 115, '2025-09-22', 'AC2', 1650, 'Cancelled'),
(217, 17, 116, '2025-09-23', 'Sleeper', 800, 'Confirmed'),
(218, 18, 117, '2025-09-24', 'AC3', 1200, 'Confirmed'),
(219, 19, 118, '2025-09-25', 'AC1', 2500, 'Confirmed'),
(220, 20, 119, '2025-09-26', 'Sleeper', 1100, 'Waiting'),
(221, 21, 120, '2025-09-27', 'AC2', 1900, 'Confirmed'),
(222, 22, 121, '2025-09-28', 'AC3', 750, 'Confirmed'),
(223, 23, 122, '2025-09-29', 'Sleeper', 670, 'Cancelled'),
(224, 24, 123, '2025-09-30', 'AC2', 1100, 'Confirmed'),
(225, 25, 124, '2025-10-01', 'AC1', 3100, 'Confirmed'),
(226, 26, 125, '2025-10-02', 'Sleeper', 250, 'Waiting'),
(227, 27, 126, '2025-10-03', 'AC3', 900, 'Confirmed'),
(228, 28, 127, '2025-10-04', 'AC2', 1750, 'Confirmed'),
(229, 29, 128, '2025-10-05', 'Sleeper', 500, 'Confirmed'),
(230, 30, 129, '2025-10-06', 'AC2', 800, 'Cancelled')

select * from trains
select * from Passengers
select * from Reservations

--1.List all trains running from Delhi as source station.
select train_name from trains
where source_name='delhi'

--2.Find all passengers who are above 40 years of age.
select passenger_name from Passengers
where age>40

--3.Get the total number of reservations made.
select count(res_id) as total_reservation 
from Reservations
where res_status in ('confirmed','waiting')

--4.Count how many reservations are in 'Confirmed' status.
select count(res_id) as total_reservation
from Reservations
where res_status='confirmed'

--5.Show the average fare paid for each train.
select train_name, avg(fare) from Reservations
join trains
on trains.train_id=reservations.train_id
group by train_name

--6.List reservations ordered by fare in descending order.
select * from Reservations
order by fare DESC

--7.Find passengers who booked AC classes (AC2, AC3).
select passenger_name from Reservations R
full join Passengers P
on R.passenger_id=P.passenger_id
where class in ('AC2','AC3')

--8.Get total revenue collected per train (only Confirmed reservations).
select train_name, sum(fare) from trains t
full join Reservations r
on t.train_id=r.train_id
where res_status='confirmed'
group by train_name

--9.Find the train with the maximum distance_km.
select train_name,distance_km from trains
where distance_km=
(select max(distance_km) from trains)

--10.Show number of male and female passengers.
select count('M') as male, count('F') as female from Passengers

--11.Get the passenger names who have booked tickets in Sleeper class.
select passenger_name,class from Passengers P
full join Reservations R
on p.passenger_id=R.passenger_id
where class='sleeper'

--12.Find total number of reservations made from each city (JOIN with Passengers).
select count(res_id),city from Reservations R
full join Passengers P
on R.passenger_id=P.passenger_id
group by city

--13.Show train name and total passengers booked for it, ordered by passenger count descending.
select train_name,res_status from trains T
full join Reservations R
on T.train_id=R.train_id
where res_status in ('confirmed','waiting')
order by passenger_id DESC

--14.Find the average age of passengers who booked 'Confirmed' tickets.
select avg(age),res_status from Passengers P
full join Reservations R
on P.passenger_id=R.passenger_id
where res_status='confirmed'
group by res_status

--15.Display travel_date and number of reservations made on that date.
select travel_date, count(res_id) from Reservations
where res_status in ('confirmed','waiting')
group by travel_date

--16.Show all reservations where fare is greater than 1000.
select * from Reservations
where fare>1000

--17.List all passengers who live in Delhi or Mumbai.
select * from Passengers
where city in ('delhi','mumbai')

--18.Show all trains whose distance is more than 1200 km.
select * from trains
where distance_km>1200

--19.Find reservations which are not "Cancelled".
select * from Reservations
where res_status<>'cancelled'

--20.Show the details of trains that have "Exp" in their name.
select * from trains
where train_name like '%EXP'

--21.List all passengers ordered by their age in descending order.
select * from Passengers
order by age DESC

--22.Display reservations sorted by travel_date (earliest first).
select * from Reservations
order by travel_date 

--23.Find all trains ordered by distance (longest route first).
select * from trains
order by distance_km DESC

--24.Show passengers ordered by name alphabetically.
select * from Passengers
order by passenger_name

--25.List reservations ordered by class and then by fare.
select * from Reservations
order by class

select * from Reservations
order by fare

--26.Count how many passengers are from each city.
select count(passenger_name),city from Passengers
group by city

--27.Find the total fare collected from all Confirmed reservations.
select sum(fare) from Reservations
where res_status='confirmed'

--28.Show the minimum, maximum, and average age of passengers.
select min(age) as minimum, max(age) as maximum, avg(age) as average from Passengers

--29.Find the highest fare paid in Sleeper class.
select * from Reservations
where fare=
(select max(fare) from Reservations
where class='sleeper')

--30.Get the average fare per travel_date.
select avg(fare),travel_date from Reservations
group by travel_date

--31.Show each class and the total number of reservations in it.
select class,sum(passenger_id) from Reservations
group by class

--32.Find trains that have more than 1 reservation.
SELECT train_id, COUNT(*) AS 'Total Reservations'
FROM Reservations
GROUP BY train_id
HAVING COUNT(*) > 1


--33.List cities where more than 1 passenger lives.
select city, count(passenger_name) from Passengers
group by city
having count(passenger_name)>1

--34.Show gender-wise average age of passengers.
select avg(age),gender from Passengers
group by gender

--35.Find passengers who booked more than 1 ticket.
SELECT p.passenger_name, COUNT(r.reservation_id) AS 'Total Tickets Booked'
FROM Passengers p
JOIN Reservations r
ON p.passenger_id = r.passenger_id
GROUP BY p.passenger_name
HAVING COUNT(r.reservation_id) > 1


--36.Show passenger name, train name, and fare for each reservation.
SELECT p.passenger_name, t.train_name, r.fare
FROM passengers p
JOIN Reservations r
    ON p.passenger_id = r.passenger_id
JOIN Trains t
    ON r.train_id = t.train_id


--38.List all passengers and the train name they booked (if any).
select passenger_name,train_name from Passengers P
full join Reservations R
on P.passenger_id=R.passenger_id
full join trains T
on R.train_id=T.train_id
where res_status in ('confirmed','waiting')

--39.Show all trains and the number of passengers booked in each.
SELECT t.train_name, COUNT(r.reservation_id) AS 'Total Passengers Booked'
FROM Trains t
LEFT JOIN Reservations r
    ON t.train_id = r.train_id
GROUP BY t.train_name

--40.Find all passengers who booked Rajdhani Exp.
SELECT p.passenger_name AS 'Passengers who booked Rajdhani Exp'
FROM Passengers p
JOIN Reservations r
    ON p.passenger_id = r.passenger_id
JOIN Trains t
    ON r.train_id = t.train_id
WHERE t.train_name = 'Rajdhani Exp'

--41.List passenger names with their travel_date and status.
select passenger_name,travel_date,res_status from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id

--42.Find the top 2 highest fare reservations.
select top 2 * from Reservations
order by fare desc

--43.Find the train with the lowest average fare.
select top 1 train_name,avg(fare) from trains T
join Reservations R
on T.train_id=R.train_id
group by train_name
order by avg(fare)

--44.Show the train(s) where total distance travelled by all passengers > 1000 km.
select train_name,passenger_name,distance_km from trains T
join Reservations R
on T.train_id=R.train_id
join Passengers P
on R.passenger_id=P.passenger_id
where distance_km>1000

--45.Find passengers whose reservation status is "Waiting".
select passenger_name,res_status from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
where res_status='waiting'

--46.Show the passenger(s) who paid the maximum fare overall.
select passenger_name,fare from Reservations R
join Passengers P
on R.passenger_id=P.passenger_id
where fare=
(select max(fare) from Reservations)

--47.Show all passengers whose age is between 20 and 40.
select passenger_name,age from Passengers
where age between 20 AND 40

--48.Find trains that start from Kolkata or Chennai.
select train_name,source_name,destination_name from trains
where source_name='kolkata' or source_name='chennai'

--49.Show all reservations made after 2025-09-05.
select * from Reservations
where travel_date>'2025-09-05'

--50.Display passengers whose name starts with 'A'.
select * from Passengers
where passenger_name like 'A%'

--51.List passengers whose city is NOT Delhi.
select * from Passengers
where city<>'delhi'

--52.Show the 3 youngest passengers.
select top 3 passenger_name, min(age) from Passengers
group by passenger_name
order by min(age)

--53.Show the 2 longest-distance trains.
select top 2 train_name, max(distance_km) as longest from trains
group by train_name
order by longest DESC

--54.Display the 5 most expensive reservations (highest fare).
select top 5 res_id,max(fare) as expensive from Reservations
group by res_id
order by expensive DESC

--55.List trains in alphabetical order of train_name.
select * from trains
order by train_name

--56.Show passengers sorted by age (youngest first).
select * from Passengers
order by age 

--57.Find the average fare of all reservations.
select avg(fare) as average from Reservations

--58.Count the total number of male passengers.
select count(passenger_name) as total from Passengers
where gender='M' 

--59.Show the maximum distance among all trains.
select train_name,max(distance_km) as maximum from trains
group by train_name

--60.Find the total number of Sleeper class reservations.
select count(class) as total from Reservations
where class='sleeper'

--61.Find the total fare paid by passengers from Mumbai.
select source_name,sum(fare) as totalfare from Reservations R
join trains T
on R.train_id=T.train_id
where source_name='mumbai'
group by source_name

--62.Count the number of reservations per status (Confirmed/Waiting/Cancelled).
select res_status,count(res_status) as total from Reservations
group by res_status

--63.Find the total number of passengers per gender.
select gender,count(gender) from Passengers
group by gender

--64.Show the average fare for each class.
select class,avg(fare) from Reservations
group by class

--65.Display the number of trains starting from each source city.
select source_name,count(train_name) as total from trains
group by source_name

--66.Show total reservations grouped by travel_date.
select travel_date,count(res_id) as total from Reservations
group by travel_date

--67.Show passenger name, city, and train_name they booked.
select passenger_name,city,train_name from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
join trains T
on R.train_id=T.train_id

--68.List all reservations with passenger name and status.
select passenger_name,res_status from Passengers P
full join Reservations R
on P.passenger_id=R.passenger_id

--69.Show train_name and number of confirmed passengers on it.
select train_name,count(passenger_name) from trains T
join Reservations R
on T.train_id=R.train_id
join Passengers P
on R.passenger_id=P.passenger_id
where res_status='confirmed'
group by train_name

--70.Display all passengers with train_name (if booked, else show NULL).
select passenger_name,train_name from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
join trains T
on R.train_id=T.train_id

--71.Find which passengers booked Garib Rath train.
select passenger_name,train_name from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
join trains T
on R.train_id=T.train_id
where train_name='Garib Rath'

--72.Show train_id and total fare collected, but only where fare > 1000.
select T.train_id,sum(fare) from trains T
join Reservations R
on T.train_id=R.train_id
group by T.train_id
having sum(fare)>1000

--73.List source cities that have more than 1 train.
select source_name,count(train_name) from trains
group by source_name
having count(train_name)>1

--74.Find passengers grouped by city where count > 1.
SELECT city, COUNT(*) AS 'Total Passengers'
FROM Passengers
GROUP BY city
HAVING COUNT(*) > 1

--75.Show classes that earned more than 2000 fare in total.
select class,sum(fare) from Reservations
group by class
having sum(fare)>2000

--76.List trains that have at least 2 passengers booked.
select train_name,count(passenger_id) from Reservations R
join trains T
on R.train_id=T.train_id
group by train_name
having count(passenger_id)>=2

--77.Find the passenger(s) with the highest age.
select passenger_name,max(age) as highest from Passengers
group by passenger_name
order by highest DESC

--78.Show the train(s) with the shortest distance.
select train_name,distance_km from trains
where distance_km=
(select min(distance_km) from trains)

--79.Find the reservation(s) with the lowest fare.
select * from Reservations
where fare=
(select min(fare) from Reservations)

--80.List passengers who paid above the average fare.
select passenger_name from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
where fare>
(select avg(fare) from Reservations)

--81.Find trains whose distance is above the average train distance.
select train_name from trains
where distance_km>
(select avg(distance_km) from trains)

--82.Show all reservations in September 2025.
select * from Reservations
where travel_date between '2025-09-01' and '2025-09-30'

--83.Find the earliest travel_date booked.
select * from Reservations
order by travel_date

--84.Find the latest travel_date booked.
select * from Reservations
order by travel_date DESC

--88.Count how many reservations are made per day.
select travel_date,count(res_id) as reservationperday from Reservations
where res_status in ('confirmed','waiting')
group by travel_date

--89.List passengers who booked tickets on the same date.
SELECT p.passenger_name AS 'Passengers who booked on the same date', r.travel_date
FROM Passengers p
JOIN Reservations r
    ON p.passenger_id = r.passenger_id
WHERE r.travel_date IN (
    SELECT travel_date
    FROM Reservations
    GROUP BY travel_date
    HAVING COUNT(*) > 1
)

--90.Show passenger name, train_name, and distance travelled.
select passenger_name,train_name,distance_km from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
join trains T
on R.train_id=T.train_id

--91.Find the city that contributed the highest number of passengers.
select city,count(passenger_name) as highest from Passengers
group by city
order by highest

--92.Display each train and its average fare (confirmed only).
select train_name,avg(fare) as average from trains T
join Reservations R
on T.train_id=R.train_id
where res_status='confirmed'
group by train_name

--93.Show passengers who booked tickets in more than one class.
select passenger_name,count(class) from Passengers P
join Reservations R
on P.passenger_id=R.passenger_id
group by passenger_name
having count(class)>1

--94.Find train_name with maximum number of reservations.
SELECT TOP 1 t.train_name, COUNT(*) AS 'Total Reservations'
FROM Trains t
JOIN Reservations r
    ON t.train_id = r.train_id
GROUP BY t.train_name
ORDER BY COUNT(*) DESC
