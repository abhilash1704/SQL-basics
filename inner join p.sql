select * from  [dbo].[Customers]
select * from [dbo].[Orders]

select 
c.CustomerName,
c.City,
o.product,
o.Price

from 
Customers as c

right join  
Orders as o

 on 
 c.CustomerID =o.CustomerID
