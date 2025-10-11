select * from [dbo].[Customers]
select *from [dbo].[Orders]


select
c.CustomerName,
c.city,
o.Product,
o.Price

from Customers as c

inner join 
Orders AS o

on 
c.CustomerID=o.CustomerID