
CREATE DATABASE CompanyData33;



USE CompanyData33;



CREATE TABLE MonthlySales (
    ID INT PRIMARY KEY,
    MonthName VARCHAR(20),
    SalesAmount INT
);


INSERT INTO MonthlySales (ID, MonthName, SalesAmount) VALUES
(1, 'January', 10000),
(2, 'February', 12000),
(3, 'March', 9000),
(4, 'April', 15000),
(5, 'May', 17000);


SELECT
    MonthName,
    SalesAmount,
    LAG(SalesAmount, 1, 0) OVER (ORDER BY ID) AS PrevMonthSales,
    SalesAmount - LAG(SalesAmount, 1, 0) OVER (ORDER BY ID) AS Difference
FROM MonthlySales;
GO

select 
MonthName ,
Salesamount,
lag(SalesAmount) over (order by ID) as prevismathssales
from MonthlySales;

select * from MonthlySales 

select 
MonthName,
SalesAmount,
SalesAmount -lag(SalesAmount) over (order by ID) as difffromprev
from MonthlySales ;

