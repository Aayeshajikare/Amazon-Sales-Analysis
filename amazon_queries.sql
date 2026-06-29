
CREATE DATABASE ecommerce_project;
USE ecommerce_project;
   

CREATE TABLE amazon_sales (
	id INT,
    order_id VARCHAR(50),
    date VARCHAR(20),
	sale_status VARCHAR(50),
    fulfilment VARCHAR(50),
    sales_channel VARCHAR(50),
    ship_service VARCHAR(50),
    style VARCHAR(50),
    sku VARCHAR(50),
    category VARCHAR(50),
    size_col VARCHAR(20),
    asin VARCHAR(50),
    courier_status VARCHAR(50),
    qty VARCHAR (20),
    currency VARCHAR(10),
    amount VARCHAR(20),
    ship_city VARCHAR(50),
    ship_state VARCHAR(50),
    ship_postal VARCHAR(20),
    ship_country VARCHAR(20),
    promotion_ids VARCHAR(200),
    b2b VARCHAR(10),
    filfilled_by VARCHAR(50)
);



USE ecommerce_project;


SELECT * FROM `amazon sale report` LIMIT 5;

SELECT SUM(Amount) as Total_Revenue 
FROM `amazon sale report`;

SELECT Category, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY Category 
ORDER BY Total_Orders DESC;

SELECT `ship-city`, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY `ship-city` 
ORDER BY Total_Orders DESC 
LIMIT 10;

SELECT Status, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY Status 
ORDER BY Total_Orders DESC;

SELECT `ship-state`, COUNT(*) as Total_Orders 
FROM `amazon sale report` 
GROUP BY `ship-state` 
ORDER BY Total_Orders DESC 
LIMIT 10;

SELECT AVG(Amount) as Average_Order_Value 
FROM `amazon sale report`;

SELECT `Date`, COUNT(*) as Total_Orders, SUM(Amount) as Revenue
FROM `amazon sale report` 
GROUP BY `Date`
ORDER BY `Date`;
