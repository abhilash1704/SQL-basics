
CREATE DATABASE CompanyData;
USE CompanyData;

CREATE TABLE EmployeeDetails (
    EmpID INT PRIMARY KEY,                  
    FullName VARCHAR(50),                   
    Age SMALLINT,                           
    Salary DECIMAL(10,2),                   
    JoiningDate DATE,                       
    LoginTime DATETIME,                     
    IsActive BIT,                           
    Department CHAR(10),                    
    Bio TEXT,                               
    ProfileImage VARBINARY(MAX),            
    Rating FLOAT,                           
    LastUpdated DATETIME DEFAULT GETDATE()  -- ✅ Use DATETIME + GETDATE() in SQL Server
);

-- Insert sample data
INSERT INTO EmployeeDetails 
(EmpID, FullName, Age, Salary, JoiningDate, LoginTime, IsActive, Department, Bio, ProfileImage, Rating)
VALUES
(101, 'Abhilash c ', 25, 55000.75, '2023-05-10', '2023-05-10 09:30:00', 1, 'CSE', 'Works in IT department.', NULL, 4.5),
(102, 'Verma d', 28, 48000.50, '2022-11-20', '2022-11-20 10:15:00', 1, 'HR', 'Handles employee relations.', NULL, 4.2),
(103, 'Ravi Kumar', 30, 60000.00, '2021-09-15', '2021-09-15 08:45:00', 0, 'FINANCE', 'Manages accounts and payroll.', NULL, 4.8);

-- View table data
SELECT * FROM EmployeeDetails;


UPDATE EmployeeDetails
SET Salary = 60000
WHERE EmpID = 101;

INSERT INTO EmployeeDetails (EmpID, FullName, Age, Salary, JoiningDate, LoginTime, IsActive, Department, Bio, ProfileImage, Rating)
VALUES (104, 'Kiran s', 27, 52000.00, '2024-04-10', '2024-04-10 09:00:00', 1, 'IT', 'Tech Support', NULL, 4.3);

select * from EmployeeDetails