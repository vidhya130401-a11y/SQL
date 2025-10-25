-- Daily challenge Day 32 Joins & Union--

create database Middle_School;
use Middle_School;

create table Students(
students_id int primary key,
student_name varchar (50),
course_id int
);

create table Courses(
course_id int primary key,
course_name varchar (50)
);

insert into Students values
(1, "vithya", 201),
(2, "shakar", 202),
(3, "siva", 203),
(4, "sundaran", 204),
(5, "sarathi", 205);

insert into Students values
(6, "kathir", 206);

insert into Courses values
(101, "Biology"),
(102, "Maths"),
(103, "History"),
(104, "Computer Science"),
(105, "Tamil");

insert into Courses values
(106, "Computer Maths");

-- inner jion--
select S.student_name, C.course_name from Students S inner join Courses C on S.corse_id = C.course_id;

-- left and right join--
select s.student_name, c.course_name from Students s left join Courses c on S.course_id = C.couse_id;
select s.student_name, c.course_name from Students s right join Courses s on s.course_id = c.course_id;

create table Employee_current(
emp_id int primary key,
emp_name varchar (50)
);

insert into Employee_current values
(1, "Arjun"),
(2, "Karthi"),
(3, "Mohan"),
(4, "Lakshmi"),
(5, "Seenu");

create table Employees_past(
past_emp_id int primary key,
past_emp_name varchar (50)
);

insert into Employees_past values
(6, "Sakthi"),
(7, "vasu");

-- union  vs union all--
select emp_name from Employee_Current union select past_emp_name from Employees_Past;
select emp_nmae from  Employee_current union all  select past_emp_name from Employees_Past;






