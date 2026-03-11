--section-1 (database and tables)

create database Hospital_DB

use Hospital_DB

create table patients (patientID int, aadharcard int, gender varchar(10), DOB date)
select * from patients

create table doctors (doctorID int, email varchar(200),departmentID int, experience int)
select * from doctors

create table departments (departmentID int, departmentname varchar(50))
select * from departments

create table rooms (roomID int, roomtype varchar(50), chargesperday money)
select * from rooms

create table appointments (appointmentID int, patientID int, doctorID int, appointmentdate date)
select * from appointments

create table admissions (admissionID int, patientID int, roomID int, admitdate date, dischargedate date)
select * from admissions

create table treatments (treatmentID int, admissionID int, treatmentcost money)
select * from treatments

create table bills (billID int, admissionID int, totalamount money)
select * from bills

create table payments (paymentID int, billID int, paymentmode varchar(30), paidamount money)
select * from payments


--section-2 (apply constraints)

--patients
alter table patients
alter column patientID int NOT NULL

alter table patients
add constraint pk_cons primary key (patientID)

alter table patients
add constraint uc_cons unique (aadharcard)

alter table patients
add constraint ck_cons check (gender in ('male','female'))

alter table patients
alter column DOB date Not Null


--doctors

alter table doctors
alter column doctorID int NOT NULL

alter table doctors
add constraint pk_doctors primary key (doctorID)

alter table doctors
add constraint uc_doctors unique (email)

alter table doctors
add constraint fk_doctors foreign key (departmentID) references departments (departmentID)

alter table doctors
add constraint ck_doctors check (experience>0)

--departments

alter table departments
alter column departmentID int NOT NULL

alter table departments
add constraint pk_department primary key (departmentID)

alter table departments
add constraint uk_department unique (departmentname)

--rooms
alter table rooms
alter column roomID int NOT NULL

alter table rooms
add constraint pk_rooms primary key (roomID)

alter table rooms
add constraint ck_rooms check (roomtype in ('general','icu','private'))

alter table rooms
add constraint ck_room_charge check (chargesperday>0)

--appointments
alter table appointments
alter column appointmentID int NOT NULL

alter table appointments
add constraint pk_appointments primary key (appointmentID)

alter table appointments
add constraint fk_appointments_patient foreign key (patientID) references patients (patientID)

alter table appointments
add constraint fk_appointments_doctor foreign key (doctorID) references doctors (doctorID)

alter table appointments
add constraint df_appointment_date default GETDATE() for appointmentdate

--admissions
alter table admissions
alter column admissionID int NOT NULL

alter table admissions
add constraint pk_admissions primary key (admissionID)

alter table admissions
add constraint fk_admissions_patient foreign key (patientID) references patients (patientID)

alter table admissions
add constraint fk_admissions_rooms foreign key (roomID) references rooms (roomID)

alter table admissions
add constraint df_admission_date default GETDATE() for admitdate

--treatments
alter table treatments
alter column treatmentID int NOT NULL

alter table treatments
add constraint pk_treatments primary key (treatmentID)

alter table treatments
add constraint fk_treatments foreign key (admissionID) references admissions (admissionID)

alter table treatments
add constraint ck_treatments check (treatmentcost>0)

--biils
alter table bills
alter column billID int NOT NULL

alter table bills
add constraint pk_bills primary key (billID)

alter table bills
add constraint fk_bills foreign key (admissionID) references admissions (admissionID)

alter table bills
add constraint ck_bills check (totalamount>0)


--payments
alter table payments
alter column paymentID int NOT NULL

alter table payments
add constraint pk_payments primary key (paymentID)

alter table payments
add constraint fk_payments foreign key (billID) references bills (billID)

alter table payments
add constraint ck_payments_paymentmode check (paymentmode in ('cash','card','upi'))

alter table payments
add constraint ck_payments_paidamount check (paidamount>0)


--section 3 (INSERT DATA)

insert into departments values
(1,'Cardiology'),
(2,'Neurology'),
(3,'Orthopedics'),
(4,'Pediatrics'),
(5,'General Medicine')

insert into patients values 
(1,9001,'Male','1999-05-12'),
(2,9002,'Female','2001-03-18'),
(3,9003,'Male','1998-07-25'),
(4,9004,'Female','2002-11-02'),
(5,9005,'Male','1997-01-10'),
(6,9006,'Female','2000-06-14'),
(7,9007,'Male','1995-09-09'),
(8,9008,'Female','2003-12-21'),
(9,9009,'Male','1996-04-30'),
(10,9010,'Female','2001-08-19'),
(11,9011,'Male','1994-02-11'),
(12,9012,'Female','1999-10-05'),
(13,9013,'Male','2000-07-07'),
(14,9014,'Female','1998-03-03'),
(15,9015,'Male','1997-06-16'),
(16,9016,'Female','2002-09-27'),
(17,9017,'Male','1996-12-01'),
(18,9018,'Female','2001-01-22'),
(19,9019,'Male','1995-08-08'),
(20,9020,'Female','1999-11-11')

insert into doctors values
(1,'doc1@hospital.com',1,10),
(2,'doc2@hospital.com',2,8),
(3,'doc3@hospital.com',3,12),
(4,'doc4@hospital.com',4,6),
(5,'doc5@hospital.com',5,15),
(6,'doc6@hospital.com',1,9),
(7,'doc7@hospital.com',2,7),
(8,'doc8@hospital.com',3,5)

