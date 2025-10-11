select * from [dbo].[Customers]
select * from [dbo].[Orders]


select 
c.CustomerName,
C.city,
o.product,
o.price

from 
Customers as c

right join 

Orders as o

on 

c.CustomerID=o.CustomerID