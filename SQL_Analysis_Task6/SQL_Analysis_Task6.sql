-- USE can help to specify the database 
USE online_sales; 

-- selected all the rows and columns from a table
SELECT * FROM amazon;

-- Renamed the table name 
RENAME TABLE amazon TO amazon_sales;
SELECT * FROM amazon_sales;

--  Describe Function is used to check the  datatypes of table
DESCRIBE amazon_sales;

-- Checking Null Values
-- I use Primary column to check Null values because primary/unique column can't be null
SELECT * FROM amazon_sales WHERE `Invoice ID` IS NULL;


-- Extracting Month and Year from Date Column
SELECT date , YEAR(date) AS Sales_year from amazon_sales;
SELECT date , MONTHNAME(date) as Month from amazon_sales;


--  I added 3 New Column for year and Monthname and weekname  from using Date column
ALTER TABLE amazon_sales
ADD COLUMN Month_name text;
UPDATE amazon_sales
SET Month_name = MONTHNAME(date) ;


ALTER TABLE amazon_sales
ADD COLUMN Order_Year text;
UPDATE amazon_sales
SET Order_Year = YEAR(date);


ALTER TABLE amazon_sales
ADD COLUMN Day_of_week text;
UPDATE amazon_sales
SET Day_of_week = DAYNAME(date);


-- I use Aggregate and Group by functions to Know the Revenue of Sales
-- and Orderby helps to sort the renevue in Descending order
SELECT `product line` , Order_Year, SUM(total) AS Revenue from amazon_sales
Group by `Product line`,Order_year
ORDER BY Revenue DESC;


-- In a Week  Saturday and Tuesday has  Most  Orders which are Placed by Customers.
SELECT Day_of_week ,COUNT(`Invoice ID`) AS Orders_onDay  from amazon_sales
GROUP BY Day_of_week
ORDER BY Orders_onDay DESC;


-- The Highest count of Orders are from Fashion accessories, Food and beverages, 
-- Electronic accessories 
SELECT `Product line` , COUNT(`Invoice ID`) AS Highest_Orders FROM amazon_sales
GROUP BY `Product line`
ORDER BY Highest_Orders DESC;


-- Female Customers are Generating Highest Revenue for all the Products
SELECT Gender , sum(total) AS Revenue
FROM amazon_sales
GROUP BY Gender
ORDER BY Revenue DESC;



-- Mostly Electonic accessories , Food and beverages are Sold in Large Amounts.
SELECT `Product line` , SUM(Quantity) AS Product_Quantity
FROM amazon_sales
GROUP BY `Product line`
ORDER BY Product_Quantity DESC;



-- Branch C is Generatin More Sales with these products.
SELECT Branch ,SUM(Total) AS Revenue , Month_name , `Product line`
FROM amazon_sales
GROUP BY Branch
ORDER BY Revenue DESC;



-- Most of the Customers using Ewallet Method for Payment
-- It allows you to store and manage various payment methods like Debit Card,Credit Card or phone pay ,Google pay
--  and E-wallets are protected by a password so it is safe to use.
SELECT Payment, count(Payment) AS Frequent_Method FROM amazon_sales
GROUP BY Payment
ORDER BY Frequent_Method
LIMIT 3;


-- Most of the Customer have Membership and sales from those Customers are huge
SELECT `customer Type`, COUNT(*) AS No_of_Customers from amazon_sales
GROUP BY `Customer type`
ORDER BY No_of_Customers DESC;


-- Branch C which is Naypyitaw is Generating More Revenue.
SELECT DISTINCT(City), Branch, SUM(Total)  AS Revenue FROM amazon_sales
GROUP BY City , Branch
ORDER BY Revenue DESC;


-- The Top 3 Rated Products are Health and beauty ,Electronic accessories ,Home and lifestyle
SELECT `Product line` , Rating FROM amazon_sales
GROUP BY `Product line`;


-- The gross income for products like Sport and travel, health and beauty are have More Profits.
SELECT `Product line` , `gross income`FROM amazon_sales
GROUP BY `Product line`
ORDER BY `gross income` DESC;