-- Lesson 02: Left Join

use Shop_Database;

Select * From Customers;

Select * From Orders;


-- Left Join and Left Outer Join are the same.

-- Left Join: gets all data from table customers and only matched data from table orders
SELECT Customers.CustomerID, Customers.Name, Orders.Amount FROM Customers 
LEFT OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Left Outer Join
SELECT Customers.CustomerID, Customers.Name, Orders.Amount FROM Customers 
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;