-- Step 1: Create the Employees table
CREATE TABLE Employees12 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(50),
    Salary INT,
    Experience INT  -- Years of experience
);

-- Step 2: Insert sample data
INSERT INTO Employees12 (EmpID, Name, Dept, Salary, Experience)
VALUES
(1, 'Ramesh', 'HR', 70000, 8),
(2, 'Sneha', 'IT', 55000, 4),
(3, 'Priya', 'Sales', 45000, 3),
(4, 'Arjun', 'HR', 30000, 2),
(5, 'Sanjay', 'IT', 75000, 9),
(6, 'Meena', 'Sales', 40000, 6);

-- Step 3: Nested CASE in SELECT
-- Categorize employees by Salary and Experience
select * from Employees12

SELECT 
    EmpID,
    Name,
    Dept,
    Salary,
    Experience,
    CASE 
        WHEN Salary >= 60000 THEN
            CASE 
                WHEN Experience >= 5 THEN 'High Salary + Senior'
                ELSE 'High Salary + Junior'
            END
        WHEN Salary >= 40000 THEN
            CASE 
                WHEN Experience >= 5 THEN 'Mid Salary + Senior'
                ELSE 'Mid Salary + Junior'
            END
        ELSE 'Low Salary'
    END AS Employee_Level
FROM Employees12;

-- Step 4: Nested CASE in ORDER BY
-- Sort first by Salary category, then by Experience
SELECT 
    Name,
    Dept,
    Salary,
    Experience
FROM Employees12
ORDER BY
    CASE 
        WHEN Salary >= 60000 THEN 1   -- High salary first
        WHEN Salary >= 40000 THEN 2   -- Mid salary next
        ELSE 3                        -- Low salary last
    END,
    CASE 
        WHEN Experience >= 5 THEN 1   -- Senior first
        ELSE 2                        -- Junior next
    END;
