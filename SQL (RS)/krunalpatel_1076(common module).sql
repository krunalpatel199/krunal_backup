create database krunal_1076

use krunal_1076

create table specializations (specialization_id int primary key,specialization_name varchar(50))
insert into specializations values (1001,'DataAnalyst'),
(1002,'FullStack'),
(1003,'QA'),
(1004,'DE'),
(1005,'AI'),
(1006,'java'),
(1007,'BA'),
(1008,'devops')

create table students (student_id int primary key, first_name varchar(50), last_name varchar(50), age int, specialization_id int foreign key references specializations (specialization_id))
insert into students values (1,'krunal','patel',20,1001),
(2,'vraj','patel',21,1001),
(3,'shiv','modi',23,1005),
(4,'happy','patel',22,1005),
(5,'shakti','raoji',21,1002),
(6,'kushal','parikh',22,1006),
(7,'abhay','patel',23,1002),
(8,'jay','patel',22,1007),
(9,'jainish','patel',21,1004),
(10,'suresh','patel',18,1002),
(11,'krish','patel',20,1003),
(12,'nirav','prajapati',21,1001)

create table courses (course_id int primary key, course_name varchar(50), credit decimal(3,2))
insert into courses values (101,'SQL','5.00'),
(102,'powerbi','4.00'),
(103,'Python','3.00'),
(104,'Excel','4.00'),
(105,'Azure','4.00'),
(106,'react','5.00'),
(107,'angular','5.00'),
(108,'AWS','4.00'),
(109,'OOPS','5.00'),
(110,'Dotnet','4.00'),
(111,'softskill','3.00'),
(112,'DSA','4.00')

create table enrollments (enrollment_id int primary key, student_id int foreign key references students(student_id), course_id int foreign key references courses(course_id), grade varchar(10))
insert into enrollments values (3001,1,101,'A'),
(3002,1,102,'A'),
(3003,1,103,'A'),
(3004,1,104,'A'),
(3005,1,105,'A'),
(3006,1,111,'A'),
(3007,2,101,'A'),
(3008,2,102,'B'),
(3009,2,103,'B'),
(3010,2,104,'A'),
(3011,2,105,'B'),
(3012,3,103,'B'),
(3013,3,111,'A'),
(3014,4,103,'A'),
(3015,5,105,'A'),
(3016,5,107,'A'),
(3017,5,110,'B'),
(3018,5,111,'B'),
(3019,6,110,'A'),
(3020,6,108,'B'),
(3021,7,111,'B'),
(3022,8,101,'B'),
(3023,10,106,'B'),
(3024,10,108,'C'),
(3025,10,110,'C'),
(3026,11,112,'A'),
(3027,11,111,'B'),
(3028,9,103,'A'),
(3029,9,104,'B'),
(3030,4,105,'A')

select * from specializations
select * from students
select * from courses
select * from enrollments

--1. Retrieve a list of Students and their Specialization names.
select s1.student_id,s1.first_name,s1.last_name,s2.specialization_name from students s1
join specializations s2
on s1.specialization_id=s2.specialization_id

--2. List all Course names that 'Suresh Patel' is enrolled in.
select s.first_name,s.last_name,c.course_name from students s
join enrollments e
on s.student_id=e.student_id
join courses c
on e.course_id=c.course_id
where s.first_name='suresh' and s.last_name='patel'

--3. Display Student names along with the Grade they received in 'Full Stack'.
select s2.first_name,s2.last_name,e.grade from specializations s1
join students s2
on s1.specialization_id=s2.specialization_id
join enrollments e
on s2.student_id=e.student_id
where s1.specialization_name='Fullstack'

--4. Show all Specializations that currently have no students assigned.
select s1.specialization_name from specializations s1
left join students s2
on s1.specialization_id=s2.specialization_id
where s2.specialization_id is null

--5. List every Enrollment ID with the corresponding Student's Full Name and the CourseCredits.
select e.enrollment_id,s.first_name,s.last_name,c.credit from students s
join enrollments e
on s.student_id=e.student_id
join courses c
on e.course_id=c.course_id

--6. Count how many students are in each specialization, but only show specializations with more than 5 students.
select s1.specialization_name,count(s2.student_id) as total_student from specializations s1
join students s2
on s1.specialization_id=s2.specialization_id
group by s1.specialization_name
having count(s2.specialization_id)>5

--7. Find students who are enrolled in 3 or more courses.
select s.student_id,count(e.course_id) as total_course from students s
join enrollments e
on s.student_id=e.student_id
join courses c
on e.course_id=c.course_id
group by s.student_id
having count(e.course_id)>=3

--8. Calculate the total number of credits assigned to Student ID 1.
select s.student_id,sum(c.credit) as total_credit from students s
join enrollments e
on s.student_id=e.student_id
join courses c
on e.course_id=c.course_id
where s.student_id=1
group by s.student_id

--9. Select all students whose age is between 18 and 22 (inclusive).
select * from students
where age between 18 and 22

--10. Find the names of students who have enrolled in the course named 'Data Analytics’.
select s.student_id,s.first_name,s.last_name,c.course_name from students s
join enrollments e
on s.student_id=e.student_id
join courses c
on e.course_id=c.course_id
where c.course_name='SQL'