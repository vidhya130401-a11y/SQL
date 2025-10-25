-- Dally Challenge Day 29--

create database Book;
use Book;

-- create Book table with primary key--
create table Books(
Book_id int primary key,
Tittle varchar (50),
Authour varchar (100),
Publication_name varchar (100),
Price decimal (10, 2)
);

-- create order table with foreign key referencing Books(Book_id)--
create table Orders(
Order_id int primary key,
Order_date Date,
Book_id int,
Quqntity int,
price decimal (10, 2),
foreign key (Book_id) references Books(Book_id)
 );
 
 select * from Orders;
 
 -- add ISBN colunm with unique constraint--
 alter table Books add ISBN varchar (20) unique;
 
 select * from Books;
 -- delete specifick rows--
 delete from Orders where Book-id < 100;
 -- truncate removers all rows quickly--
 drop table  orders;

