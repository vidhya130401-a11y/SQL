-- day 33- function--

create database employeeDB;
use employeeDB;

create table employees(
employee_id int primary key,
first_name varchar(50),
last_name varchar(50),
hire_date date
);

insert into employees values
(1, "sri", "sri", "2001-04-13"),
(2, "sri", "krishna", "2004-07-10"),
(3, "ram", "kumar", "2006-08-10"),
(4, "saru", "priya", "2009-11-13"),
(5, "vidhya", "bala", "2011-07-11");

--  Write queries using UPPER, LOWER, SUBSTRING, CONCAT--
select first_name, last_name, lower(first_name), upper(last_name) from employees;
select first_name, substring(first_name,1,3) as sub_sting from employees;
select first_name, last_name, concat(first_name, " ", last_name) as full_name from employees;

-- Date Functions--
-- Calculate employee tenure in years--
-- Employee tenure is calculated correctly--

select first_name, last_name, hire_date, year(now())-year(hire_date) as Tenure_year from employees;
select employee_id, datediff(now(),hire_date) as Tenure_days from employees;

-- User-defined Function--
-- Create a reusable function to return full name of a student--

create table students(
student_id int primary key,
frist_name varchar(50),
last_name varchar(50)
);

insert into students values
(1, "sri", "sri"),
(2, "sri", "krishna"),
(3, "ram", "kumar"),
(4, "saru", "priya"),
(5, "vidhya", "bala");

Delimiter //
create function getfullname(first_name varchar(50), last_name varchar(50)) returns varchar(100) deterministic begin return concat(first_name," ", last_name);end //
select getfullname(frist_name,last_name) from students;

