CREATE DATABASE companyDB;


USE companyDB;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FullName VARCHAR(50),
    Dept VARCHAR(30),
    Salary INT
);

INSERT INTO Employees (EmpID, FullName, Dept, Salary)
VALUES
(1, 'Adarsh Kumar', 'HR', 35000),
(2, 'Aftab Khan', 'IT', 55000),
(3, 'Apoorva', 'Finance', 45000);


SELECT * FROM Employees;
