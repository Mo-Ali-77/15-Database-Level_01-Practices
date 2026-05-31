-- Lesson 01: Insert Into Statement
use DB1;
-- Insert one row
Insert Into Employees
	Values (1, 'Mo Ali', '730408246', 500, 'M');

-- Insert Multiple rows
Insert Into Employees
	Values (2, 'Salem Ahmed', '5552156', 220, 'M'),
		   (3, 'Rania Salem', '77515815', 500, 'F')
Select * From Employees;
