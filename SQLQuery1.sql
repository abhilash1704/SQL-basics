create database employee_detail

use employee_detail


CREATE TABLE Employee_New(
    FullName VARCHAR(50),
    EmpID INT PRIMARY KEY,
    dept VARCHAR(30),
    salary INT
);


select * from Employee_New


INSERT INTO Employee_New (FullName, EmpID, dept, salary) VALUES
('Abhilash R', 101, 'HR', 45000),
('Aftab Khan', 102, 'Finance', 55000),
('Akash P', 103, 'IT', 60000),
('Apoorva S', 104, 'Marketing', 48000),
('Asha H D', 105, 'IT', 62000);

select *from Employee_New
