create table customers
(
    customer_id int primary key auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_compliments INT
);

alter table customers
change column number_of_compliments number_of_compliments int default 0;

