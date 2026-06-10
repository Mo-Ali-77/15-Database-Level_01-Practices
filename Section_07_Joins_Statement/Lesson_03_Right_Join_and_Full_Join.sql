-- Lesson 03: Right Join - Full Join

-- Inner Join
SELECT        Customers.CustomerID, Customers.Name, Orders.OrderID, Orders.Amount
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID

-- Left Join
SELECT        Customers.CustomerID, Customers.Name, Orders.OrderID, Orders.Amount
FROM            Customers LEFT OUTER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID

-- Right Join
SELECT        Customers.CustomerID, Customers.Name, Orders.OrderID, Orders.Amount
FROM            Customers RIGHT OUTER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID

-- Full Jioin
SELECT        Customers.CustomerID, Customers.Name, Orders.OrderID, Orders.Amount
FROM            Customers FULL OUTER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID

