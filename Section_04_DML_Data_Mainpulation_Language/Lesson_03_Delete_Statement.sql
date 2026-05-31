-- Lesson 03: Delete Statement
use DB1;

Delete From Employees
	where Salary is Not Null;

Select * From Employees;