create database E1
use E1
CREATE TABLE Employees1 (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    ManagerID INT
);

INSERT INTO Employees1(EmpID, Name, ManagerID) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eve', 2);

select * from Employees1

SELECT 
    e.Name AS Employee,
    m.Name AS Manager
FROM 
    Employees1 e
INNER JOIN 
    Employees1  m
ON 
    e.ManagerID = m.EmpID;
