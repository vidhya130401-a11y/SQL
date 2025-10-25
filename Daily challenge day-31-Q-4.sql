-- Daily challenge Day-31 Sorting & Aggregates--

create database Openshop;
use Openshop;

create table Department(
department_id int primary key,
department_name varchar (100)
);

create table Products(
product_id int primary key,
product_name varchar (100),
product_price decimal (10, 2),
quantity int
);

insert into Products values
(01, "Air Conditioner", 42000, 10),
(02, "Wasing Machine", 3500, 15),
(03, "Vivo", 45000, 20),
(04, "Laptop", 30000, 25);

create table Sales(
sales_id int primary key,
customer_id int,
customer_name varchar (50),
product_id int,
foreign key (product_id) references Products(product_id),
sales_price int,
salaes_quantity int,
Total_amount decimal (10, 2)
);

insert into Sales values
(01, 201, "vithya", 501, 30000, 2, 60000),
(02, 202, "vimal", 502, 35000, 1, 35000),
(03, 203, "kumar", 503, 50000, 2, 100000),
(04, 204, "siva", 504, 28000, 3, 84000);

create table Employees(
employee_id int primary key,
employee_name varchar (50)
);

-- order by & limit--
select * from Products order by Product_price desc limit 3;

-- aggregate funtion--
select count(*) as Total_price from Sales;

select sum(Total_amount) as Total_revenu from Sales;

select avg(Total_amount) as average_sales_value from Sales;

select max(Total_amount) as highest_sale from Sales;

select min(Total_amount) as lowest_sale from sales;

-- group by & having--
select department_id, count(employee_id) as Total_employee from Employees;
group by department having count(employee_id) > 10;








