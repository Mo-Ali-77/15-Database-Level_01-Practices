-- Lesson 02: Update Statement
use DB1;
Update Employees
	set Name = 'Ali Alaa', Gender = 'M'
	Where ID = 3;

Update Employees
	set Salary = Salary +200
	Where Salary >=500;

Select * From Employees;
