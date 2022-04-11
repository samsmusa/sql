show databases;
drop database sqlbasic;

create database sqlbasic;

use sqlbasic;

create table customers 
(
	customer_id int primary key auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_comliments int
);

insert into customers(first_name,last_name,email_address,number_of_comliments) 
values ('musa','kusa','musa@gmail',2),('jamal','kamal','jamal@gmail',4),('shahin','shapin','shahin@gmail',3);

select * from customers;

alter table customers
change column number_of_comliments number_of_compliments int default 0;

select * from customers;

insert into customers(first_name,last_name,email_address) 
values ('rahim','ahmed','rahim@gmail'),
('kelee','melle','kele@gmail'),
('mili','jelli','jelli@gmail');

select * from customers;

alter table customers
alter column number_of_compliments drop default;









CREATE DATABASE PAYMENT_OPTION;
USE PAYMENT_OPTION;

CREATE TABLE PAYMENT
(
ID INT primary KEY auto_increment,
paymentType varchar(255),
money int 
);


insert into PAYMENT(paymentType,money) values ('free',0), ('primium',200);

select * from scholarship_scholarships;

select * from scholarship_internship;

select * from scholarship_subscriptions;



use scholaruni;

insert into scholarship_scholarships(id,slug,publisher,title,country,publish_date,add_date,post_content)
values('kdfdjf-kjfd','amar-sonar-bangla','opp','djkfkdj','bangladesh','27/8','2022/02/11 23:42:11','kdfksdfjksdjfksdjfk');
SET SQL_SAFE_UPDATES = 0;
DELETE FROM scholarship_scholarships WHERE publisher = 'opportunitiescorners.info';