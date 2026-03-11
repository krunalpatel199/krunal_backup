--ASSIGNMENT

use JANUARY2026

--PART(1)
create table student_assessments (assessment_id int, student_id int, student_name varchar(50), course_name varchar(50), assessment_type varchar(20), assessment_date date, total_marks int, obtained_marks int, attedance_status varchar(10), trainer_name varchar(50), remarks varchar(100))

select * from student_assessments


--PART(2)
insert into student_assessments values (3001,101,'krunal','data analytics','assignment','2026-01-10',100,95,'present','ashish','pass')
insert into student_assessments values (3001,102,'raj','data analytics','assignment','2026-01-17',100,23,'present','ashish','fail'),
(3002,101,'krunal','data analytics','project','2026-01-12',100,81,'present','sneha','pass'),
(3002,102,'raj','data analytics','project','2026-01-12',100,56,'present','sneha','pass'),
(3003,101,'krunal','data analytics','exam','2024-01-04',100,97,'present','kokila','pass'),
(3003,102,'raj','data analytics','exam','2025-05-02',100,67,'present','kokila','pass'),
(3004,101,'krunal','data analytics','quiz','2025-03-19',100,89,'present','nishidha','pass'),
(3004,102,'raj','data analytics','quiz','2025-03-23',100,0,'absent','nishidha','fail'),
(3005,103,'yash','sql','assignment','2023-08-20',100,56,'present','mitesh','pass'),
(3005,104,'zeel','sql','assignment','2023-08-18',100,69,'present','mitesh','pass'),
(3006,103,'yash','sql','project','2023-06-20',100,0,'absent','maharsh','fail'),
(3006,104,'zeel','sql','project','2023-06-22',100,66,'present','maharsh','pass'),
(3007,103,'yash','sql','exam','2024-06-23',100,89,'present','ramesh','pass'),
(3007,104,'zeel','sql','exam','2024-06-27',100,86,'present','ramesh','pass'),
(3008,104,'yash','sql','quiz','2024-04-23',100,45,'present','naresh','pass'),
(3009,105,'adtiya','azure','assignment','2024-09-12',100,34,'present','sunil','pass'),
(3009,106,'viral','azure','assignment','2024-09-09',100,55,'present','sunil','pass'),
(3010,105,'adtiya','azure','project','2024-03-15',100,78,'present','kiran','pass'),
(3010,106,'viral','azure','project','2024-03-12',100,34,'present','kiran','pass'),
(3011,107,'rutul','powerbi','project','2022-04-30',100,0,'absent','hinal','fail'),
(3012,107,'rutul','powerbi','exam','2022-03-12',100,0,'absent','sejal','fail'),
(3013,107,'rutul','powerbi','quiz','2022-04-14',100,0,'absent','vrushti','fail')

update student_assessments 
set remarks='pass'
where obtained_marks=95


--PART(3)

--1.
select * from student_assessments
where obtained_marks>70

--2.
select * from student_assessments
where obtained_marks=100

--3.
select * from student_assessments
where attedance_status='absent'

--4.
select * from student_assessments
where obtained_marks between 40 AND 60

--5.
select * from student_assessments
where assessment_date>'2024-01-01'

--6.
select * from student_assessments
where student_name<>'rahul sharma'

--7.
select * from student_assessments
where assessment_type='project' AND course_name='powerbi'

--8.
select * from student_assessments
where course_name='azure'

--9.
select * from student_assessments
where attedance_status<>'absent'

--10.
select * from student_assessments
where obtained_marks<50 AND attedance_status='present'

--11.
select * from student_assessments
where student_name like 'a%'

--12.
select * from student_assessments
where trainer_name like 'an'

--13.
select * from student_assessments
where course_name like '%bi'

--14.
select * from student_assessments
where remarks like 'late'

--15.
select (obtained_marks*100/total_marks) as percentage from student_assessments;


--16.
select obtained_marks as failed from student_assessments
where obtained_marks<40

--17.
select obtained_marks as grace_marks from student_assessments
where obtained_marks between 35 AND 39

--18.
select obtained_marks+(obtained_marks*0.05) as add_marks from student_assessments
where assessment_type='quiz'

--19.
select course_name,AVG (obtained_marks) as average 
from student_assessments
group by course_name

--20.
select assessment_type, MAX (obtained_marks) as maximum
from student_assessments
group by assessment_type

select assessment_type, MIN (obtained_marks) as minimum
from student_assessments
group by assessment_type

--21.
select course_name, count (attedance_status) as absent_count
from student_assessments
where attedance_status='absent'
group by course_name

--22.
select trainer_name, count (assessment_type) as total
from student_assessments
group by trainer_name

--23.
select course_name, count (remarks) as pass_count
from student_assessments
where remarks='pass'
group by course_name

--24.
select trainer_name, count(assessment_type) as total
from student_assessments
group by trainer_name
having count(assessment_type) > 5

--25.
select student_name, count(assessment_type)
from student_assessments
group by student_name
having count(assessment_type)>3

--26.
select course_name , (sum(obtained_marks)*100.0/ sum(total_marks))
from student_assessments
group by course_name
having (sum(obtained_marks)*100.0/ sum(total_marks))>65

select * from student_assessments

--27.