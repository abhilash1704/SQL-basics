CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,               -- Primary Key (must be unique)
    EmpName VARCHAR(50) NOT NULL,        -- Cannot be NULL
    Dept VARCHAR(50) NOT NULL,           -- Cannot be NULL
    Salary DECIMAL(10,2),                -- Can be NULL
    City VARCHAR(50)                     -- Can be NULL
);

INSERT INTO Employees VALUES (101, 'Ravi', 'HR', 50000, 'Delhi');
INSERT INTO Employees VALUES (102, 'Sneha', 'IT', 60000, 'Mumbai');
INSERT INTO Employees VALUES (103, 'Amit', 'Finance', NULL, NULL);


select * from Employees