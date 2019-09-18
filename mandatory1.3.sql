begin
;
create database Webshop7;
use Webshop7;
create table Customer(
customer_id int not null auto_increment,
first_name varchar(15),
last_name varchar(15), 
customer_address varchar(50),
email varchar(50),
phone varchar(15),
constraint Customer_pk primary key (customer_id));


create table Orders(
customer_id int not null, 
product_id int not null,
order_date date,
delivery_address varchar(50),
booked boolean,
order_sent boolean,
received boolean,
estimated_delivery_date date,
constraint Orders_pk primary key (product_id, customer_ID));

create table Product(
product_id int not null,
product_name varchar(50),
price int,
quantity int,
constraint Product_pk primary key (product_id));

INSERT INTO Product (product_id, product_name, price, quantity)
values (1, 'Litago', 14, 98);

INSERT INTO Product (product_id, product_name, price, quantity)
values (2, 'Pepsi max', 34, 203);

INSERT INTO Product (product_id, product_name, price, quantity)
values (3, 'Fanta Lemon', 34, 720);

INSERT INTO Product (product_id, product_name, price, quantity)
values (4, 'Ritz', 24, 361);

select *
from customer 
inner join orders on customer.customer_id = orders.customer_id
inner join product on product.product_id = orders.product_id;


INSERT INTO Customer (first_name, last_name, customer_address, email, phone)
VALUES ('Ola', 'Nordmann', 'JEFOKJ1', 'fevniovfeov', '884849948');

INSERT INTO Customer(first_name, last_name, customer_address, email, phone)
VALUES ('laila', 'Nordmann', 'JEFOKJ1', 'fevniovfeov', '884849948');

INSERT INTO Customer(first_name, last_name, customer_address, email, phone)
VALUES ('gunn', 'Nordmann', 'JEFOKJ1', 'fevniovfeov', '884849948');

select *
from customer;

/*
	Oppgave 3
*/
insert into Orders (customer_id, product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (1, 1, '2019-02-22', 'Rudiveien 95', true, false, false, '2019-09-13');

insert into Orders (customer_id,product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (1, 2, '2019-02-23', 'Rudiveien 95', true, false, false, '2019-09-13');

insert into Orders (customer_id,product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (2, 3, '2019-02-22', 'Bispeveien 900', true, false, false, '2019-09-13');

insert into Orders (customer_id,product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (2, 4, '2019-02-22', 'Bispeveien 900', true, false, false, '2019-09-13');

insert into Orders (customer_id, product_id,order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (3, 1, '2019-02-22', 'Skippergata 33', true, true, false, '2019-09-13');

insert into Orders (customer_id,product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (3, 2, '2019-02-22', 'Skippergata 33', true, true, false, '2019-09-13');

insert into Orders (customer_id,product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (4, 3, '2019-02-22', 'Ekornstien 12', true, true, true, '2019-09-13');

insert into Orders (customer_id, product_id, order_date, delivery_address, booked, order_sent, received, estimated_delivery_date)
values (3, 3, '2019-08-22', 'Ekornstien 12', true, true, true, '2019-09-13');

select *
from orders;

select *, left(product_name, 10)
from orders
inner join product on product.product_id = orders.product_id
where order_date >='2019-08-01' and order_date <= '2019-08-31';

/*
	Oppgave 4a, b 
*/
select *, left(product_name, 10)
from orders
inner join product on product.product_id = orders.product_id
where order_date >='2019-08-01' and order_date <= '2019-08-31' and product_name like '%star%';

/*
	Oppgave 4c,d
*/
select customer.first_name,
	customer.last_name,
    product.quantity,
    product.product_name
from customer 
inner join orders on customer.customer_id = orders.customer_id
inner join product on product.product_id = orders.product_id
order by customer.last_name, product.product_name;

delete
from product;

select *
from product;
/*
	Oppgave 4e
*/
alter table Webshop7.product
add column reorder_level varchar(20);










