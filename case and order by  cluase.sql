

create database Employees1

use Employees1;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);


INSERT INTO Employees (EmpID, Name, Department, Salary)
VALUES
(1, 'Ramesh', 'HR', 45000),
(2, 'Sneha', 'IT', 65000),
(3, 'Priya', 'Sales', 55000),
(4, 'Arjun', 'HR', 30000),
(5, 'Sanjay', 'IT', 70000),
(6, 'Meena', 'Sales', 40000);


SELECT 
    EmpID,
    Name,
    Department,
    Salary,
    CASE 
        WHEN Salary >= 60000 THEN 'High Salary'
        WHEN Salary >= 40000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS Salary_Category
FROM Employees;

-- Step 4: Use CASE in ORDER BY clause
-- To sort employees based on their salary category (High → Medium → Low)
SELECT 
    Name,
    Department,
    Salary,
    CASE 
        WHEN Salary >= 60000 THEN 'High Salary'
        WHEN Salary >= 40000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS Salary_Category
FROM Employees
ORDER BY
    CASE 
        WHEN Salary >= 60000 THEN 1   -- High Salary first
        WHEN Salary >= 40000 THEN 2   -- Medium Salary next
        ELSE 3                        -- Low Salary last
    END;

-- Step 5 (Optional): Use CASE in another example — by department
SELECT 
    Name,
    Department,
    CASE Department
        WHEN 'IT' THEN 'Technical'
        WHEN 'Sales' THEN 'Business'
        ELSE 'Support'
    END AS Dept_Type
FROM Employees;
