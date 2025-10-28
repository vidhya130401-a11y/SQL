-- Triggers & Transactions--

create database Sales;
use Sales;

create table Orders(
order_id int primary key,
order_date date,
customer_name varchar(50),
amount decimal(10, 2)
);

insert into Orders values
(1, '2025-10-05', "vidhya", 1500.00),
(2, '2025-10-11', "shakar", 2000.00),
(3, '2025-10-10', "siva", 850.00);

create table Order_History(
order_id int primary key,
order_date date,
customer_name varchar(50),
amount decimal(10, 2),
deleted_time timestamp
);

Delimiter $$
create trigger after_order_delete after delete on Orders for each row begin insert into Order_History values
(old.order_id, old.order_date, old.customer_name, old.amount);
end $$

delimiter ;

select * from Orders;
select *from Order_History;

select user from mysql.user;

create user 'root' @'localhot' identified by '130401';

grant select on Sales.* to 'root' @'localhot';

show grants for 'root' @'localhot';

revoke select on Sales.* from 'root' @'localhot';

create table Accounts(
account_id int primary key,
holder_name varchar(50),
balance decimal(10, 2)
);

insert into Accounts values
(1, "vidhya", '25000.00'),
(2, "shakar", 15000.00);

update Accounts set balance = balance + 5000 where account_id = 1;

update Accounts set balance = balance - 3000 where account_id = 2;

select account_id, balance from Accounts;

savepoint balacnce_cr;

rollback;
rollback to balacnce_cr;

commit;






