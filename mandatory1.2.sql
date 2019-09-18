begin
;
 create database Webshop5;
use Webshop5;
create table Customer(
customer_id int not null auto_increment,
first_name varchar(15),
last_name varchar(15), 
customer_address varchar(50),
email varchar(50),
phone varchar(15),
constraint Customer_pk primary key (customer_id));


create table Orders(
order_id int not null auto_increment,
customer_id int, 
order_date date,
delivery_address varchar(50),
booked boolean,
order_sent boolean,
received boolean,
estimated_delivery_date date,
constraint Orders_pk primary key (order_id, customer_ID),
foreign key (customer_id) references Customer(customer_id));

/*
	Oppgave 1.4
*/
INSERT INTO Customer (first_name, last_name, customer_address, email, phone)
VALUES ('Ola', 'Nordmann', 'JEFOKJ1', 'fevniovfeov', '884849948');

INSERT INTO Customer(first_name, last_name, customer_address, email, phone)
VALUES ('laila', 'Nordmann', 'JEFOKJ1', 'fevniovfeov', '884849948');

INSERT INTO Customer(first_name, last_name, customer_address, email, phone)
VALUES ('gunn', 'Nordmann', 'JEFOKJ1', 'fevniovfeov', '884849948');

select *
from customer;
/*
	Oppgave 2.5
*/
insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (1, '2019-02-22', 'Rudiveien 95', true, false, false, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (1, '2019-02-23', 'Rudiveien 95', true, false, false, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (2, '2019-02-22', 'Bispeveien 900', true, false, false, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (2, '2019-02-22', 'Bispeveien 900', true, false, false, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (3, '2019-02-22', 'Skippergata 33', true, true, false, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (3, '2019-02-22', 'Skippergata 33', true, true, false, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (4, '2019-02-22', 'Ekornstien 12', true, true, true, '2019-09-13');

insert into Orders (customer_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (4, '2019-02-22', 'Ekornstien 12', true, true, true, '2019-09-13');

/*
	Oppgave 1.5
*/
select first_name, last_name, email
from customer;

/*
	Oppgave 1.6
*/
select left (last_name, 3)
from customer;

select *
from orders;

/*
	Oppgave 2.3
*/
desc customer;

select *
from customer
inner join orders on customer.customer_id = orders.customer_id;

/*
	Oppgave 2.6
*/
select customer.first_name, customer.last_name, orders.order_date, orders.booked, orders.order_sent, orders.received
from customer
inner join orders on customer.customer_id = orders.customer_id;

delete from customer 
where customer_id = 1;

/*
	Oppgave 2.7
*/
select first_name, last_name, order_date, booked, order_sent, received
from customer, orders;

