-- Lesson 03: Where Statement

use HR_DB;

Select * From Employees;

Select * From Employees
Where Gendor = 'F';

Select * From Employees
Where Gendor = 'F' and MonthlySalary <= 500;

Select * From Employees
Where CountryID = 1 and DepartmentID = 7;

Select * From Employees
where NOT CountryID = 1;

Select * From Employees
where CountryID <> 1;

Select * From Employees
where DepartmentID = 1 OR DepartmentID = 2;

-- The Result will be nothing, because no Emplooyee 
Select * From Employees
where DepartmentID = 1 AND DepartmentID = 2;

Select * From Employees
where ExitDate is NULL;

Select * From Employees
where ExitDate is NOT NULL;
