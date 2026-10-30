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

select * from Products;

select ProductName from Products;

select Price from Products;

select stock from Products;

select category, price, stock from products;

select productid, productname from products;

select productname, createdat, isavailable from products;

select * from Products;

select * from products where category = 'Electronics';

select * from products where price < 5000;

select * from products where stock > 100;

select price as mrp,productname from products;

select price as Cost, productname from products;

select * from products where price between 5000 and 10000;

select * from products where stock between 10 and 40;

select * from products where price between 6000 and 7000;

select * from products where productname like 'd%';

select * from products where productname like '%e';

select * from products where productname like '%i%';

select * from products where category in ('Accessories', 'Furniture');

select * from products where category not in ('Accessories', 'Furniture');

select * from products order by price asc;

select * from products order by stock;

select * from products order by price desc;

SELECT DISTINCT category FROM Products;

SELECT DISTINCT price FROM Products;

select * from Products limit 5;

SELECT SUM(Price) AS TotalValue FROM Products;

SELECT avg(Price) AS Avgprice FROM Products;

SELECT max(Price) AS Maximum_price FROM Products;

SELECT min(Price) AS minimum_price FROM Products;

SELECT COUNT(category) FROM Products where category = 'Electronics';

SELECT COUNT(*) as total_rows FROM Products;

SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category;

SELECT Category, Max(Price) AS MaximumPrice
FROM Products
GROUP BY Caregory;

SELECT Category, Min(Price) AS MinimumPrice
FROM Products
GROUP BY Caregory;

SELECT Category, Sum(Price) as TotalPrice, sum(stock) AS TotalStock
FROM Products
GROUP BY Caregory;

SELECT Category, avg(Price) AS AvgStock
FROM Products
GROUP BY Caregory;

SELECT Category, COUNT(*) AS ProductCount
FROM Products
GROUP BY Category having ProductCount > 5;

SELECT Category, sum(Price) AS Total_category_price
FROM Products
GROUP BY Category having Total_category_price > 5000;

SELECT Category, avg(Price) AS Avg_category_price
FROM Products
GROUP BY Category having Avg_category_price > 5000;

SELECT Category, max(stock) AS Max_stock
FROM Products
GROUP BY Category having Max_stock > 50;


SELECT Category, min(stock) AS Min_stock
FROM Products
GROUP BY Category having Min_stock > 50;
-- =====================================================
-- ARITHMETIC OPERATORS
-- =====================================================
-- Addition
SELECT ProductName, Price, Price + (price*0.1) AS IncreasedPrice
FROM Products;

-- Subtraction
SELECT ProductName, Price, Price - (price*0.5) AS DiscountPrice
FROM Products;

-- Multiplication
SELECT ProductName, Price, Price * 2 AS DoublePrice
FROM Products;

-- Division
SELECT ProductName, Price, Price / 2 AS HalfPrice
FROM Products;

-- Modulas (remainder)
SELECT ProductName, Stock, Stock % 2 AS StockRemainder
FROM Products;

-- =====================================================
-- COMPARSION OPERATORS
-- =====================================================
-- Equal
SELECT * FROM Products
WHERE Category = 'Furniture';

-- Not Equal
SELECT * FROM Products
WHERE Category <> 'Electronics';

-- Greater Than
SELECT * FROM Products
WHERE Price > 20000;

-- Less Than
SELECT * FROM Products
WHERE Price > 5000;

-- Greater Than or Equal
SELECT * FROM Products
WHERE stock >= 5;

-- Less Than or Equal
SELECT * FROM Products
WHERE stock <= 5;

-- IS NULL
SELECT * FROM Products
WHERE Category IS NULL;

-- IS NOT NULL
SELECT * FROM Products
WHERE Category IS NOT NULL;

-- =====================================================
-- LOGICAL OPERATORS
-- =====================================================

-- AND
SELECT * FROM Products
WHERE Price > 10000 AND Stock > 5;

-- or
SELECT * FROM Products
WHERE Category = 'Furniture'
OR Category = 'Stationery';

-- NOT
SELECT * FROM Products
WHERE NOT Category = 'Electronics';

-- =====================================================
-- BITWISE OPERATORS
-- =====================================================

-- Bitwise AND
SELECT 10 & 6 AS BitwiseAND;

-- Bitwise OR
SELECT 10 | 6 AS BitwiseOR;

-- Bitwise XOR
SELECT 10 ^ 6 AS BitwiseXOR;

-- Bitwise NOT
SELECT ~10 AS BitwiseNOT;

-- Left Shift
SELECT 5 << 1 AS LeftShift;

-- Right Shift
SELECT 20 >> 2 AS RightShift;
-- =====================================================
-- ASSIGNMENT OPERATORS
-- =====================================================

SET @total := 100;
SELECT @total;

SELECT @total AS AssignedValue;


