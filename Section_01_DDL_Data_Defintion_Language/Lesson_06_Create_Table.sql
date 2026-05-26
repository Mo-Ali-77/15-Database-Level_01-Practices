-- Lesson 06: Create Table
Use DB1;
Create Table Employees(
	ID int Not Null,
	Name nvarchar(50) Not Null,
	Phone nvarchar(10) Null,
	Salary smallmoney Null,
	Primary Key (ID)
	);