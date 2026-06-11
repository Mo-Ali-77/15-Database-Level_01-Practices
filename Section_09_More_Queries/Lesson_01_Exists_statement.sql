-- Lesson 01: Exists Statement

use Shop_Database;


Select X = 'Yes'
Where Exists ( 
	Select * From Orders
	Where CustomerID = 3 and Amount < 1000 )


Select X = 'Yes'
Where Exists ( 
	Select * From Orders
	Where Amount < 500 )


-- This Query is Slower Then the next Quert, Casuse if this Quert return 1000 record 
Select * From Customers as T1
Where Exists (
				Select *From Orders
				Where CustomerID = T1.CustomerID and Amount < 600
)


-- This Query is Faster then Previous Query, Casue return 1 Record only if Condition true
Select * From Customers as T1
Where Exists (
				Select top 1 *From Orders
				Where CustomerID = T1.CustomerID and Amount < 600
)


-- The Query Faster then above two queries, Cause we do not use * just we used to any variable to execute the condition.
Select * From Customers as T1
Where Exists (
				Select top 1 R = 'Y' From Orders
				Where CustomerID = T1.CustomerID and Amount < 600
)