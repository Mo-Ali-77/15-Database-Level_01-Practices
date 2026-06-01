-- Lesson 10: Group By

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
	   
	   from Employees where DepartmentID=3
	   

select DepartmentID, TotalCount=Count(MonthlySalary), 
	   TotalSum=Sum(MonthlySalary),
	   Average=Avg(MonthlySalary),
	   MinSalary=Min(MonthlySalary),
	   MaxSalary=Max(MonthlySalary) 
	   
	   from Employees
       Group By DepartmentID
	   order by DepartmentID

select FirstName + ' ' + LastName as FullName From Employees
Order By FirstName;

select FirstName, Count(MonthlySalary) as TotalCount,
	   Sum(MonthlySalary) as TotalSum,
	   Avg(MonthlySalary) as Average,
	   Min(MonthlySalary) as MinSalary,
	   Max(MonthlySalary) as MaxSalary
	   From Employees
	   Group By FirstName
	   Order By FirstName;