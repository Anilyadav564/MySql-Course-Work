use flipkart;

-- System functions

select version();
select database();
select user();
select connection_id();

create table customers(
id int auto_increment primary key,
name varchar(50),
city varchar(50)
);

INSERT INTO customers(name, city)
VALUES ('Viswa', 'Hderabad');

SELECT LAST_INSERT_ID();

USE flipkart;

CREATE TABLE online_customers(
	id INT,
    name VARCHAR(50)
);

CREATE TABLE store_customers(
	id INT,
    name VARCHAR(50)
);

INSERT INTO online_customers VALUES
(1, 'Krish'),
(2, 'Cherry'),
(3, 'Viswa'),
(4, 'Devi'),
(5, 'Anil'),
(6, 'Greesh'),
(7, 'Ghani');

select name from onlie_customers
union
select nam from store_customers;

select name from online_customers
union all
select name from store_customers;

select name from online_customers
where name in (select name from store_customers);


select name from online_customers
where name not in (select name from store_customers);



