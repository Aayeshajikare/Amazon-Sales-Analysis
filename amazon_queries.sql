-- Amazon Sales Analysis Queries
-- Run these one by one in MySQL Workbench

-- Step 1: Select Database
USE ecommerce_project;

-- Query 1: View Sample Data
SELECT * FROM `amazon sale report` LIMIT 5;

-- Query 2: Total Revenue
SELECT SUM(Amount) as Total_Revenue 
FROM `amazon sale report`;

-- Query 3: Best Selling Category
SELECT Category, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY Category 
ORDER BY Total_Orders DESC;

-- Query 4: Top 10 Cities
SELECT `ship-city`, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY `ship-city` 
ORDER BY Total_Orders DESC 
LIMIT 10;

-- Query 5: Order Status
SELECT Status, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY Status 
ORDER BY Total_Orders DESC;

-- Query 6: Top 10 States
SELECT `ship-state`, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY `ship-state` 
ORDER BY Total_Orders DESC 
LIMIT 10;

-- Query 7: Average Order Value
SELECT AVG(Amount) as Average_Order_Value 
FROM `amazon sale report`;

-- Query 8: Monthly Sales
SELECT `Date`, COUNT(*) as Total_Orders, SUM(Amount) as Revenue
FROM `amazon sale report` 
GROUP BY `Date`
ORDER BY `Date`;
