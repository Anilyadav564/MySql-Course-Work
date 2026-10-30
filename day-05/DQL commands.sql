create database flipkart;
use flipkart;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT,
    CreatedAt DATE,
    IsAvailable BOOLEAN
);

-- =========================================
-- 2. INSERT 20 PRODUCTS
-- =========================================y

INSERT INTO Products VALUES
(1, 'iPhone 15', 'Electronics', 80000, 10, '2024-01-10', TRUE),
(2, 'Samsung S24', 'Electronics', 75000, 15, '2024-02-15', TRUE),
(3, 'Dell Laptop', 'Electronics', 65000, 5, '2023-12-01', TRUE),
(4, 'HP Laptop', 'Electronics', 60000, 7, '2023-11-20', TRUE),
(5, 'Office Chair', 'Furniture', 7000, 20, '2024-03-05', TRUE),
(6, 'Study Table', 'Furniture', 12000, 8, '2024-03-12', TRUE),
(7, 'Water Bottle', 'Accessories', 500, 50, '2024-01-01', TRUE),
(8, 'Backpack', 'Accessories', 1500, 30, '2024-02-01', TRUE),
(9, 'Smart Watch', 'Electronics', 15000, 12, '2024-04-01', TRUE),
(10, 'Bluetooth Speaker', 'Electronics', 3000, 25, '2024-04-10', TRUE),
(11, 'Notebook', 'Stationery', 50, 100, '2024-01-05', TRUE),
(12, 'Pen Pack', 'Stationery', 100, 200, '2024-01-08', TRUE),
(13, 'Gaming Mouse', 'Electronics', 2000, 18, '2023-10-10', TRUE),
(14, 'Keyboard', 'Electronics', 2500, 22, '2023-09-15', TRUE),
(15, 'Monitor', 'Electronics', 18000, 6, '2023-08-20', TRUE),
(16, 'Sofa', 'Furniture', 35000, 3, '2023-07-01', TRUE),
(17, 'Dining Table', 'Furniture', 40000, 2, '2023-06-10', FALSE),
(18, 'Headphones', 'Electronics', 5000, 14, '2024-05-01', TRUE),
(19, 'Coffee Mug', 'Accessories', 300, 60, '2024-05-05', TRUE),
(20, 'Tablet', 'Electronics', 30000, 9, '2024-06-01', TRUE);


-- query to access data from aboce (sql)--
select * from products;

select productName from products;


select  Price from products;

select Stock from products;

select Category, Price, Stock from products;

select  productid,productName from products;

select  productName,createdat,isavailable from products;

select * from products;

select * from  products where Category = 'Electronic';

select * from  products where price <5000;

select * from products where stock >100;

select price as cost,productName from products;

select * from products where price between 5000 and 10000;

select * from products where stock between 10 and 40;


select * from products  where price between 6000 and 7000;

select * from products where productName like 'd%';-- start letter--

select * from products where productName like  '%e'; -- end letter--

select * from products where productName like  '%i%'; -- in between--

select * from products where category in ('Accessories', 'Furniture');

select * from products where category not in ('Accessories','Furniture');

select * from products order by price asc;

select * from products order by stock;

select * from products order by price desc;

select distinct category from products; -- get only single not duplicates--

select * from products limit 10;-- top from products we get--

-- agree gation function--

SELECT  SUM(price) As TotalValue from products;


SELECT  AVG(price) As TotalValue from products;

SELECT max(price) As TotalValue from products;

SELECT  min(price) As TotalValue from products;

select count(category) from products where category = 'Electronic';

select count(*) as total_rows from products;













