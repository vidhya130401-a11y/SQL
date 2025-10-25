-- Daily challenge Day 28- 1--
create database Hospital;

use Hospital;
create table patients(
patients_id int primary key,
patients_name varchar (50),
age int,
gender enum ('M','F'),
admission_date date
);

-- write a SQL command to add a new clounm Doctorassigned varchar (50) to the patiets taple.alter--
alter table patients add column Doctorassigned varchar (50);

-- write a SQL command to rename the table--
alter table patients rename Partient_info;

-- write SQL commant for truncate and drop operation--
drop table Partient_info;
