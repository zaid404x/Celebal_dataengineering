CREATE DATABASE celebal_sales; 
USE celebal_sales;
SELECT * FROM superstore LIMIT 5;
SELECT COUNT(*) FROM superstore;
DESCRIBE superstore;
SELECT Region, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region;

SELECT ProductName, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;
DESCRIBE superstore;

SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT Category, AVG(Sales) AS Avg_Sales
FROM superstore
GROUP BY Category;

SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT `Customer Name`, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 50;

SELECT MONTH(`Order Date`) AS Month,
SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY MONTH(`Order Date`)
ORDER BY Month;

SELECT `Order Date`
FROM superstore
LIMIT 5;

SELECT 
MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Month,
SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY MONTH(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))
ORDER BY Month;

SELECT Region, SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Region; 

SELECT `Row ID`, COUNT(*)
FROM superstore
GROUP BY `Row ID`
HAVING COUNT(*) > 1;

SELECT *
FROM superstore
WHERE Sales > 5000;

SELECT *
FROM superstore
WHERE Category = 'Technology';

SELECT `Product Name`, Profit
FROM superstore
ORDER BY Profit DESC
LIMIT 10;

SELECT State, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT `Product Name`, Profit
FROM superstore
ORDER BY Profit DESC
LIMIT 10;

SELECT `Product Name`, Profit
FROM superstore
ORDER BY Profit DESC
LIMIT 100;

SELECT `Product Name`, Profit
FROM superstore
ORDER BY Profit ASC
LIMIT 12;

SELECT Category, AVG(Discount) AS Avg_Discount
FROM superstore
GROUP BY Category;

SELECT City, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5;

SELECT `Sub-Category`, SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Quantity DESC;

SELECT Region, AVG(Sales) AS Avg_Sales
FROM superstore
GROUP BY Region;