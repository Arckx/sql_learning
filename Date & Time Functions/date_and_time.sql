use SalesDB;

SELECT 
OrderID,
OrderDate,
ShipDate,
CreationTime
FROM Sales.Orders;

/* Part Extraction */

/* Year Function */

SELECT
OrderID,
CreationTime,
YEAR(CreationTime) AS Year
FROM Sales.Orders;

/* Month Function */

SELECT
OrderID,
CreationTime,
MONTH(CreationTime) AS Month
FROM Sales.Orders;

/* Day Function */

SELECT
OrderID,
CreationTime,
DAY(CreationTime) AS Day
FROM Sales.Orders;

/* DatePart Function */

SELECT
OrderID,
CreationTime,
DATEPART(year, CreationTime) AS Year_dp,
DATEPART(month, CreationTime) AS Month_dp,
DATEPART(day, CreationTime) AS Day_dp,
DATEPART(hour, CreationTime) AS Hour_dp,
DATEPART(quarter, CreationTime) AS Quarter_dp,
DATEPART(week, CreationTime) AS Week_dp,
DATEPART(weekday, CreationTime) AS Weekday_dp
FROM Sales.Orders;

/* DateName Function */

SELECT
OrderID,
CreationTime,
DATENAME(month, CreationTime) AS Month_dn,
DATENAME(weekday, CreationTime) AS weekday_dn
FROM Sales.Orders;

/* DateTrunc Function */

SELECT
OrderID,
CreationTime,
DATETRUNC(minute, CreationTime) AS Minute_dt,
DATETRUNC(day, CreationTime) AS Day_dt
FROM Sales.Orders;

