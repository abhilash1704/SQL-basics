TRUNCATE TABLE MonthlySales;
DROP TABLE IF EXISTS MonthlySales;


CREATE TABLE MonthlySales (
    ID INT PRIMARY KEY,
    MonthName VARCHAR(20),
    SalesAmount INT
);

INSERT INTO MonthlySales (ID, MonthName, SalesAmount)
VALUES
(1, 'January', 10000),
(2, 'February', NULL),
(3, 'March', 9000),
(4, 'April', NULL),
(5, 'May', 17000),
(6, 'June', 20000),
(7, 'July', NULL);


select 
ID,
MonthName,
SalesAmount,


lag(SalesAmount) over (order by Id) as prevoiussalesProfit,
Isnull(Lag(SalesAmount) over (order by ID),0) as prevmonth_isnull,
coalesce (lag(SalesAmount) over (order by ID),0) as prev_mouth
from MonthlySales;


select 
ID,
MonthName,
SalesAmount,

isNull(lag(SalesAmount) over (order by ID),0) as prev
from  MonthlySales;
