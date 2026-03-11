create database hotelmanagement

use hotelmanagement

create table hotel (hotel_no char(4) not null, name varchar(20) not null, adress varchar(50) not null)
INSERT INTO hotel VALUES ('H111', 'Grosvenor Hotel','london')
insert into hotel values ('H112','welcome hotel','india'),('H113','hyaat hotel','india'),('H114','marine hotel','singapor')

create table room(room_no varchar(4) NOT NULL,hotel_no CHAR(4) NOT NULL,room_type CHAR(1) NOT NULL,room_price decimal(5,2) NOT NULL)
INSERT INTO room VALUES ('1', 'H111', 'S', 72.00)
insert into room values ('2','H111','d',120.00),('3','H111', 'f',150.00),('1','H112','f',38.00),('2','H112','d',30.00),('3','H112','s',25.00),('1','H113','d',32.00),('2','H113','s',23.00),('1','H114','s',21.00)

create table booking(hotel_no CHAR(4) NOT NULL,guest_no CHAR(4) NOT NULL,date_from DATETIME NOT NULL,date_to DATETIME NULL,room_no CHAR(4) NOT NULL)
INSERT INTO booking VALUES ('H111', 'G111','1999-01-01', '1999-01-02', '1')
insert into booking values ('H111','G112','2000-02-19','2000-02-22','2'),('H111','G113','2000-03-19','2000-03-22','2'),('H111','G114','2000-02-19','2000-02-22','3'),('H112','G111','2001-01-12','2001-01-20','2'),('H112','G112','1998-02-19','1998-02-22','2'),('H113','G116','2000-02-19','2000-02-22','2')

create table guest( guest_no CHAR(4) NOT NULL,guest_name VARCHAR(20) NOT NULL,adress VARCHAR(50) NOT NULL)
INSERT INTO guest VALUES ('G111', 'John Smith', 'London')
insert into guest values ('G112','krunal patel','india'),('G113','viral patel','india'),('G114','aditya patel','singapore'),('G116','rutul patel','pakistan')

select * from hotel
select * from room
select * from booking
select * from guest


UPDATE room
SET room_price = room_price*1.05;

create table booking_old (hotel_no CHAR(4) NOT NULL,guest_no CHAR(4) NOT NULL,date_from DATETIME NOT NULL,date_to DATETIME NULL,room_no VARCHAR(4) NOT NULL)
select * from booking_old

insert into booking_old
select * from booking 
where date_to < '2000-01-01'

select * from booking_old

delete from booking
where date_to < '2000-01-01'



--SIMPLE QUERIES

--1. List full details of all hotels.
select * from hotel

--2. List full details of all hotels in London.
select * from hotel
where adress='london'

--3. List the names and addresses of all guests in London, alphabetically ordered by name.
select g.guest_name,h.adress from guest g
join hotel h
on g.adress=h.adress
where h.adress='london'
order by g.guest_name

--4. List all double or family rooms with a price below £40.00 per night, in ascending order of price.
select * from room
where (room_type='d' AND room_price<40.00) or (room_type='f' AND room_price<40.00)
order by room_price ASC

--5. List the bookings for which no date_to has been specified.
select * from booking
where date_to is NULL


--AGGREGATE FUNCTIONS

--1. How many hotels are there?
select count(name) as total_hotel from hotel

--2. What is the average price of a room?
select avg(room_price) as average_price_of_room from room

--3. What is the total revenue per night from all double rooms?
select sum(room_price) as total_revenue from room
where room_type='d'

--4. How many different guests have made bookings for August?
select count(Distinct guest_no) from booking
where MONTH(date_from)='08'


--SUBQUERIES AND JOINS

--1. List the price and type of all rooms at the Grosvenor Hotel.
select room_price,room_type,name from room r
join hotel h
on r.hotel_no=h.hotel_no
where h.name='grosvenor hotel'

--2. List all guests currently staying at the Grosvenor Hotel.
select g.guest_name,h.name from guest g
join booking b
on g.guest_no=b.guest_no
join hotel h
on b.hotel_no=h.hotel_no
where (b.date_from=GETDATE() AND h.name='grsvenor hotel') OR (b.date_to=GETDATE() AND h.name='grosvenor hotel')

--3. List the details of all rooms at the Grosvenor Hotel,including the name of the guest staying in the room, if the room is occupied.
select guest_name, * from room r
join hotel h
on r.hotel_no=h.hotel_no
join booking b
on h.hotel_no=b.hotel_no
join guest g
on g.guest_no=b.guest_no
where h.name='grosvenor hotel'

--4. What is the total income from bookings for the Grosvenor Hotel today?
select sum(room_price)as total_income from hotel h
join room r
on h.hotel_no=r.hotel_no
join booking b
on r.hotel_no=b.hotel_no
where h.name='grosvenor hotel' AND b.date_from='2000-02-19'

--5. List the rooms that are currently unoccupied at the Grosvenor Hotel.
select * from room r
join booking b
on r.hotel_no=b.hotel_no
join hotel h
on b.hotel_no=h.hotel_no
where h.name='grosvenor hotel' AND guest_no is NULL

--6. What is the lost income from unoccupied rooms at the Grosvenor Hotel?
select sum(r.room_price)as lost_income from room r
join booking b
on r.hotel_no=b.hotel_no
join hotel h
on b.hotel_no=h.hotel_no
where h.name='grosvenor hotel' AND guest_no is NULL


--GROUPING

--1. List the number of rooms in each hotel.
select h.name,count(r.room_no) as total_room from room r
join hotel h
on r.hotel_no=h.hotel_no
group by h.name

--2. List the number of rooms in each hotel in London.
select h.name,count(r.room_no) from room r
join hotel h
on r.hotel_no=h.hotel_no
where h.adress='london'
group by h.name

--3. What is the average number of bookings for each hotel in August?
select avg(booking_count) from
(select hotel_no,count(*)as booking_count from booking 
where MONTH(date_from)='08'
group by hotel_no) booking

--4. What is the most commonly booked room type for each hotel in London?
select h.name,r.room_type,count(r.room_type) as common_roomtype from room r
join booking b
on r.room_no=b.room_no
join hotel h
on b.hotel_no=h.hotel_no
where h.adress='london'
group by h.name,r.room_type

--5. What is the lost income from unoccupied rooms at each hotel today?
select h.name,sum(r.room_price) from room r
join booking b
on r.room_no=b.room_no
join hotel h
on b.hotel_no=h.hotel_no
where (b.guest_no not in (b.room_no)) AND (b.date_from= GETDATE())
group by h.name
