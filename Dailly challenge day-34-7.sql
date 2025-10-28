-- Procedures & Views--
create database HR_companyDB;
use HR_companyDB;

create table employees(
employee_id int primary key,
employee_name varchar(50),
department_id int,
join_date date
);

create table departments(
department_id int primary key,
department_name varchar(50)
);

create table salaries(
salary_id int primary key,
employee_id int,
salary_amount decimal(10, 2),
pay_date date,
foreign key (employee_id) references employees(employee_id)
);

insert into employees values
(1, "sri sri", 1, "2001-04-13"),
(2, "sri krishna", 2, "2004-07-10"),
(3, "ram kumar", 3, "2006-08-10"),
(4, "saru priya", 4, "2009-11-13"),
(5, "vidhya bala", 5, "2011-07-11");

insert into departments values
(1, "HR"),
(2, "Finance"),
(3, "Marketing"),
(4, "IT"),
(5, "Work home");

insert into salaries values
(1, 201, 10000, "2013-05-22"),
(2, 202, 15000, "2013-06-01"),
(3, 203, 18000, "2013-07-03"),
(4, 204, 20000, "2013-08-10"),
(5, 205, 23000, "2013-09-15");

Delimiter $$
create procedure getemployee_id(in employee_id int)
begin
select *
from employees
where employee_id = employee_id; end $$

delimiter $$;

call getemployee_id(201);


-- create viwe--
create viwe employeeDepviwe as select employee_name, departmet_name from employees join departments  on departmentid = departmentid;
-- coplax viwe--
create viwe employeefullinfo as select employee_id, employee_name, department_name, salary_amount, pay_date from employees join departments on department_id =  deparment_id
join salaries on employee_id= employee_id;


select *from employeeDepviwe;
select *from employeefullinfo;







