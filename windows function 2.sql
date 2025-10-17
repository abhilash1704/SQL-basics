select * from [dbo].[Students]


select * , ROW_NUMBER () over (partition by subject order by marks desc) [Row Number]
from Students


select *, ROW_NUMBER() over (partition by student_name order by marks desc) [Row numbers]
from Students


select * ,rank() over (partition by subject order by marks desc) [row numbers]
from Students

select * ,DENSE_RANK() over (partition by subject order by marks desc)[row numbers]
from students