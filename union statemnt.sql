CREATE TABLE Employees5 (
    EmpID INT,
    Name VARCHAR(50)
);

CREATE TABLE Employees6(
    EmpID INT,
    Name VARCHAR(50)
);


INSERT INTO Employees5 (EmpID, Name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

INSERT INTO Employees6(EmpID, Name) VALUES
(4, 'David'),
(5, 'Eve'),
(2, 'Bob');


select Name from Employees5
union 
Select Name from Employees6;

select * from Employees5 , Employees6