insert into rooms values
(1,'General',1500),(2,'General',1500),(3,'General',1500),
(4,'Private',3500),(5,'Private',3500),(6,'Private',3500),
(7,'ICU',7000),(8,'ICU',7000),(9,'ICU',7000),
(10,'General',1500),(11,'Private',3500),(12,'ICU',7000),
(13,'General',1500),(14,'Private',3500),(15,'ICU',7000)

insert into appointments (appointmentID,patientID,doctorID) values
(1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),
(6,6,6),(7,7,7),(8,8,8),(9,9,1),(10,10,2),
(11,11,3),(12,12,4),(13,13,5),(14,14,6),(15,15,7),
(16,16,8),(17,17,1),(18,18,2),(19,19,3),(20,20,4),
(21,1,5),(22,2,6),(23,3,7),(24,4,8),(25,5,1),
(26,6,2),(27,7,3),(28,8,4),(29,9,5),(30,10,6)

insert into admissions (admissionID,patientID,roomID) values
(1,1,7),(2,2,8),(3,3,4),(4,4,5),(5,5,1),
(6,6,2),(7,7,9),(8,8,6),(9,9,10),(10,10,11),
(11,11,12),(12,12,3),(13,13,13),(14,14,14),(15,15,15)

insert into treatments values
(1,1,12000),(2,1,8000),(3,2,15000),(4,2,7000),
(5,3,6000),(6,3,9000),(7,4,11000),(8,4,5000),
(9,5,4000),(10,6,7500),(11,7,20000),(12,7,9000),
(13,8,6500),(14,9,3000),(15,10,8500),
(16,11,14000),(17,12,4500),(18,13,6000),
(19,14,9500),(20,15,10000),(21,5,5000),
(22,6,6500),(23,8,7000),(24,9,4000),(25,10,9000)

insert into bills values
(1,1,20000),(2,2,22000),(3,3,15000),(4,4,16000),(5,5,9000),
(6,6,14000),(7,7,29000),(8,8,18000),(9,9,7000),(10,10,17500),
(11,11,14000),(12,12,4500),(13,13,6000),(14,14,9500),(15,15,10000)

insert into payments values
(1,1,'Cash',10000),(2,1,'UPI',10000),
(3,2,'Card',22000),
(4,3,'Cash',15000),
(5,4,'UPI',16000),
(6,5,'Cash',9000),
(7,6,'Card',14000),
(8,7,'UPI',20000),(9,7,'Cash',9000),
(10,8,'Card',18000),
(11,9,'Cash',7000),
(12,10,'UPI',17500),
(13,11,'Cash',14000),
(14,12,'UPI',4500),
(15,13,'Card',6000),
(16,14,'Cash',9500),
(17,15,'UPI',10000),
(18,2,'Cash',5000),
(19,3,'UPI',5000),
(20,4,'Card',6000)


--section 4 (BASIC QUERIES)

--1. Display all patients.
select * from patients

--2. Show patients born after the year 2000.
select * from patients
where DOB>'01-01-2000'

--3. Display all ICU rooms.
select * from rooms
where roomtype='icu'

--4. Show doctors with more than 5 years of experience.
select * from doctors
where experience>5

--5. Count total number of patients.
select count(patientID) as totalpatient
from patients


--section 5 (GROUP BY/ HAVING)

select * from patients
select * from doctors
select * from departments
select * from rooms
select * from appointments
select * from admissions
select *from treatments
select * from bills
select * from payments

--1. Department-wise doctor count.
select departmentID,count(*)as doctor
from doctors
group by departmentID

--2. Room type-wise admission count.
select roomID, count(admissionID) as totaladmission
from admissions
group by roomID

--3. Patient-wise total bill amount greater than 50,000.
select admissionID from bills
where totalamount>50000
group by admissionID

--4. Doctor-wise appointment count.
select doctorID, COUNT(*) as AppointmentCount 
from appointments 
group by doctorID


--section 6 (SUBQUERIED)

--1. Find the patient with the highest bill amount.
select admissionID from bills
where totalamount =
(select max(totalamount) from bills)

--2. Find the doctor who handled the maximum patients.


--3. Find patients who were never admitted.
select * from patients 
where patientID NOT IN 
(select patientID from admissions)

--4. Find rooms that were never used.
select * from rooms
where roomID not in
(select roomID from admissions)

--section 7 (update/delete)

--1. Increase all room charges by 10%.
update rooms
set chargesperday=chargesperday*1.10

--2. Change a doctor’s department.
update doctors
set departmentID=2 
where doctorID=1

--3. Delete a patient safely (handle foreign key issues).


--4. Update discharge date for admitted patients.
update admissions
set dischargedate = GETDATE()
where dischargedate is null


--Section 8 — Alter Table

--1. Add a column BloodGroup in Patients.
alter table patients
add bloodgroup varchar(10)

--2. Add a column Qualification in Doctors.
alter table doctors
add qualification varchar(40)

--3. Modify datatype of a column.
alter table patients
alter column gender varchar(20)

--4. Drop a column from any table.
alter table patients
drop column bloodgroup