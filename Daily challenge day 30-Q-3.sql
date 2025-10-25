-- Day 30 challenge Claues & Operators--

create database  University;
use University;

create table Department(
deparment_id int primary key,
department_name varchar (50)
);

create table Students(
students_id int primary key,
students_name varchar (50),
Gmail varchar (50),
Couser_id varchar (10),
Gpa decimal (3, 2)
);

insert into Department(department_id, department_name) values
(1, 'CSC'),
(2, 'ECE'),
(3, 'EEE'),
(4, 'CSE'),
(5, 'Mech');

insert into Students  (student_id, student_name, Gmail, Couser_id, Gpa) values
(101, 'siva', 'siva@gmail.com', 'C101', 7.8),
(102, 'Ramm', null, 'C102', 6.9),
(103, 'vidhya', 'vidhya@gmail.com', 'C103', 8.5),
(104, 'shakar', null, 'C104', 8.0),
(105, 'tamil', 'tamil@gmail.com', 'C105', 9.5);

-- Distinct & Where--
select distinct department_name from departments;

select * from Department where department_name = 'CSE';

-- is nul & not null--
select Students_id, Sudents_name, Gmail from Students where Gmail is null;
select stundents_id, Students_name, Gmail from Students where Gmail is not null;

-- in, Between, not Between--
select Student_id, Students_name, Couser_id from Students where Couser_id in ('C101', 'C102', 'C103');
select Students_id, Students_name, Gpa from Students where Gpa between 8.0 and 9.0);
select Students_id, Students_name, Gpa from Students where Gpa between 8.0 and 9.0);



