-- Lesson 01: Inner Join

Use Shop_Database;

SELECT Customers.customerID, Customers.Name as Cus_Name, Orders.amount FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


-- Join and Inner Join are the same
select * from Customers;

select * from Orders;


SELECT Customers.CustomerID, Customers.Name, Orders.Amount FROM Customers 
JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID;


--This code for HR_Database
Use HR_DB;

--Inner Join two Tables
SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DeptName FROM Employees 
INNER JOIN Departments ON Employees.DepartmentID = Departments.ID


--Inner joind with where
-- Note: If you Exececute this scrip will Not Show any Result, Because the Departmenet's Name IT we was Write with Mistake.
-- please Execute the Update scrip ableow:  
SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DeptName FROM Employees 
INNER JOIN Departments ON Employees.DepartmentID = Departments.ID
where Departments.Name = 'IT';

-- Ipdate IT of Departement Name.
Update Departments
Set Name = 'IT'
Where ID = 4;



--Inner Join Three Tables
SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DeptName, Countries.Name AS CountryName FROM Employees 
INNER JOIN Departments ON Employees.DepartmentID = Departments.ID 
INNER JOIN Countries ON Employees.CountryID = Countries.ID


						 
--Inner Join Three Tables with where
SELECT Employees.ID, Employees.FirstName, Employees.LastName, Departments.Name as DeptName, Countries.Name AS CountryName FROM Employees 
INNER JOIN Departments ON Employees.DepartmentID = Departments.ID 
INNER JOIN Countries ON Employees.CountryID = Countries.ID 
where Countries.Name = 'USA';