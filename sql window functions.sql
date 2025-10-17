select * from Students;

select * ,ROW_NUMBER() over (order by marks desc) as [row number]
from Students

select * ,rank()over (order by marks desc ) as [rank functions]
from Students

select * ,DENSE_RANK() over (order by marks  desc) as [rank]
from Students