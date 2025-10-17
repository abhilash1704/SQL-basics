create database Dell

use Dell;


CREATE TABLE Employees16 (
    EmpID INT PRIMARY KEY,
    FullName VARCHAR(50),
    Age INT,
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

-- Step 2: Insert data
INSERT INTO Employees16 (EmpID, FullName, Age, Department, Salary, JoiningDate)
VALUES
(101, 'Abhilash Kumar', 28, 'HR', 45000, '2021-04-10'),
(102, 'Sneha Patel', 32, 'IT', 60000, '2020-09-15'),
(103, 'Ravi Verma', 29, 'Finance', 52000, '2022-01-20'),
(104, 'Priya Sharma', 35, 'IT', 75000, '2019-11-05'),
(105, 'Vivek Singh', 26, 'Sales', 40000, '2023-02-12');


create table employeebackup8(
EmpID int,
FullName varchar(50),

Salary decimal (10,2)
);

insert into employeebackup8(EmpID,FullName,Salary)
select EmpID,Fullname,Salary
from Employees16
where Salary>50000;

select * from Employees16;
select * from employeebackup8;