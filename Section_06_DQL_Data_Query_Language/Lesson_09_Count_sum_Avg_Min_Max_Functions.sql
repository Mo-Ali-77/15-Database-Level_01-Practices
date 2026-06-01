-- Lesson 09: Count, sum, avg, Min, Max Functions

use HR_DB;

select TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees;

select  TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees where DepartmentID=1
	   
	   
select * from employees;

select TotalEmployees = count (ID) from Employees;

--count function only counts the not null values.
select ResignedEmployees= count(ExitDate)  from employees;

-- Exercise: 
-- What is the average salary of active employees working in Departments 1 or 2 
-- who were born between January 1, 1997, and December 31, 1998?

-- Solution is the below:

select Avg(MonthlySalary) as AverageSalary From Employees
Where ExitDate is NULL and DepartmentID in(1,2) and DateOfBirth Between '1997-01-01' and '1998-12-31'
