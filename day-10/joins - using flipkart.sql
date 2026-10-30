-- =========================================================
-- FLIPKART DATABASE - SQL JOINS
-- =========================================================

DROP DATABASE IF EXISTS flipkart;

CREATE DATABASE flipkart;

USE flipkart;


-- =========================================================
-- 1. USERS TABLE
-- =========================================================

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    referred_by INT,

    FOREIGN KEY (referred_by)
    REFERENCES users(user_id)
);


-- =========================================================
-- 2. PRODUCTS TABLE
-- =========================================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);


-- =========================================================
-- 3. ADD TO FAVOURITE TABLE
-- =========================================================

CREATE TABLE add_to_favourite (
    fav_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    added_date DATE,

    FOREIGN KEY (user_id)
    REFERENCES users(user_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);


-- =========================================================
-- 4. INSERT USERS
-- =========================================================

INSERT INTO users
(user_id, user_name, email, city, referred_by)
VALUES
(1, 'Rahul', 'rahul@gmail.com', 'Hyderabad', NULL),
(2, 'Priya', 'priya@gmail.com', 'Chennai', 1),
(3, 'Arjun', 'arjun@gmail.com', 'Bangalore', 1),
(4, 'Sneha', 'sneha@gmail.com', 'Mumbai', 2),
(5, 'Kiran', 'kiran@gmail.com', 'Delhi', 3),
(6, 'Meena', 'meena@gmail.com', 'Pune', 2);


-- =========================================================
-- 5. INSERT PRODUCTS
-- =========================================================

INSERT INTO products
(product_id, product_name, category, price)
VALUES
(101, 'iPhone 15', 'Mobile', 69999),
(102, 'Samsung Galaxy S24', 'Mobile', 74999),
(103, 'HP Laptop', 'Laptop', 55999),
(104, 'Dell Laptop', 'Laptop', 64999),
(105, 'Sony Headphones', 'Electronics', 8999),
(106, 'Nike Shoes', 'Footwear', 5999),
(107, 'Smart Watch', 'Electronics', 3999),
(108, 'Canon Camera', 'Camera', 45999);


-- =========================================================
-- 6. INSERT FAVOURITE PRODUCTS
-- =========================================================

INSERT INTO add_to_favourite
(fav_id, user_id, product_id, added_date)
VALUES
(1, 1, 101, '2026-09-01'),
(2, 1, 105, '2026-09-02'),
(3, 2, 102, '2026-09-03'),
(4, 2, 106, '2026-09-04'),
(5, 3, 103, '2026-09-05'),
(6, 3, 107, '2026-09-06'),
(7, 4, 104, '2026-09-07'),
(8, 5, 101, '2026-09-08'),
(9, 5, 108, '2026-09-09');


-- =========================================================
-- 7. CHECK TABLES
-- =========================================================

SELECT * FROM users;

SELECT * FROM products;

SELECT * FROM add_to_favourite;

select
u.user_id,
u.user_name,
f.products_id
from users u
inner join add_ro_favourite f
on u.user_id = f.user_id;

select 
     u.user_name,
     p.products_name,
     f.added_date
from user u
inner join add_to_favorite f
on u.user_id = f.user_id
inner join products p
on f.products_id = p.products_id;
-- Q
-- display user name and favuorite products id
-- using an equality condtion .
select u.user_name, a.products_id
from user u, add_ to_favourite a
where u.user_id = a.user_id;
SELECT
    u.user_name,
    f.product_id
FROM users u
INNER JOIN add_to_favourite f
ON u.user_id = f.user_id;
-- Q

SELECT
u.user_name,
p.product_name
FROM users u
JOIN add_to_favourite f
on u.user_id = f.user_id
join products p
on f.products_id = p.products_id;

-- Q
CREATE TABLE price_category (
    category_name VARCHAR(30),
    min_price DECIMAL(10,2),
    max_price DECIMAL(10,2)
);

INSERT INTO price_category
(category_name, min_price, max_price)
VALUES
('Budget', 0, 10000),
('Mid Range', 10001, 50000),
('Premium', 50001, 100000);
SELECT
    p.product_name,
    p.price,
    pc.category_name
FROM products p
INNER JOIN price_category pc
ON p.price BETWEEN pc.min_price AND pc.max_price;

-- Display users and their favourite records.
SELECT *
FROM users
NATURAL JOIN add_to_favourite;

-- Q natural joins
SELECT *
FROM products
NATURAL JOIN add_to_favourite;

-- 5. self join
-- Questions:
-- display every user and the person who reffered them.

select 
   u.user_name As user,
   r.user_name As reffered_by
from user u
left join user r
on u.reffered_by = r.user_id;

-- 6. left join

--  question :
-- display all user and their favoruite products
-- users without favourite

select 
  u.user_id,
  u.user_name,
  f.products_id
from user u
left join add_to_favorite f
on u.user_id = f.user_id;

-- 7. righrt join

-- question :
-- display all products and the users who added them'
-- to favorite.

SELECT
a.product_id,
p.product_name,
a.user_id
FROM product p RIGHT JOIN add_to_favourite a ON p.product_id = a.product_id ORDER BY product_id ASC;

-- display all users and all favorite records

-- =======================================
-- FULL OUTER JOIN
-- =======================================

SELECT
u.user_id,
u.user_name,
a.product_id
FROM users u 
LEFT JOIN add_to_favourite a ON u.user_id = a.user_id
RIGHT JOIN product p ON a.product_id = p.product_id;


     