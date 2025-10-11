
CREATE DATABASE SalesDB;
USE SalesDB;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);


INSERT INTO Customers (CustomerID, CustomerName, City)
VALUES 
(1, 'Rajesh', 'Delhi'),
(2, 'Sn', 'Mumbai'),
(3, 'Kiran', 'Chennai');


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Price INT
);


INSERT INTO Orders (OrderID, CustomerID, Product, Price)
VALUES 
(101, 1, 'Laptop', 60000),
(102, 2, 'Mobile', 25000),
(103, 4, 'Tablet', 20000);

SELECT 
    Customers.CustomerName,
    Customers.City,
    Orders.Product,
    Orders.Price
FROM 
    Customers
INNER JOIN 
    Orders
ON 
    Customers.CustomerID = Orders.CustomerID;
