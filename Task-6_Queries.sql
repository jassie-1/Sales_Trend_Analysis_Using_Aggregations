USE wow;
-- CREATE TABLE Sales_Data (
-- Transaction_ID INT,
-- Date DATE,
-- Product_Category VARCHAR(100),
-- Product_Name VARCHAR(200),
-- Units_Sold INT,
-- Unit_Price DECIMAL(10,2),
-- Total_Revenue DECIMAL(10,2),
-- Region VARCHAR(50), 
-- Payment_Method VARCHAR(50)
-- );

-- Extracting data from .csv file using "Table Data Import Wizard"

-- SELECT * FROM Sales_Data;

-- Monthly Revenue and Order Volume without limiting for specific time periods.

SELECT YEAR(Date) AS Order_Year,
MONTHNAME(Date) AS Order_Month,
SUM(Total_Revenue) AS Monthly_Revenue,
COUNT(DISTINCT Transaction_ID) AS Order_Volume
FROM Sales_Data
GROUP BY Order_Year, MONTH(Date), Order_Month
ORDER BY Order_Year, MONTH(Date), Order_Month;

-- Monthly Revenue and Order Volume without limiting for specific time periods.
-- Here, taking Order_Year, Order_Month, Monthly_Revenue, Order_Volume for the month of APRIL.
-- You can modify datesfor different month accordingly.

SELECT YEAR(Date) AS Order_Year,
MONTHNAME(Date) AS Order_Month,
SUM(Total_Revenue) AS Monthly_Revenue,
COUNT(DISTINCT Transaction_ID) AS Order_Volume
FROM Sales_Data
WHERE Date BETWEEN '2024-04-01' AND '2024-04-30'
GROUP BY Order_Year, MONTH(Date), Order_Month
ORDER BY Order_Year, MONTH(Date), Order_Month;




