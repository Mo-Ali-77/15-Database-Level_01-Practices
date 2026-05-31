-- Lesson 04: Select Into
Select *
	Into EmployeesCopy1 -- NOTE: Nessasery the table must be not Exists. To Create a New Table.
	From Employees;

-- Only Will be Copy the Table structure
Select * Into EmployeesCopy2
	From EmployeesCopy1
	where 5 = 6;

Select * From EmployeesCopy1;
Select * From EmployeesCopy2;
