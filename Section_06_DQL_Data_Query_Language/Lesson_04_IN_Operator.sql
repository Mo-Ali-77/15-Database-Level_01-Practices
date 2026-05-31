-- Lesson 04: In Operator

use HR_DB;

Select *From Employees
Where DepartmentID = 1 OR DepartmentID = 2;

select * from Employees
where DepartmentID=1 Or DepartmentID=2 or DepartmentID=7;

select * from Employees
where DepartmentID=1 Or DepartmentID=2 or DepartmentID=5 or DepartmentID=7;

Select * From Employees
Where DepartmentID IN (1,2,5,7);

Select * From Employees
Where FirstName IN ('Jacob','Brooks','Harper');

Select Departments.Name From Departments
Where ID IN (Select DepartmentID From Employees Where MonthlySalary <= 210);

Select Departments.Name From Departments
Where NOT ID IN (Select DepartmentID From Employees Where MonthlySalary <= 210);
