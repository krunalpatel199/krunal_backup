-- SQL Joins 

create database assignment7

use assignment7

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    manager_name VARCHAR(50)
)

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
)


INSERT INTO departments VALUES
(1, 'Development', 'Suresh'),
(2, 'QA', 'Ramesh'),
(3, 'HR', 'Suresh'),
(4, 'Support', 'Anita');

INSERT INTO employees VALUES
(101, 'Amit', 60000, 1),
(102, 'Neha', 55000, 2),
(103, 'Rahul', 70000, 1),
(104, 'Priya', 45000, 3),
(105, 'Kiran', 50000, NULL),
(106, 'Sneha', 48000, 2);


--1. List all employees and their department names
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id

--2. List all employees and their department names, including employees who are not assigned to any department
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id

--3. List all departments and the number of employees in each department
SELECT d.dept_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name

--4. Find the employee with the highest salary
SELECT emp_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees)

--5. List all employees who work in the QA department
SELECT e.emp_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'QA'

--6. List all departments managed by 'Suresh'
SELECT dept_name
FROM departments
WHERE manager_name = 'Suresh'

--7. List all employees who work in departments managed by 'Suresh'
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.manager_name = 'Suresh'

----------------------------------------------------------------------

--Inner Join

--1

SELECT p.FirstName, p.LastName, pw.PasswordHash
FROM Person p
INNER JOIN Password pw
ON p.BusinessEntityID = pw.BusinessEntityID


--2
SELECT e.BusinessEntityID,
       e.NationalIDNumber,
       e.JobTitle,
       edh.DepartmentID,
       edh.StartDate,
       edh.EndDate
FROM Employee e
INNER JOIN EmployeeDepartmentHistory edh
ON e.BusinessEntityID = edh.BusinessEntityID

--3
SELECT p.FirstName,
       p.LastName,
       pw.PasswordHash,
       ea.EmailAddress
FROM Person p
INNER JOIN Password pw
ON p.BusinessEntityID = pw.BusinessEntityID
INNER JOIN EmailAddress ea
ON p.BusinessEntityID = ea.BusinessEntityID

--4
SELECT b.Title, b.ISBN, a.AuthorName
FROM BookAuthor ba
INNER JOIN Book b
ON ba.BookID = b.BookID
INNER JOIN Author a
ON ba.AuthorID = a.AuthorID

--5
SELECT b.Title,
       b.ISBN,
       a.AuthorName,
       p.PublisherName
FROM BookAuthor ba
INNER JOIN Book b
ON ba.BookID = b.BookID
INNER JOIN Author a
ON ba.AuthorID = a.AuthorID
INNER JOIN Publisher p
ON b.PublisherID = p.PublisherID
